Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FBE18A6D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783038514; cv=none; b=OcKHFpaRdFXzH5Euh6fNXzzDGx88TJGHgMYapmqpT2MnfqTGBpJForQAOOGCi2lVTrb1vSUgcmzO7Hhw5vtPLfxiA8pOMJRVir2qWe8s8hEaBETDwPNn+XBo/EEadm0fcLpCuZqDzQ+WHzZd5yWOIGRedjqbhqPNigseSQTTrzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783038514; c=relaxed/simple;
	bh=75sIQYR4rEfLfLsS6Pw7I8j4Py3yuXuXbAZlalaXvt4=;
	h=To:Subject:From:Message-Id:Date; b=NbUiJwo1EBtt21QJaa4rL4Nq9poFxg3L8oeqdSKp0yLJEuPcPDkBJHOsS6mVWZirKZmPtfj98I3IcFaWUC4YGrC/inSZS+CZ3a5VjadYIr4MKABXPgsd3P8Lm6DkOW4/Y9Z7cVNZHrvWOYaipw/YM7g2N0e/e2wbP6fIzfpCNug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPlgxNQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPlgxNQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BBEC19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783038513;
	bh=75sIQYR4rEfLfLsS6Pw7I8j4Py3yuXuXbAZlalaXvt4=;
	h=To:Subject:From:Date:From;
	b=SPlgxNQ1ZWSHS7fK2cnwHCIwHCo7q76A0/cP2HF3cRgk/JuPiD5ZHyS+jebLoH8Wj
	 +cXaCoSZSB48ABq5BaeQ55vV1Cp0so58A9kSd/4EKnXwapZvmmzbKIXoKqna4yg+8n
	 bICqoCDHqDBa5IFpBF276LB5s3BT6mnlkAn/HS/Tq/5W7djHrkIjfFpjZkLm0uCy9a
	 cVj+anxoGTJZOUPvu4q9b/oBEJXX0dXqzZiCqC4oRSsDgCXihqkxOS7wkQn98jQcEK
	 JeUiub2REx0AEOiTEK7oQCLFnSB4oVGyjl0Ce4z18Zd3f5svMp7zfSXBB2y2m3O+5x
	 Y01PBHaqNn5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB426C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303851369.30894.1122560755139402413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4bad2c3bb707be84130bb1f3682dea61d2404196ffdadc057cf93b6d7bb9d8
Date: Fri, 03 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783038513
