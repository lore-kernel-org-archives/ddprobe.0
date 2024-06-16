Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1E4A20
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718537303; cv=none; b=MLvmryIT2jl5ZAYe2RWkIchGgmlhp3Wob5U+EDhOnHjScOdm19QHuXHv9b3/Thv38/WAx/Vg1G5tXJrjyrKUlLYERz6pZiHIGElcPqcFxDgiqaAb2OFDu7vhjN6beIMbVsqfcEW8gR5nd2x2/lafNcLlHtFcDOzT7OzP3+obn0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718537303; c=relaxed/simple;
	bh=Nn27elWilkPOG6HDcNjD0zMcQA/3wmxDZHBJ8zYxxtA=;
	h=To:Subject:From:Message-Id:Date; b=fzm9+ohybduTq/U0gHKFsUUyq90ke9i8VEqNAL/FUiF0bBJ0jgUXsmF7P/Vw8DRecrSynlmYXs87iU0mavmCvDH/v2xlJh7XhQwdAJOqVGz9nox+1fD3Jd/hyLUXU13WTuvE/2pnPMKRcGyFtKrKXWHOtlS9BNIFNcOIXK1WrwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqwCbXJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqwCbXJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AA1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718537302;
	bh=Nn27elWilkPOG6HDcNjD0zMcQA/3wmxDZHBJ8zYxxtA=;
	h=To:Subject:From:Date:From;
	b=rqwCbXJOprE9QWMkntZcDdGi/ej3mFh8yzcH5jZu9q06uNdVa94umA21UMO7ZqnaY
	 uFV3b5+Qybex3CDImP9LlZ9GfGpk8bHdeJi/nfU4lSmsMtfkD0OnneBNlj2qnWveC5
	 70gXqiDr4AcJuh/yXNP4uqZeiw9FYD4QveOLEepC0rIltvVkX7Q4fMi4TxB/9GD9QT
	 rFUDsQOTib3Dx99nRy/DwBcoKn0a0TLslIhoF14bH89A1g0bnRKGMfP9TUh7DZJnGT
	 iNBbVZxG15RzDdjoHv3KCly6NyFxeGWBVQht0VSotN8l+gzIVCrVG2pcYcJgt2xufP
	 9VcUIDUUomlfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4291C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853730276.4641.14576703206825687566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe65572cc3fd277abaf77bdc00eb9a187bd5f9feb3d8cdffdc64c6a075143f2
Date: Sun, 16 Jun 2024 11:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718537302
