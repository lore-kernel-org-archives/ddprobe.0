Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7223AC36
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721652354; cv=none; b=YVscIXrEEErAIu+lexVRPysZbdrHy/hkGDVby/vBiVMX59Uz8/qX+ABG6rGN1BO9WfLLCig7LMh14ggHleB4zqtiQ32x/gsZOlqTqNifUxH0Ic4rmtiogreArmy3n5u4prRAPqXkb5unWdFfnoQ5g9mPaTej7iAvy4CxuNw+y3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721652354; c=relaxed/simple;
	bh=S7sBZYYv/yODh0rIKSYFOU9mFbJFmchr4aP50D0ZLVg=;
	h=To:Subject:From:Message-Id:Date; b=eBxZQoFm3Ka1fBVRK4zZjw51q0zp7TKYk18Wibud8FuNxmCiW5JotC62Z3x4g4BHAvpGFMdVPQ5CSl+pmSdBvVHFPpIGkeMDPp62wIKCxPgMHRY780faNSN9LX8qcZHBFLXdveXt2/TdHSYztctmCZ9zNtdrqixIRnY35K96d3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrB2hqs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrB2hqs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC4EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721652353;
	bh=S7sBZYYv/yODh0rIKSYFOU9mFbJFmchr4aP50D0ZLVg=;
	h=To:Subject:From:Date:From;
	b=CrB2hqs2uoaym/fJzWCIvih8BFfie+FAQwcviLbS1SbYLv6uDWyc8yL2fWn+9eb1o
	 cOtJg4UJ1T8TcEmImAoTPBTLK7lP/3P1/nAGvBa4Qe7Tw3S8KhrBkPGA4l9dUtlSdx
	 kVSKLaiEuqkOBIJaiufXi7/NuEDYhfyibQEaAn6Qbj0VVxIj7zm1HvywpgRip1I9sp
	 /lDLuUmRHrfYZeJDI8P7Ahonk7P4XO3judKHyuP+nZ1ZabzR5UdJppDfd2N3K5W1ke
	 p/AgSx5EsmH+RjqDYF9bFjASU9tnGcTtu402qYuz8n/erfJzyUDfC6BnIJXWGCZunG
	 egyX8ANK862lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970CDC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165235360.25266.7857650033802161050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945f916ed7ab4f88552bd8a5f42778603cba481edd74fe4263e1c4031d365865
Date: Mon, 22 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721652353
