Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E7D21CA03
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787800234; cv=none; b=QrSKnnzESJr5g+7RK+hju0LxJUtM7INPh/X/TVYFImT/PqKfo6ETOLgP6r6lxwXpvwx06Ej1V7apEIkwEN+jHbwHJiw1f/Gh4C30S/vk/unas4LePtMIxjCf5XzBf7AdK7ntuSKqudDHbGZquSyb46wMV0r7C+ezAE6hty7Ly8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787800234; c=relaxed/simple;
	bh=CDKmZixpEmbCNjA2E7bj+649611be448LfbsB1hNKbU=;
	h=To:Subject:From:Message-Id:Date; b=F0OEqOzItG1OAvDxlOScUysDkfzBX4/rZCR0mGSeaOSujsApdnVzFlrDCRzZjb6L46RXK83lzuPG0BfWIvScZGjUESIV5DbbNkcK/onfjARpTN0FOFubLE1DjDpQvyy4teT+HGQN32QbfmSo5z2Aa+b+DeGznJ3KjzTWrjhhJS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RalHHP2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RalHHP2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CD8C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787800233;
	bh=CDKmZixpEmbCNjA2E7bj+649611be448LfbsB1hNKbU=;
	h=To:Subject:From:Date:From;
	b=RalHHP2rE6BM56+1lTTQjF6oQXm3EQBxStR8iswUtPEiiMDzsmZ6kIFNLQWloQ798
	 fLJowu489HEIKLDExyLz7EJWC4t3lYxjGq099xZki46gZhOIB2HMtrIAbqNybPyh2t
	 8M+9Re6hH9KvMTYgt0gsKB0FDFHsnSuKE6Ex8H5TJ3gRtcXqGuAOBGlSw6ARo/ts+u
	 QT6+qfuByer/zEkNy+NuLzIeP5FCau3TK3j4j7YUUHxcYeAEABfLU6NrpZ1T9mhDLk
	 cGRmA+0IBJ+G31JWB347A5SpdMKuyrsfF90gWThrIvfl/syPo9EvU0mbxmj6rXArDM
	 wBNuGk9qYsWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD15BC61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780023369.12907.10653779246070951945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6684c40842fa4bb71aec4ae3ae369ca810721144d33b3137aa0c7407bcb4e5
Date: Thu, 27 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787800233
