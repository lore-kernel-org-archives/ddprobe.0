Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3EC23A9
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739659134; cv=none; b=RiBjN52lG3+D52ug9RzsATnbJb6R7a9Vn+Lqypdf5KxKpBxHTNJHWICIClVP3RraM4u78w5Ewo2lEGtWEO/0z4kGIc5qV1x+TuOKa1Lb4/PhWeC9zIC1Sr4b1hzsJJjECLh4PzXbHQh/5H4/2Ncs/zrQ/iOMGoVUbkKHLvWsLBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739659134; c=relaxed/simple;
	bh=WcFM6A/U26BoMhs4e7lTWPM3uuSpMIciSi+vuBV1byY=;
	h=To:Subject:From:Message-Id:Date; b=OcTX4ZyioG7ApDuIfSd2fEVen4jJPMoC1XX15Y6rIPROVIOREbCvxXyScPmg3pf7pbPC3rsh23rDy9kYe3jdg5x4JF5u83+vKR+OUM9VBtcE+EaFpir4hB3+02B2vwbJPVlwBdDfE4PsglzSpHMqrquw1qtzKdbM7ck21iyJlr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf5N8lMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf5N8lMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18F0C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739659133;
	bh=WcFM6A/U26BoMhs4e7lTWPM3uuSpMIciSi+vuBV1byY=;
	h=To:Subject:From:Date:From;
	b=cf5N8lMP4v2Ki50dS7W5PeHqx1E9w53mO2jP+qRrVrC+I23rhJ49EKzV0E4UH5nOK
	 PlS0qgnRjH+EcLmDyprBnM/3ZOoH6aHFYh/H6oWUJ4wx6f1wQzDVsAI3RHYZJkI5DG
	 cskh+dP/9icwMLXHzsotb2InbGw4O8wFRdy/iMY2kXTgCKEb32u/KmYDIFRAg0hbkx
	 kvKyeamlq3z2GTmAB4YozCH9VwEBh4UPbkEabG+4or1ii2jmtL42j9Ja25r1qM5ax7
	 /nbeGdMoD5rSa6jKp7hH9hyQgie6HfBFD34RVW5O6AOx3xLvNDYnntfYsUNGru4VzF
	 5Z7ToaBhIRkaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B09C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965913363.2140.16399643607505993060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c36d620783316281d7d7ea56050f7590534932929b00087ed6ae17a4c21c2b
Date: Sat, 15 Feb 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739659133
