Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C8932F75E
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756741794; cv=none; b=KtpZecZa2D4DeLr4crOK10zajTbiIS+AjmV08ieCgVHacgTcfYFgjUUAvGKuRW6Aboy1l+7wEItd1I1I6qEwmpnd0Es/U7SmBmiQG/rpmBaWegbGXUCbF/ClsqZRMbUs8f1Ev6ODU5QDNf5oQk4EVqiiiG/8Lb27nkO/tjSKEG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756741794; c=relaxed/simple;
	bh=m0AZvk5qMi3E3tliZFzdh7vuR9RJXkknNJftDDN7Rkk=;
	h=To:Subject:From:Message-Id:Date; b=rBkIDfIPEyuQh24Lr4FjVsuPpJSRuSVWhOAKyx5dsIrcTv7UIUkJUF8JUFehq0L0smiprFVpFFpt3qpsJuQSri+ClRW89oxArMuBSkiI0Yz1xvIWOKn/SJWGi162xg8U5aRENVSsmX6yW3iHXAphvmyonUa7yUwfpSNO28lFxaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXAzgSe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXAzgSe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D91C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756741793;
	bh=m0AZvk5qMi3E3tliZFzdh7vuR9RJXkknNJftDDN7Rkk=;
	h=To:Subject:From:Date:From;
	b=ZXAzgSe1drHJEFgKzr0mS3iDZE2XgBU4ep6PoBoRPSw+qZHh8krDTWRQMKgxU3co3
	 s98UGYPg1ah9q0ecLnsHP8EQFmrofGshklMZWGnbHmg6AxFAp10Z1I3jZLnh9+tsOJ
	 rMdh4BsgAlGeEAckl41O6HLx/6Qn6tOhqNcxEq+V7lRlo/GfULIRJ8lNI5H/8+ZHAa
	 DEdiyQnuh2kwVYpkhI5XHd5rM+/PKX030VQqgfGOGshH3GaBXP1oPRjB4UeBqOBMoM
	 dBCQsCzA3JEitK4OANXchBXynefp6ky6tKNLN0ccCt66wSlau/Y1XZAL+ndO8DF/RF
	 5UofQABMqRYmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063DCA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674179358.13970.3367130132475557459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004f85780f6eb5918a5ac1e4e80d4ee8659d00fcbdeb3c8497ac468554c3112a
Date: Mon, 01 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756741793
