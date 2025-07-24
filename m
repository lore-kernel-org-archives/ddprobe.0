Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C40554723
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753381194; cv=none; b=D29IT/ABPXMfCectIBH4zxE9PgQpu6xnqdMUkMoCxZSpHSK9JpMRQvxcL3sygIxicE/zjLw6J65ZDswg77MR9wVONOWApYWaB4xS1JeqKyC2x+TddV1MdD6l6uAGkqFz8W7STyMKj0O1hcoCAr47dEDEHpIMdjaOqbEBJfYy0nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753381194; c=relaxed/simple;
	bh=6VB2SbO0GL8PJtGcpr3cISRQFvLTraSRkBlnYOXRgCU=;
	h=To:Subject:From:Message-Id:Date; b=boABL1ArBD4ZFA4C0whpq/bayd5d6QG3v7YNHkju0wtQpHD9yiuSWqCu2V+PpvDCiv3WUDWKX/HxfjphR1SD1+ycpJhW6uBAnWRCZxgxpP3Lk95hOf3O1ZXs7vBnCGg6WZFauX8vyObnmM+aDdZyiS0crBJRktFv0u6yCYlU0IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW+c5mqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW+c5mqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB022C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753381193;
	bh=6VB2SbO0GL8PJtGcpr3cISRQFvLTraSRkBlnYOXRgCU=;
	h=To:Subject:From:Date:From;
	b=nW+c5mqpqJZNwtu9JZd/M7vZBVlldx4lsW1tlSQlgBsBDVOb1oCIR6qsUmaGzZAMu
	 6PFp06TYknXuc7VGrEeZWNdBVChZsgJs9unZumyZVtXQMtrt/xtMlhNR3D84lXoWPH
	 wCq2td32GAz+v4/VZRwWik1Kr7MY4ojkW3eNeejX/jMyHcRlYO47dJRTYcY5m3IexB
	 X91h6RxEqisj9+8FYc/ShUxz9ob/15Dwai6t9+OODFgrEBREaqwdzLt3/kXHTp+CK8
	 Y0r2eKZEPpfkTXYYpiY/VjhCW2pvINPi8MGVRpll5f2QI13f+P1SpYlAl34v/OaD9w
	 ir8/OaPGYEwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C56C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338119358.16233.169461494234468012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7d91f407e0685850de617b6fb12ff4fe107d5f69d633e039d23edd7cb38087
Date: Thu, 24 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753381193
