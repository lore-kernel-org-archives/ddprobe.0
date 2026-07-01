Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4294D36F908
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782939514; cv=none; b=gdZ1/03j1E9/4mDpe+JxlNgHWhIYkzjYYvaOCuv2g7+JeURe3dHn5WwYyqxcsihZiumWBWkk/J0yo0Y7q6W/upQric59ziavJAtCdFVA77twZtS+/x8dZfD4+R1lI7ha/HQwWITc96WXL8fDMG8C/qXWemetqG7zF8u89gr/4MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782939514; c=relaxed/simple;
	bh=71vav7SkT1RBRDou+5wEwWns/YT892qibQ+FS97O/Qk=;
	h=To:Subject:From:Message-Id:Date; b=N58hnn4EC7oJQOKfooQ8qt6R/3/rCRXO7GiXuY7Lh3M9yBc8FmJ/hB2NQVvmxCEFY96WjLvLpNpqxEn//lM1ftu6CeQTbEXJbwadzsg1ZxOsKUEn3KZNiWofeOgLcF6LKekZZkDmFheK3Il4YO1rK1Nl97cE5TymWxQAbme6PJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHpIIiPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHpIIiPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C443CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782939513;
	bh=71vav7SkT1RBRDou+5wEwWns/YT892qibQ+FS97O/Qk=;
	h=To:Subject:From:Date:From;
	b=VHpIIiPbYcNsqnUMjUabpjP0qLFiH8GO7TdJXQO6oqdRsgJxXuxdiaRO27RQ423mC
	 NqiF/qNmBOkR/Rhgy6C3MMd8sgv/KcvOr0NqkoM4Ysl8iKgHLPqxYRIjnuhcsLrf19
	 DnZF7zJj+kqbNIfFKMWh6tN+4Zij2Bk2OHpWTpdyEA2VJauQMdrx/VtpofAlzq1zSU
	 eeCPp2kckoP41WD2NJ8oEpP00bsbzxA9GUvmEdt6r90HkEWGtE4RNiRzgI2kBDnz87
	 Vp+R6LPK7zcWZVCXIqWX94QaRP4Ms3HUvp6etxeNDwTIc7yeUE2Pv1/l5GvRTEHnS6
	 AIcIPbHWytlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9281C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293951368.27803.1603086056712297029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a0cb5668960816523d2fead13aa5e508701248adaf07a2d6a3ad3d8ac581b1
Date: Wed, 01 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782939513
