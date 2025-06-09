Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4223D43ABC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749463794; cv=none; b=Ytx7j8O5nCHLnel7SH6Nu0W11C9QElVVTGDv0W7cDNdIEa1lpPFH5RU8OzgDQPG0wSlsE96Q87kdA0oltiRcY3TK+ulNSrKDCVydB8CUHh02837MWac48sN529dUYvPMtgTSGZeC+xm+7zCZ0VUEx3IyCTRJ0SKOPjTTo1Yo/Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749463794; c=relaxed/simple;
	bh=L0oD6QXCOXwILTuAqiIOl81tsPpbi8/xK8VyRFlwXHw=;
	h=To:Subject:From:Message-Id:Date; b=YafwEGym0hqjwXCAw1uJx+/Y9mNbLuykOMa86H1gxUQTrX4Unt0glYKMTmlYQV7QTcvZxRNbIB4ihFJZYjtgPd8WkTjfH6hRdrhUjGTcVs1nnW8m+jKBguU/Z6n5ra+PfN7ZmCCwfmAJEfwQ6Tcpy+nQs5swQL2zchY4ceVXi6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0Dkr0I/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0Dkr0I/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A736C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749463793;
	bh=L0oD6QXCOXwILTuAqiIOl81tsPpbi8/xK8VyRFlwXHw=;
	h=To:Subject:From:Date:From;
	b=r0Dkr0I/LVp2bZp5yvOfvmLKgnrQv/y1p7/KWsAV4U+lC4CId/zqpj7RWMJ4EOWoy
	 84jezjw/1C3NgBy0S5KadfjUB37Cj61JNblDlZTcxrIyWuvwMPmXcbXKnLQ76/hNU5
	 D1tiMRcLyU7eLPThj4zS0sEtvJpVzEBzuFUMcIaDbxc4rRk6kX2smegr+rXS1lQOn+
	 rx3yRdyVauO7O/FdujnyeuXY5dILXTloeh2hUXwq81mBvFQu/cSvvK4LcCckHYNtZm
	 +t3+yvRLgYku0AllvoNqSUzDDDpcoZCuQZ8IRUOikFsPKGNovaTx4/X81t0Ghiv+EV
	 RIVv0aI45H47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A8C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946379357.28723.17467362182115511124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501abcd2b4bda5b7821a02d5444c7e7ae475b5b270a9f6af4e5c68b1716b1ce3
Date: Mon, 09 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749463793
