Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490E84B1E76
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747441194; cv=none; b=DrgZQRabAc65AwMnLDtEvOVy8WrwIBb5P7cMvmh9EfuO0jO3dDkyG3mvZKn3WVNjogh5iXoBqlwaB9K2TzP0kxy8FszfoGJuWms3vC8ol4CNLsVWeoLbtj9TXGrTYjO+1pfsatTv8CQbwVx6kZXKnypGmVGMaYIeWSV9mi/NBnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747441194; c=relaxed/simple;
	bh=1V069CwplcrK2DYbQhtR7Zn8bnaqeF869inCJNnkvvs=;
	h=To:Subject:From:Message-Id:Date; b=XSJweV2thJigd/qHeJ0aCPB7/s/YtKTF/rZ4qvwqwlHsSqrONPT7u1CmKqNOrb8xUzIe7af/AFgeDNA1LMReHgBVzSHQJ80IV10n+c1sRyIzzi9Sna7Z5tFXqcUwNRu0vWRmnd3L6DyZnVz9PzvlDQy5wVAxvtQXKigelBEv/Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arT5yFZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arT5yFZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D67C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747441193;
	bh=1V069CwplcrK2DYbQhtR7Zn8bnaqeF869inCJNnkvvs=;
	h=To:Subject:From:Date:From;
	b=arT5yFZ4flSYjYspP2SBJw8hWdwbQg8FmOIbfb38IvFKTSJX1R1fOzSMM22MHXeG7
	 7sXNE29w/bQLVk4EraGIxj4M1zVMRsAulunSMDcWwMA5xSHvNm0PKDZni4RkbxLsve
	 OEZrCq9ZqBLPBPO6zn34soW0MpIoTAvv3lbp7STk9LQILZt8iR91UQ3rWa6puHDjcH
	 dVD7ULxPMqgzfNNO76Wiu7uuZTJX9Dw2lqKsNAh29jS3LbzXdaKVSNWf7YWpcum6ZH
	 NR31+iuSJVvoCVfyhsvoEvesBevHr9OlwglYitnlNKYy7UY0+TmIjCvQJor/9Ci+id
	 5HhnGLpd9h8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E71C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744119357.3884.18412638109180054145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4efd580dc2ee943215e96424228d0895aaf969981e2015f7c7334fd41d7a8d
Date: Sat, 17 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747441193
