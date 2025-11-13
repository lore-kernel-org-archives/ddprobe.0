Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25624296BB7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762997994; cv=none; b=EgVepF+PctUepJiUXQhjQFqIsD+8w/UPsgRRKLZmDDIOCpSlnYZ7xMNJ08vB4yM5/HWAxE1kUtfn5qQx6uJV+rr7M6eiEDs9k4zNsdYVnSlNVSc4qe4zvKGleMa+4Q33609pJ1+AiDGNBhxGFsnZmBW9UKjT6wYp8y4N+tp7l/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762997994; c=relaxed/simple;
	bh=qium6uLzv6zapHh/KqCGy7dKd65x2alNMdnD4xDQqDQ=;
	h=To:Subject:From:Message-Id:Date; b=QrB/xUVM/+3ou1DZOBRxSk7w9WCJKQwmo7PS6SBYVNuhVzqXkxIoWX1KGQg+Ht3ZVJQJzbZ+yviq6Ov74VF3NsiJvZKIuemHIbOmWuwQOFFvFRlTiom7ruFLuw55IeUDKS6NOiqhMcnbJzreSI7v77Hcr8l4RINjo4+kRlhvP44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRzQWTPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRzQWTPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E437C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762997993;
	bh=qium6uLzv6zapHh/KqCGy7dKd65x2alNMdnD4xDQqDQ=;
	h=To:Subject:From:Date:From;
	b=SRzQWTPChTL7IILzZOcQhfJXPOR9EN5WAbnBBNaTBggf6lDLyt4VyDSWrYpue6nZX
	 1dXz4g9ecEGKMnLhvUYrMOu4yOenMtYoOWcovMRnTnGAuXlj9SKJrECAkiBDlhdDx7
	 mZbMYApn9nLX1vkNS67WNadNpsNstCwFlC9kBaK+LAS1rdD3+5/fRqglq5svimnirO
	 qvQs++siu8AYqNGU6MIna8G3fmr1xlYa6ux75UAv6LwNIy7G7khIN5mCsyAiZlBMGy
	 kd2ieoR0xmgBMUrhmbtGFn27NniGBfGH4gvZzldd4xz7U9l1DJb/7y4y2J0oObUq5/
	 dUf0YfE0YsHQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90552CD4F35
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299799358.8295.8978557080416528588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d588ecc62ea8b4727c5916031dbd3d2161ef00ec3d95be4529f6861f08911e7
Date: Thu, 13 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762997993
