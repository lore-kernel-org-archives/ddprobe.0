Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB41E27EC7D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747133993; cv=none; b=hS+s4qwmZx+5LTswMS1cfSNhVaLdc2WZYuaH6bPnIQQujpAx2bVgFahRidt7xuDt7YhJNCq9d8KIyoT0NgJUUGdBGhFHzmLLFZNstqo25Zn/+NcGxT2DHfBAgRUPOpF+5ErYWECP/3YBRO8VhOOrZ9pVHk03RIlsRF6+MlCnzA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747133993; c=relaxed/simple;
	bh=8kUcip53ELXPeC4jPqaOWjuw373Uj86+M7RvvCGq1Eg=;
	h=To:Subject:From:Message-Id:Date; b=o4rdebhUUf6l1calSwEBrdPhLq1DTITiuLtNSkD7sqrMhqretnGyt4aJXyEj3ylNelb+FiUoP1GPXaO3fAGpAQofDa3yHByNA6crT+cDrcDpWTmd61VGOdEtnKkC2v0Y8N7HlNWr4dyoblqZC9eruxfHY6T0fCi1mSSsNiHnsXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnx7hhYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnx7hhYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D993C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747133993;
	bh=8kUcip53ELXPeC4jPqaOWjuw373Uj86+M7RvvCGq1Eg=;
	h=To:Subject:From:Date:From;
	b=mnx7hhYQem0FESvGI+BwSk2e3/zaeNrvHMQZpkP8w/UAmIcCtz7RDxBh93T3S9g7k
	 TDKPLpLBTMYYpWvMdu+j1o8+X7dO5lTWfs0JVuGPZJJ6qAPk9dsZeO3US2KiZSZB9m
	 e8JYPCwiTDN6JXCB8vNjqysNQ1W1fwzLuy7JNuaKMnUoNx1yy5hLS1XUuCFCLfl4y0
	 IZ+79KpUhdqSYU8QvNaVc2B6pbv4Xke0cfm63iLhk0Ec7WeC7/PafZtSpeC2tApbj1
	 3+fLIeiBqfviDQ1OJhTRSfPxifURxgSKnqC9+WBH8DZ+SFIvbJTSdOo2i29wSYd/Rp
	 mVA1KmswNK7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2FC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713399358.10059.17535785315952421776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d881617a7a561584522d520aca5223e1154a0fefe3756296c7b3ae4c5d7a1b2
Date: Tue, 13 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747133993
