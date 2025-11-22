Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1721FDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763823714; cv=none; b=ViSD3la17Mb/DOMP6KYXxU+oA20UNy2H4CTz/O+PMfqWkWtgmNIgBn2eUgRzROj1qYTtVAIQbt7DkSapcJeN714gEXL9ThusX0sBA2x/Jr6wYiSCf0RVC5YQDzASPM/LHt45M4GNIEEIgVhvJn/WG4Ffl8bGvi86zxbSSVlqgaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763823714; c=relaxed/simple;
	bh=0foWVOWQT3OSC+gc9k8Ubdsp0ReDOYF5zEAJsHNWGt8=;
	h=To:Subject:From:Message-Id:Date; b=fqUG/Hp0l9V4vlBuYxUd7xzL/baOMmweesViVSwBXp54KpKVFD2kkulPlXCl43YkjFv2HR15pYcH/P0zDSx0WidO+S89U9T5Ee2n45w+OWrmLzrlYhhvr8xJ0d3hHr8g9eZTWpfD89X8RzYLvZdjGpaIIUR9s5D3uckBDTG5cmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQSQG2pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQSQG2pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06E5C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763823713;
	bh=0foWVOWQT3OSC+gc9k8Ubdsp0ReDOYF5zEAJsHNWGt8=;
	h=To:Subject:From:Date:From;
	b=uQSQG2pa7g3QLEdvjmG5/4O4IIIyWieyEuUZFtwPO6boYysSqdqGxvDpJNFWLk+zx
	 CeECS20iBzqOofSPtfK+CUDA0WWSBAjj6B/1vUjeGHCd5AJ40YyuaTNVW648kLhm/G
	 +ZkywPJsIdDTao1pKtjOfgoVBcwgeQUsHWl42wv4fHuhlT9Cj4SjygTRjCR/FCVI4X
	 FOvxvq0zqcFWmxBRZ9dLqNsIxa/ARRQkA3Fm9z6CvdAw7Fara4dBkdfUw3grzn2mcM
	 NhUcuoatvppXzEptjHFQNWmzST1jHWaddQhc07nUuN66LzNu7K6NeW4orWWOk7CNYt
	 qj7G3VYWXZUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDD6CFC538
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382371361.29091.1990508961756404817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcf488ffcc8e115813304cff6aed424afcd6d6d731085c62bfd60f174f00c01
Date: Sat, 22 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763823713
