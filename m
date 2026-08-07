Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5D832B13E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786102234; cv=none; b=EJbkC9BdmuRZyryuMNC5+id6+JJ0E1YYh6i3K37tm/VmDuB3hUAhuIYt3ZgsVEIOATfFPA0modKXMaFB1kP+0jwPrspdE8QqQUxGm+O5xII5uqBAmJw6dJA0Gqg/k1YQEX2x4/7/kfz34Q70lK366n25TAJMA59zNJWSeRsIvVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786102234; c=relaxed/simple;
	bh=hiAF8Wwip4j+hz8JjTPJMTWPtF8GaMSI1dp8unFfmxI=;
	h=To:Subject:From:Message-Id:Date; b=g2owjW5JYQHLvXTfhFALNSCEVzaU2ineJFuS3ANEiHiL5XzadrDmLai3lQRJKaYHB025LP5qwDqCVAoPKTnWDJc6MrgijmemIi+H/aGkwC38cHPhV73t64JGHLnnvOVD9FdTT8qNvcm8ADRHQbmO/J13/STQd0O4ub00fSlrQLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saa6+Pd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saa6+Pd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32929C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786102234;
	bh=hiAF8Wwip4j+hz8JjTPJMTWPtF8GaMSI1dp8unFfmxI=;
	h=To:Subject:From:Date:From;
	b=saa6+Pd4b3LiG6n7VVDYGwY5phiBCSRB6miAO/yDbW/ibCfwwBXesLpPS13eYc7fJ
	 YXek4BsHAQTMg4kv6Ctr8i6BgB69YETLz0M1nb9hBnOkWk7gq9x9Wg4pZEfINb1iia
	 8WN0ukfV8Xf1rJQ5zbGSPckZnIpTuXHSS/IRe+YrV7IlZtZPeMjfMDYq3ygfNUL2Cf
	 o85xZLcvUIYdd1yuA6E64EI+fuCZwNs3RWTOna4XyA+i3wg6avblinMOAnSSefW8+E
	 qOGAhGBlD3LjUypMKhMWm6tULdpw49GnCdGieYeJ22ar9qOdepVMxTqR6O0nf/3fo/
	 u2WH3A2rkZROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFE3BC5ACAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610223396.23945.12976079866073286555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2d71a0201c856d6686dbf12e68181b34f1b79da6d24ec2ff150651bc3d408c
Date: Fri, 07 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786102233
