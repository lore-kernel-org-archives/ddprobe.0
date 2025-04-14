Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588227816F
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744627794; cv=none; b=nbzxv49gmI/I88NZj5e0jTcwbVnoaWZ/48aFKQI/z810mTgH589Duv27XelASUgVnq694IC84AFnKW15zqP2a6hsDGE4PA5pK8xwwOfJsCunFKx/OtMW9CG2oHfLXJCJ3HE7Fd0V2UsVqt++6lzWGKHbDTQbGmNyAu6Y5gQyA44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744627794; c=relaxed/simple;
	bh=RMii2fIP63viGpV0rAarbHyTQIWnjoDM7QQ33cJBYj0=;
	h=To:Subject:From:Message-Id:Date; b=QJxlYDzR+RzgnG28+DoJyfHu1J2LcWfbi4jQxNu8wYoje9fxm1u14qaBAMXcxWBY/iXpxAWSkBms4lCEByw7fvCuBhYbm+guXS+tNT0Ykr/98dPCoTdwKbUSF3NUnAZ08nfV4T+77LFH2IU8cA4yEPI+KfvFRfmAbxzXubhp1Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n//1FBVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n//1FBVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B4BC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744627793;
	bh=RMii2fIP63viGpV0rAarbHyTQIWnjoDM7QQ33cJBYj0=;
	h=To:Subject:From:Date:From;
	b=n//1FBVKAgbQJUlngFyw2oELB/MrS3ip5gzhE4vekqAQnjPMBFPiVcpC5EiYOelE2
	 OGXAy2w+WKwSLslhMCmEBt/Lo68HmKeY6FFxcVp33T7JxzCedM/OKeL8v61rXJBsiW
	 tr0FRv+MqYK8+MmVIADSaAVNeBbelYIQWD3IbMd64IAPKtrV8Th+DHSXPOCzIqw53b
	 CuV9kg6jLWEZWuNYQBJqxP25Y43L5Mrbdr5PoOC46kgA5P6H9tE5dEeMKQsZFOHfez
	 j3dkdhxFnYSTteBeROe1yReeAvJJN75N2Bcx/Lq1q78tTkacO4ZeoJsSBawexeixEk
	 nY1vFdu8hIvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A102BC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462779365.6009.9549430979153618344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ac7dd5410766c100a1ad82c8c55e5b2506418c612cad057a3804282c88c81d
Date: Mon, 14 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744627793
