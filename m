Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3B2571AD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740439136; cv=none; b=FflQGvA4fRJWYzwZdD7Crmwx8/vSCvz8CJLClkpr12EUryRBy5ik1t2gzz/JSUfMxokQ/vhd/VCMdcv0ITTKMYl5b3zleTJTtvxFziu3Z6P5yQfdrXy3/DpwbXUcVAMqKNaYna5d9Z3CFy7eRbZxRJj3EbowJuw8YnLdzENv0vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740439136; c=relaxed/simple;
	bh=ZKfPMVKKF5+0rrQqlARBixTn3CzE7h0C0GU5uzH1b0M=;
	h=To:Subject:From:Message-Id:Date; b=Kh5fe9ULUt4drMncXovSoj1GdcPzMpz/5rFk3xqQ9U99cVMqyXOBDcTZ3p2M4qU807Pelig8PeWVyN8tz3tRl8voEbpimhyBCSqgGMoqdl7gA5k6nhIHgtEhnZOY2UrQAOglXEdwygim10/PvbB3Do6toWYsjI1QWTk9+QFWXzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egkyEglR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egkyEglR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE0CC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740439133;
	bh=ZKfPMVKKF5+0rrQqlARBixTn3CzE7h0C0GU5uzH1b0M=;
	h=To:Subject:From:Date:From;
	b=egkyEglRR+GlDzRCP33GJcKWa5pvoNy3zqVP3xIH/QsK1yePSCRENgSrRilsbFOk+
	 S86zqZ7y6vqxLHvl2eAgKV/IIOec2f2yJqSYaHU1nK30Yy4aKLtqexXAsBfIOEuHHv
	 ZESNokbt0a/miEwzqcHA/2p5ShdosQysq9/QvvSI5AOsRg0WCD5ga3X93fe0EgSeXc
	 YbjGollCVp7mHpB0zk5hYEpZ+h3PAt80Xx0MCKakTSXyDjHhXmA4mEw8WnSLlhktB6
	 3K46S3CXcsLpFOi99qHlhzZFOlNq+Z+HarJg0s6r+da7marTFNerrnZTAXLguKkJGH
	 hQkS9YT5rcQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D83C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174043913358.26644.805012838424784554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eadb9626961a770f494375469ed06305a6fd1485cf48ec7bd225f898a2cd529
Date: Mon, 24 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740439133
