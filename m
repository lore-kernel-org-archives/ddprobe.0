Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB11E521A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752907194; cv=none; b=ZIRxd4VmlYyoR6kSKPcpftWTVS8SIbsSmJQY//7zqie1D7XZXt7YEUyrO5ZEt9KxuQdiDYMr7CvQcEh19Ll4iHl/eASXnwUGeyesBH0USbhpNXrRbV15SefvDcgBtksCA2A0do1/lh+Wn8otuaQa5INGj8r/oC+tWz3Zw5B0I+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752907194; c=relaxed/simple;
	bh=i+jwF1arHHC49BNs2BlAzW5BUdTx0ScK96Y8GxQ95M8=;
	h=To:Subject:From:Message-Id:Date; b=NO3qfDcLqbT8DVGeViqPPyzjh/+NHzvU/N/q4GUnW0BcbpAiT3JrE9IUjc0p5IxdmICyOT7ueG2pRcar81Xj3T2cXyUEXBMNR1k9vcgtwIg81DeMcJ5luB+qvAHsRzrBXrD8CjFfcl8TLA86+H278JelvTwI77z0oFSPcWlkWmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX6exkYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX6exkYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1586C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752907193;
	bh=i+jwF1arHHC49BNs2BlAzW5BUdTx0ScK96Y8GxQ95M8=;
	h=To:Subject:From:Date:From;
	b=DX6exkYHc5FfXoFNkP3gMT18lY/iti0LQQWvAJJ+fKK58LxZPg6tih1nnfV+RLnqF
	 tJpWx969IUhSZkFx9nUonXD+oQ/7SWXqEBEwn059ONiIHvugvFSZ2yPb0kvgMV/X5L
	 7XVLXQG0tWZGj2KazKDY607xdjxX8VR7Hhp9VAfQ7GjGF4GA9rm/hAmLKlt8TdyBB2
	 MHEBb6ZClvN8qS2703xdLUgS+wo0cMSWdbrKOcvyyJl4QgaQX9yjUSHfsnRnjzK5g6
	 u8ri6yXT9hZu5/RZOub/GWCsO4TgcZ1dvKn1An31oGdEh6IjBPwwcm0/h99Usz97+H
	 uzbGWVgkTDx9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91EC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290719357.9024.3805181358791380833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c197ad75c8a8929ee01189ef9a2a82332451e8de79e956bbd503df9a1f51edc1
Date: Sat, 19 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752907193
