Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157F62BD11
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776643054; cv=none; b=ANdDtlv682sNV27tIhHDKbXlZknvVej2Vgn1ca2G8xkJK5alMJEzzGqKvk2SiRY2m26ZpqQSkZS6AEoBZmP3occUWtKqV0/537TkEKrPMXE59kGIDOLXIgx5aHUPRkywTmXDLC+9f2kNSbu6LEoIOkAQx4dD4iZtdho1X9+aYE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776643054; c=relaxed/simple;
	bh=3KppVtCl+zMMGWcrU32SZAmy+cTByL9vyUWOI071hHo=;
	h=To:Subject:From:Message-Id:Date; b=GSvG2k6EZi88Fs2XsIrzkjlAEiyj73YRGtPpK2DXR2xgAPeoG1xS/MTc26W9o0lK7yunrlXez4ZUpiScg3ljzm0nct/Yzb1CzLoQv6B47/T1cBwOnzWEc8y9VSC8xIWpvsmus4/JWh6eYntLtdMoLeEZi0qfB5p1MMb6iLjHjlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A58AXZXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A58AXZXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4800C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776643053;
	bh=3KppVtCl+zMMGWcrU32SZAmy+cTByL9vyUWOI071hHo=;
	h=To:Subject:From:Date:From;
	b=A58AXZXmiZyPgYPq8na9gSYyySK2Au3PMYvbYHgazp1juK4T34P7nOczdTFLvShFh
	 018hgG2w/qQnxHE+qPFxLeW2Z4Uerh0cj7C+IQ0TmiX+ebbfBA2QndJBBGhbZOSU/s
	 446aJkw3w8mQjYJrhJ1tADNozZE5mcrR+gJTyYDd+bXUPyTk0+miFj27J6dpI86j6a
	 A/rbTCQjchpczoL3ZnTuTH/jEGo3RbX3eVDnnnRx5HMwspP8llO1aoUMaAP8C2CG8u
	 TNxgccHJVzwTa8721agEQlf5s8pVP9jDJNdXhwoK+k/WM0wYCQ0q29YBVqL2YFK3sA
	 1V4Ux7waZF9pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DFAEA71AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664305369.27527.13722118930990751873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcf9200d4496ef1397eaf299098c1482921d7611debcadd7828c135a5f13e27
Date: Sun, 19 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776643053
