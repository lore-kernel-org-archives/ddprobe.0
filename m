Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A63A1A260
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737324954; cv=none; b=SwC71pihZOiJV7lpFNu5kYzp8ARky2ocWvPb55Dnf8Yt3Cq2CgwrOOWYBFHS+cpV62XOO5pgFGEDEgWGLCzCxqGVZ/5LEsJQL7IiXYPk69QDxyYV/6ignDpwaova18ZHw3VNKuNCaiDi46yqzTYkJ/SpLi5Q6/YWaHMISFBT/EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737324954; c=relaxed/simple;
	bh=x/EKBPax0AV2YJhlPEYp8wYc77xnvYXbfFLIngZzP7g=;
	h=To:Subject:From:Message-Id:Date; b=Af6I6zKDco8dsrkXx5Og0vS8EI5JKm9ZQ1V7sK6HyRw+okjH/fH1/dV2ze/2WLeS8wzbeWRO72asE54sbLYGUcYHZxUyo6cazgksEHPu/YKv2FEYv37Tr3KAmY5fx9h0juSGfRa88fr/8YuGjLxUgz3+5MxspkZWaeGAD4NDdz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjoXeWgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjoXeWgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7BFC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737324953;
	bh=x/EKBPax0AV2YJhlPEYp8wYc77xnvYXbfFLIngZzP7g=;
	h=To:Subject:From:Date:From;
	b=cjoXeWgDMqVn3/NuVC8BngdzPvgJA/myvx3CP4LauZ+V6YzGuTeO5HkSpPcbFOySV
	 1dfomXDFT+hNrnkQHqfu7m5dU3atE8lqbK0WC0cWF7HN5cyxqc7evXPk8xmBoin+uy
	 m4eZSCT/kogmy+Ld9BYBwy4j60qkS6gMoswdQS0A6Tom9yXPYXAQr4vS3l2reO/Xyz
	 JQx3FIUUrLZ7RiuqhD6BXFh5FG1wqE8mIYfbN19rcnU/hBd5V5wCV9deIjneT1xWqK
	 hxx/bvME9gtrY55MEctgB4A0di0LyATFn83A+GQWvf/7YseekMSs6HWGDBK3/7vRMK
	 K/BSL3jy63v0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7CEC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732495360.26286.13608955252545717666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d51753163bf7c8894844764e6337c3529a9ac889a1d703d3a38c231126973c0
Date: Sun, 19 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737324953
