Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323722253EC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771772095; cv=none; b=QJ/HdSMgV/R+MfVWnNqWqVCuTZhYJffi8eJF/DNy6avdV7O7oPfSKJXEbwsxOvV+wV2G3drD/Zu72009ZERTq622Ft2wT9TW62dGXCfIIk0X6zW2ScFATibu1NYeVfrhsnkGE+X9lDr7hrcj+Z8VSYLnfPnzk9xhllcYrXdaN/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771772095; c=relaxed/simple;
	bh=Fe8pztyp82y2KHZDa1tp5hMN6Tr2tLdC4kPv50O/9mo=;
	h=To:Subject:From:Message-Id:Date; b=o/wonkKLXRNXJIEuJpEm0EVeL9zPorSFQrD71gQAizPTLu61fga/UF5XLkXKHVumOS01s4dcCYiEz6Mmg5d/qlOXJgWYw4jl3XvwgSaUKO+2gfV/u6qKd3I4c0WBfR5NPduxBYh2UA/4ZOchi5ZwlOJ03FJ/qKsNqmk4accMZ/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msLbMKe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msLbMKe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C37C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771772094;
	bh=Fe8pztyp82y2KHZDa1tp5hMN6Tr2tLdC4kPv50O/9mo=;
	h=To:Subject:From:Date:From;
	b=msLbMKe2V9bnqWWD7HvR3tJk9q0sqvI3MpKduXOYr+inUywG9CHfMh3OVanUQdaLg
	 QjF2xWqjBthk7uuKXcIZmMqE7dWoRIL1zo/mcbwOelMrBIv2XXwfaqPl2af+RVQ/js
	 5M861OwshKFiw1/Q5+Fwv85+q/6IacbbNqKYa1TNXVsrlt4r9/gSBA+Jv6mNDgI57H
	 o8STRxSmysb2z6aaDQO5VayKHUJQCG/iYJ5Yq1vL9zgYrPVSwrIhKle320gfGsk7Q4
	 IiM3TWRLaKS7JF4HutBywl4nzsbcJH5N1SWuaKVGqOLRO/CaBYJG6SNrmox8bD7U/f
	 bmkNwtngObT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95409C6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177209358.27166.13696420734795872844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c6fbf99d3825bdeb4ced1ec9a74f34ca0e941ddf036ed7c478869a8ecb9b3e
Date: Sun, 22 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771772093
