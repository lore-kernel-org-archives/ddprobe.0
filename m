Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4961C190697
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719438803; cv=none; b=PT1zcChYJCslojU0uxK+0qwWRNAF29BgBcZan1ap6J9as/7q2Twn7hJWvcPwzKRajXBqPLavruoCuYoBlU4gTxNiUK+P3uHSntJS0I7qFNfJrGPpms8fqeySKnqM6CJI2yMZAuIYkwot+JLwcppciaWBgT9yc+ZvB/ONvucwcjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719438803; c=relaxed/simple;
	bh=DoP4mK9lpxuCknx+Dd3kGQQBNKjkVH+y5UEkIPFUpno=;
	h=To:Subject:From:Message-Id:Date; b=aVOmlOOVCrv1qQ2HWV2pqXQhQWQ3/PIb+FbhLFQueMdF0k48EiuUjwGolUUcw90HcdxI5Yvb0NjxOlqGpsiTPJ5qhmUGgaPIClXlcg1sahuCyPdUTBu46G97pyv/+CdcwQj+ecpWDB9ZDdu9ygVZc50U+XDlRDES6l8slwrtqbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2PRn6AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2PRn6AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4A7C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719438802;
	bh=DoP4mK9lpxuCknx+Dd3kGQQBNKjkVH+y5UEkIPFUpno=;
	h=To:Subject:From:Date:From;
	b=W2PRn6AMRCSsLFWFDxXs0+hczjRZ3226VbtYfvWj2sBy27iZ6vl1FjUbGX3SBFKWj
	 NTRJ9dd9bz3lXz4pd0VdVVHKlurZdAfPKHKpPR+iDpy13T4PK11MJCjRGTyA2XHuaR
	 S4JeAYXg9pau6Z3lVLWUSupa1Wof8Lc1l+o4r9pCux4vlX2tsYyzWl5Y7ksxvcNzsb
	 gGdHZjReGWm5KcTd4fCt0BhOC62cy7p0UQmEvNVYqMDPEk71sm2EaGmlYJpgF9QUSn
	 29GLAtogJ6K0PFstW8+tReO2LHFJc3kCehgM3qzjf27iqyhEd06+dMqB6f9ah1uVDQ
	 NqS0qepf00V0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CD6C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943880280.19668.5746203550989962496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae8fd5fb8240244ee13ef7de917855363d8a29b2fc91a1ecf0ab5f37adfcc9d
Date: Wed, 26 Jun 2024 21:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719438802
