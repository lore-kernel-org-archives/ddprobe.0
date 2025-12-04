Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E322D3A89
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764861174; cv=none; b=ZKJms5Sp8LGJTlmOYcntcIggpeCyKEborxG7WrfCVBFz/s9XFz2YRM0d6jaEELyVWVkIe+F6QAH7BQTz3DHbgVmLIuTM3AqAWO0IWN+WwFLJIhuHPzHmWCYExWqG+/t4yzWz50hsj/jI69qbq+su0ZBnyz8LMZEpTzOUqPlE5Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764861174; c=relaxed/simple;
	bh=82XEn4Xb3MhZUF9DbGxbjBcpVF12HybJ+fgfmwvxOY8=;
	h=To:Subject:From:Message-Id:Date; b=Pdg/iTl/Pne1m8UnrmfAQbYLBJA8HthDJAGCuV2KWREWZiaB2xEfqNEZNil1BoFrGAvf4pRUSi++lRGVCfOnDD/SEjRSeKB59EGUCTJYvIfvoFy0qMJhHjoiSyteoR5eVUdRNUhFCGJITMDRyCgnOE4BvRKJniZQkMEzcjA2VcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQmniqc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQmniqc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDDC116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764861173;
	bh=82XEn4Xb3MhZUF9DbGxbjBcpVF12HybJ+fgfmwvxOY8=;
	h=To:Subject:From:Date:From;
	b=sQmniqc7R8ThB/4udZfvT/G0RJcyE+ecycIoBjr9gz7FTWy8dlIeX2Qmph96HY29e
	 cQ9Mf6iyxa+22/j7Nl0vYQ4CxAXu/oNxNdrAo97BoleGGgWhZInQFMn0rsffLfMBXG
	 2ye+hbc0W32z4hbXrO5K+hKoBZcgrghvcW68Y1zfxP+/otIQxycW9DcTP+sPLf+vjC
	 XnIDM9MpZu4xHCHn4HFJ2Rui6Z7vQuSaoghi3oCeQNNysxskTcmsEQIvDPv13MXCC4
	 LcGgaTDFgPyE6Ju7jNU13wmYCmbzwokP1ltMKgwR/Lm/J7TgU9jBOAbvv2jJ/Rrfhp
	 JESYFNq6Uk3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B8D2168B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486117359.18099.1639870547959922371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e224e5936e955f02dfbf13acd07da25b221ad87239c6d90f91620d629e21bfe8
Date: Thu, 04 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764861173
