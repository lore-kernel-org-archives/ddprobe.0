Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A6731BC8E
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758104994; cv=none; b=nnukWuMVvz9FFg8dhw0Lx1/kKsM4eCTFddA9EKYb+iBEfmhq00pAaCFDutT1OV89Cr2UyI6Q7XiMUYK/v79ZgK4/LE9CtHiV9W4mOWBZ2RG6FC3ph4z/UToYScPE5F6dHxbdplfu9XIQPYdG1Dwm0nq92/YrfgFtEhcVbBo0uKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758104994; c=relaxed/simple;
	bh=Ha+5BumUqJCO3HdujDlRbn9nWR4h8DPGq1W3nJ1U53M=;
	h=To:Subject:From:Message-Id:Date; b=c0iSnjVC/NLvwjX5Rs0LMHOP4xvgz1VG2esoD5T7tO9X1c44AWy8iqa87cJfgFfoIQit7rXvmUhoN57YW6QvE20i8Mg4HGB4QSMz9Cxfavy5XVzpSoiCKG+XK/RslRS0XsGiIO31JhH49Rog6EO2STlcN/aTDEVH8nBicrcd90k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6NWS6Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6NWS6Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDE0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758104993;
	bh=Ha+5BumUqJCO3HdujDlRbn9nWR4h8DPGq1W3nJ1U53M=;
	h=To:Subject:From:Date:From;
	b=g6NWS6EuFt8s1YWurS0JksR597A2fF1yVXVbKnaP+IG+ofaX/7v/zjosehYTqt2V3
	 JH6T9IthREhZDlzk8M4e5d+/5nPOkR5ymJ9loWxgEE5cZXBlfJXQycMkg/BLtMq3D+
	 2JupxnUTO1/ITyFn4+x2kqx3A1C35fuNw43jKwsnlY/YBl/rrvfCHhJ+U4NQma6CcQ
	 NwPTajL4lEiZkOhvlIigXdMXuJAvTVdXEnRWp1piqRH0fhEVsGuEklaC0KBgWT9t8n
	 vpzR60NfmSQWTA0LlimhiBKIGauEYqSo1XsLCnITEiysDoFlIYCserLPivY1rnVG/G
	 SakPXGBc4z/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E0CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810499358.20800.7107675146609996280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5325e4bac6ffd18356af431bb0dec44cd6236e3e644f24da4025d5d289e6b0b
Date: Wed, 17 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758104993
