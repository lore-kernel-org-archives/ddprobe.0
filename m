Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0B0768FD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733327154; cv=none; b=oy2hVp3/IrF8Fa1MUvQZ0DHYNAGQsTfOIq4fKhg59jNMlgV/19rtA2E4pt8bgP+SAaJbg5bjZ9EVnIH2kpWALD4i6//9evBiTSr4HKIfqqB97y0KzTnCELm0BzYANoOSxV5mjqNUCdsEiIVH4mZV9jHk1btOi7O/sgHs8yrXk2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733327154; c=relaxed/simple;
	bh=XuGKBDst5JJEF1yHhJnLdn1UaGr1GzPPRVCykystrt0=;
	h=To:Subject:From:Message-Id:Date; b=LhVOx8GZt7XBKAfUH8+mVvYEOHDGnzQ857P7bAB8xlq8SrS3X9N0byp0/0sEOluR440WgZ5GpGkTDcW/CXfLkMZVREpXcngUt1uJ8ewg+2WsWGotlRPYahSnP3MaokTEqILps1iV7ZqKfuEDFAEbftfEtPAbPiAOCpp8W3C9Md8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzMeE2cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzMeE2cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0882C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733327153;
	bh=XuGKBDst5JJEF1yHhJnLdn1UaGr1GzPPRVCykystrt0=;
	h=To:Subject:From:Date:From;
	b=fzMeE2cTg6xRsv3dzg0AcJsfJcvRDItELWLKCJJ36YJTFtzMWCNrYTNnZD2YPUl2i
	 21AVk3gVLLUJYkDpb0DZh+lB4AiK6KTuSyj/A7X6lTLa/haxBV7OYdWFokYBViOs2n
	 nNtGl9veE6SIlyan9Cpt6L3ey8aCtW/ea7dTQ6oZOpWMeXICe6xuxL7huzFg8IivQr
	 y5VuKgJ8gLTAGie9AU6TqG7OJNSP7cZuy2GNUnh64wqd7+3WmY6D+0CbhBWXKhBitt
	 z3ChC7nUWnAIJoDd0+fgdNhguRFPOLsTc/VFdPpW6LfrerIApDL8nKpfYgH5EAhH3h
	 V3A0TiK9GKA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCCE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173332715358.999.15900320321353226993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7762d908f8ee1260bda597a1b7638aa6b18d0beb785980315fc8f766d3196a8
Date: Wed, 04 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733327153
