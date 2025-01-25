Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BE2FC0A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737839755; cv=none; b=HrKe/rq+kLSkwo0YgpdXDbgBiVsZrlLCw4UxFN92uFdqP1aWClgT2qHJwpOpLIHigWARCJt4xsQLidFIrFT31m6ZZZwSc0hpXaXf9fdNJvNUARV01ak2hTMYoUo1lSZWis2O17eOOETXRYS/OoD8Ma2O9IUoZcsAf9/nUlJgMj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737839755; c=relaxed/simple;
	bh=qJdEeaBtJwngj4jWLwDCC4okHz1Fjc/RSPixe7ZWgls=;
	h=To:Subject:From:Message-Id:Date; b=VL2qMYx8WLPZNBcUChdh3PXe6gU7vjhEpPtjZKAwe5Rvh87UdK3SDGbEXQfV6l0fTF8w86k93QA8tjg6U2uy+RHweMJxeDaaLrzNDSHTIzPK0driajmmfGYQqverpA42hLa/JBthul3UKSuCyoDfxL2E4hg1gBdGtq3pbEDD89k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Chb/6RV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Chb/6RV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA2FC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737839753;
	bh=qJdEeaBtJwngj4jWLwDCC4okHz1Fjc/RSPixe7ZWgls=;
	h=To:Subject:From:Date:From;
	b=Chb/6RV3fxy3ocgunSn8kCKPAbOhlQYdBLKPMVezgZ0yR+qluOgTzKtuupza9/UZL
	 en6aUZnByPymmyfwW+EFU+Wet961acx1i49y9JD2CM9PcQ6jqlqDGQhCPFop+NToTj
	 968qihrrzL68UIRQ05DDBcHLLH2/tyyYIEofGOVMWDoqnSunkGhbbotHFP3S2SXRVV
	 FrA1untiTyLkf/94xLI5oVnFVQcedlGoSj+9S0LuhZCPlno0KN4i5qiN/bC3IojGuv
	 DmK/pMhYBNPjDV9bsx/uEYoQLyx/wPxbOAzcTCsUDjOxgtoNYVHyvKud6BlBECN0+S
	 w1BHEJ5Evf0ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3EC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783975357.6479.5267237817215855271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c7b87c3812e9b36ecddf862807fa61224be1da7a3372bb6c16509aa4555ad4
Date: Sat, 25 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737839753
