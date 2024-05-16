Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6757462
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715827343; cv=none; b=lSSmjl01i4gLFGSXbuIl5q30xPGsDB0rbmJywVYd4pFDG32Uk6Ha3vtvVyHY+v8YTBQrayPoy6SqMBJTlwmGzLoZLHE1fyRWeKW0zDz+NW71N2S+sNHthU8Ov0FiELIFvNnIAop4Z7MwLPypdwFsjT8PRFg4mBjXqK7K9c722+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715827343; c=relaxed/simple;
	bh=RKl6ucZTnMGaXGpaCUhj31ow52yWso2VdD+U5sjFz1w=;
	h=To:Subject:From:Message-Id:Date; b=r3AhEZoFrLXClrRYeU4mFHH2PaPZ/TRvtOu6HtSWludfJ4g4AjFxWZ9RiO3J/YVUBuARgnMDTOQhmaP5kPBW3KUy89lf+8MPUxesBgkY9aHOc7tsC6zW9hL3xhZuyuXxmrz3HBiAgW9IwM6pcA5lKIEdYfe+748fj540mO/38A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciVRgJ5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciVRgJ5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FC8C116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715827342;
	bh=RKl6ucZTnMGaXGpaCUhj31ow52yWso2VdD+U5sjFz1w=;
	h=To:Subject:From:Date:From;
	b=ciVRgJ5jK8nggafiZU+HJqbgwJ7AlWvohAkFYGnE77zzcxVoUixydf/Cab8evZEQY
	 Af2TNPf6UjNhuwHDtGcpNp0xWFlPN+C9srFIKLWZd2AoCNQQr7WpsLAMAH5o2u4vyu
	 JiSlxW3Gp91rw+5h45CzjAgd4ZUl0qiS4RtGu1nFhQB85cb8HNirhuov5s5ijHtsYJ
	 VM0FYPBdVozzHpPmDcIQAG5JPhsjxGeleKp8A/id+95o3sy8loicizFjVXzVxlM/0W
	 KNYXXBkUI84sCf9jLlGUy02CdFTQdWzIh9c8LRiULsjBjfNsjJTqlKYx49COBgUphX
	 A1aMrX8jijdsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF1AC25B75
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171582734277.8230.4965199510750164518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f4f863a4b5bd53557d307648776c568fc7b754a4fe52a863fe7a00b66dd39d
Date: Thu, 16 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715827342
