Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD5F2DE702
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766769234; cv=none; b=nrBZncLNbl86beo3M6rY1Tqfq4D2XZk6cdY7MxjLjJFtHjjZkXZlxxBbAmWmjJMVjePQpAqy1Z+xKZZzJwS3T75O7LeB+5XE9haKyOjumxHpabevW4jTCH+IYwPPu7/xcwe/mtdyt3JNJ2yiKtLc/9kwZ3WpiuZt1qGXnmDPtlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766769234; c=relaxed/simple;
	bh=EDn/StlIf2z0CZyY/cZ18RCYiHVhq4g+QnNS8Ft/+JM=;
	h=To:Subject:From:Message-Id:Date; b=CUbeUfSlI8MCew9IjLj5CfAMnBrB1Ai04kRLtYVsG62oXJefKnVpE6tbOEyZZpO5esNeK/K159eMkKG/Ierrv4ETocdId3tGowaFIRapdLvJ1Y7YPz5bAUEPk1AIjNBj2Y2Rw6f27h0T/AAq5qNnal9GMIj5fm/hePcxoOy7fC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SahljxHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SahljxHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F35C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766769233;
	bh=EDn/StlIf2z0CZyY/cZ18RCYiHVhq4g+QnNS8Ft/+JM=;
	h=To:Subject:From:Date:From;
	b=SahljxHbPnhITVcCLtEIylEo830gI9yWZNs0aQUu59OyiFYtp6L0+G1c9UbYBk2zS
	 RCyGj2UXE+REQA6nMdfM93CVckHwFpw1Y8m3xF4KVXm0wpjoiB2gdymZdP2S+3vvQh
	 VWOmBeJO5AAabwfK1Q95brAZEtCGROwHx5PWxi7uPj42CLjXpl1EbxaOgC9e4x4Yku
	 SgH01AtIQDZ3ENn12+pW5wYPQ7PdE0uLq7gzKC8iwQFOCNgA8hWvrTAw/JhC8mL8gu
	 EIkxpiHZMpzy5oHSJ6JfdlJXhUkzEDvF+TLLeok4MAzIblPhEfjS42vUAa23y8fhX6
	 ytNJUGSfxCgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CCE8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676923358.19815.13721531225827986493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddb030734340ffae2386803b38dfb83a42131f0b60ba89aeade1d3e90aac5e6
Date: Fri, 26 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766769233
