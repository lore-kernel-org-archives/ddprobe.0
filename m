Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143A41547E9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737018954; cv=none; b=iqV+wFaVo7Blw9/oEvVMxY7/xR6Q3bTZmaUIoszyNQBFHB/ediH+gm/cU7kzN1vJ758gDjk3NTCxS3EiS6xLdPcXZ1q9PZx36p6cBXzSSUodSsRL8P4EMZ+tYiDSFHIC9bz1suJXOqEMCMFGN9G37Oe2mBfqdctpsi7jXTf1YEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737018954; c=relaxed/simple;
	bh=U2ZA9O2pAEWaK6TjBWiFFGWX1s2f+QhNPpVY0Sw0GPk=;
	h=To:Subject:From:Message-Id:Date; b=WO3szywi8rqLOdYQC2fDXWxXEVo4igK/z/jVAhdIF8sFkIBA72Vu4/R6Nh3hVgvgYoOzNqD/GU9zPgOJ1VgYIcq9xgXJrEqsiCd61R6yUZrc6B7PaNY6MloDi0g42U6FTCuXcO1JjOrOBqMzb0xbGycXYNITywMAQeDK/QtcikM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVkV/3dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVkV/3dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEABC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737018953;
	bh=U2ZA9O2pAEWaK6TjBWiFFGWX1s2f+QhNPpVY0Sw0GPk=;
	h=To:Subject:From:Date:From;
	b=uVkV/3dmkjJtVK69N0fkSEcyp/0jc2UsUVfBQb8qZ0XXrUMrOZy4KfkRdyby3kxY4
	 pWSX+jdMcSazKx5YXUbJKXpgNheWiVQXN/eg0V6ci7ockRhEo32F2+/k2K5I1Rw8ua
	 69eKMNPMewONgDt8d8tyH3/SGktIEyHNSD98U5hj9kvp9ZCadAcB5JhUf/tBepZSzA
	 t/DRTm51s762/PhKb/OnD2fmZBkkqTd8zdz6vKya/dmqAzyBmDhU1iXjqLl5jckWJ1
	 INgIOypwTEltbF0Wamf7R3Xz0wDpLcSJcHJxWxpnvZWqjbXNIsuujvbBjE+ou6kEv8
	 O1dxbtBJv7tpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97298C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701895360.11169.7696954227788162794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8cf919e50b1ed66a76d3e1a2e5748d6d1f0e3e4df014d10aad4f1845807239
Date: Thu, 16 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737018953
