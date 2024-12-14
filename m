Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B16A101DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734191754; cv=none; b=nzi3S+A51raVY2c3ms/+aZNam3yRihk/uw0ImVocgyiwJ7PZccWh+soTiamAOsOn2llLiA0Vr3f+idCSj9J+yZej1oGGrBwnK9a7t0xl8awS5pclL46dY9itDRvlwXWzLE1K1hHa/uWhmsTRyJg4MWiwOEYSwM634N/UeUt1BS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734191754; c=relaxed/simple;
	bh=E7FtNI9lXUWd9yig+arecSSMfu/xRMZlhhfmH/SokCk=;
	h=To:Subject:From:Message-Id:Date; b=C6NPYRrZEcfWld5jGgahB0TBm71+1k0KqbyXjMpDex1/NsBhWIZvhS6R04+OfKWrVZzuxdbWYCbokFyPJowIokWssQzie0mi+Lk38N9JLhlzModxYzXXODbvpodGyNmGAHWMFp6PgNd4qX1LrDPYRY0qdH0FVkxf5Udl0wLet6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjETSrom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjETSrom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2501C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734191753;
	bh=E7FtNI9lXUWd9yig+arecSSMfu/xRMZlhhfmH/SokCk=;
	h=To:Subject:From:Date:From;
	b=XjETSromifNIROpnJ/Jt3TVNqSvk1IRv/Nx9REjwizfCeFFOD8J/szRhWKm536RcA
	 FyXtCa1BG2TKJ75FDLBn5fhUXjo00QJqWaOu6ETEt+iUElMZmif+6X+lKm014tVUH0
	 lc16i0JEifAhHOUdCECZYRy/QrNRpiwW0zr158fl1n/Kpgbf9OMJcyfLBfaYt/aWCP
	 9WLm0su32jjwxO+LYBhu21pCeMl477dT4gLPxPpOSRJClut+EiFxQaqlg1x4yqjSjf
	 llikj1fozvs/I3pIACbLTzllGoKu6CdMbBL/yfIAMvU2drzgCAPCepHORHU5VoM6gG
	 93rETGbsJ9RSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB19E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419175362.7386.16278944670518005627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29583011ef384862c1022624ae68fa17121d789980525abc54d38098cf025886
Date: Sat, 14 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734191753
