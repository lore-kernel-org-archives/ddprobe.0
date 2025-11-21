Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267A922A7E9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763700114; cv=none; b=IVVLjfts11awSTEl/IL2/RW48aoxAQ1A3xQC/SSnUPgqPjjlxYRYCHgRiiHx9luyN5iICQHwq03Li0Nu0fBV1yeBuZ+9Dbx2r3bHJ2TW7skrIpyABdaIRYe0HwhUm+QEqi52AUWuGuFaAdNox4+OloRf+trNo+U1TDt1lKXe36Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763700114; c=relaxed/simple;
	bh=wydSA17xTavPe+lmbk8HTZ+qvxa6sRMEKRGvmOphlq0=;
	h=To:Subject:From:Message-Id:Date; b=dK2uHfMbtGVjl/pkRPJmzRsD8vplT647+rekSdooOaJhgyIfhxz/9uckWiPI6M0cyinOppRuNAFTZoghwEi/VZm8xBzAYIR0oQ1G6cMtaZRzCD0G0njwVcVspoMYVljNgIreuDge9HDV7THb/g6raUmbNnJdS4b9SEoNsVXbaLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tp4iLXKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tp4iLXKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD44BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763700113;
	bh=wydSA17xTavPe+lmbk8HTZ+qvxa6sRMEKRGvmOphlq0=;
	h=To:Subject:From:Date:From;
	b=Tp4iLXKwr7f0/6MDYatdQkuLTe+wy9ML6l4w+wxCbsV0SBy2j2kG0xO6dggzCVRGu
	 mkKTbhgcD8nZVPQyA+u0MzJhZU299Igq7YUjJRV6VBhDYm9I1BwD//tuHnQd5XuCHF
	 l1fkKfTSphKbhTZJrHJqGKpTCwZ3qHk8P/ovjnN0QFF2Br7UqCxm7i9W60wmhvZ0wI
	 hkYbMbbZxLI/j8LYS+kS4QiEHtRjEnJ2s9844tOz0+HAcpe4evgbRxCP1NxH+ktR5k
	 l91+58M6im9nQG9IvR+KQaKPryV5vKnVky4dfxk9UeeSqsom13dxv5eJo4SzRnebfZ
	 ttIN2kkoK1z9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE6CFA46E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370011360.9075.11570890618232613972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa18ed49089e9a4c0787916b9a13b6af36630babdff057046d497c1ae8745e8b
Date: Fri, 21 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763700113
