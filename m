Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207D3273D77
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766330034; cv=none; b=lVa+Dzsv7iXqadi/7Qdqc3yFz4hq18bxDReDqM+SUXzl38UbOJNOHRr64lwLjmgt5GWL44IbE+fX2OoUwUUffjYIh2UPE4pBJEsDMhSpyHVQL70/nN8+AnM8rM2f/WVWBydCLNVmn9PrMnIPvH6B9uJXE//R8JCWCWcNmo7+Lzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766330034; c=relaxed/simple;
	bh=5RUpEbzoafTR9SB2V+LkllY2AacnjoNBig0Jo+QszJ0=;
	h=To:Subject:From:Message-Id:Date; b=Yi4va9xHaK1nYPOi4i+TvxANX+ZsER99RcaL4jdwJXNn011T/0dz1VaQm++si3ESSKnJ5n58Vz7uDK0/LiQCA3JdP0X8QI0uDvurWWiytZzZvOS9gsG/q8NZlGh5b2iDFHDCER+E54RpZCuIoX6MzJEGkgD4jGAUs4J+B5Cw0CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAcqiShE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAcqiShE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6121C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766330033;
	bh=5RUpEbzoafTR9SB2V+LkllY2AacnjoNBig0Jo+QszJ0=;
	h=To:Subject:From:Date:From;
	b=EAcqiShEnVhVmzztOiYu3naXYLFc9gQsDQE1niS3olB+05/lwnaGBcTZ0DzRL7hDh
	 T7Mf+PaXWHJqs1cTh7OLLMq1oMYsY75xD6BKLV9M961jTtpxwaYY4U7DSy3dbSg5A7
	 aCdfupsT4WILrZbIcHSYhwSPBzedlEVKvQ6823jJtRb2++YCmwW2EYdWA+LtEZQMRe
	 zkbhn0/z8+yySCeqY/Tq33q6qogIC72vvvmbPPm4DR+z5YjdM4T3AHGKeZKtGKMPnv
	 lxVuVaGyxZNGgf2edOubNiO/+2OUK/xlfr2oEQWJF9fILCmeSU4X3fxNIIMT3bSAb0
	 qXVnKKz7v1gBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930CBE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633003358.6814.12276294627973993211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d51d5217299b263d91d50bb3d0a243197899d2d859530a5eed3377f4fd7cc9
Date: Sun, 21 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766330033
