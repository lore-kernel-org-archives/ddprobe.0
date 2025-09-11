Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBA4221F0C
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757572794; cv=none; b=SobXPWkGPz2VPCzW7QUUeI8j99nmPEv0irj8jgEpASM+I/SC+7xkL3a615mEPZaayNiDsdNIEOX/tkXwkjL/+ByLtoXbuF9PqksbTZZ8qHBENmpZTi1L+tuO7jUyxNKz784isaBeidUYeZxHu7OA412UEv8MbIgCH1+vzVuxyiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757572794; c=relaxed/simple;
	bh=Sg6MWuOuIWekimVjhAhCvvvqFh5daar/6jpUygbVTjs=;
	h=To:Subject:From:Message-Id:Date; b=lgDA/NNIpl++CehilU2E0kthqyS2Ziv8EGxngKZm0zSZ3QgDiZX+YoCKYggo6MSJR3oDb/sg9ga7/vnfrY3eWtqSu8X/JBIVMEo2+g3/r5ZQVBg6mgirtOOxIyfQKRDocKBJsl6FD98NMHWYAF/bjw9ALqjaNIsNOERQPzdMU+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL5Njsdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL5Njsdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1F1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757572793;
	bh=Sg6MWuOuIWekimVjhAhCvvvqFh5daar/6jpUygbVTjs=;
	h=To:Subject:From:Date:From;
	b=CL5NjsduzF6gP407Ahegxts0n0SAz8MNbbVgSrxvk/WQ6MqW5BwWhWSRZ9m4UsMgY
	 eUAt5fDFARfRvYACsCULZOBGm2beMFKUow8HzmIMjp6kChHzFFMC9gmZey0KDiCIM2
	 VG/szkzl7hTmv34GbzWVmrduSHqcJyLZkZtwOOLWkdyKOs4OyeXE/fIFJ0Fp6q7XM+
	 EXktgCGYXyq1KJx1FmR1DypVMXwATU8iZeEaeD/iEG2bJDfxFWk9FCmsdaBT3U7W42
	 sQkD28HRmt35uOmXLiWLEGbkLC5JQNCQ7cHkY7QntgkiTvU1Dg1i5+Ajz/eVxRsv2z
	 +efHuKhKt990Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49FCAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757279357.18871.1538295325410202771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeac9d24f20b5ebff270ca3484e3cec574a8e95848d9c37f131ff0d02fb0ecd2
Date: Thu, 11 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757572793
