Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3B1EEB3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782170194; cv=none; b=s6uKljj0yhSZP8qOHHO9NmIidqRsN2S3q0kXV/rYsYZj4KTaraHRV0av9EcggUw4oo5wkYlwQ0J4dNKbsGb/xPXkl36Q+W8RoENk/VjyhM+qL68a7f4IT9HXW+QuX74xfQGlrk1uyx9GFdAAP+25qbgzTtHFl5+qSmF36hOXF3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782170194; c=relaxed/simple;
	bh=2hsgmYi0z0ThXMEt6z9IsCAFrA3dWeJkph35DE+JxPc=;
	h=To:Subject:From:Message-Id:Date; b=EbbwsO/DvoC0MBB/XWhqOGF5QXPaSv5/do1g+0nMnixmFq+DXCpJ9crdKH+L9QBsOEi5fjNzD8WEIDQJ/KigR6rmc4neMfKfuFVm9xYyk7Mh5ybd+tJxahghunIiud5LXglGkzVk/NH8VF0RyhpNbtAI+B96y9PG0ZNn9AW8vAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeVB6Ctl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeVB6Ctl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6352C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782170193;
	bh=2hsgmYi0z0ThXMEt6z9IsCAFrA3dWeJkph35DE+JxPc=;
	h=To:Subject:From:Date:From;
	b=ZeVB6Ctlo1daQj/BAljhey53qDTQ/TIDz6ci2oBB9gxOFTJQO54+P/QlGWn9+L4AJ
	 im8lDljDai0wA3yPBlWrRDJCeEFksnrBOU2+h8cbAVk3YrkyfYNU61IoStWGMX/Ng9
	 6/5TLUJAgxlZWEvXCQElsQ7K3gywN+NIt91TgrcrH96rN/xwhFdWGPDiA7j7UqUcG3
	 WDZ50utRMH5lSVCryt1ZPMT22KtJvuQukAg+AAXTuwL43oxgKU9fJeQixgrJZjZtsA
	 ZG0xT2fg9prgGboMYA8wF5lI0Eehoi673uLzxsg9PqXZQuHnWo3fZ2jGjOr85MUIIj
	 nQUNlVvrjxU8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE740CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217019370.22498.11410341851426630546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f684a8fd8c2f3a4c4e757288cce33cfb7cfad58aa7a0980a15af6ff1f392f9
Date: Mon, 22 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782170193
