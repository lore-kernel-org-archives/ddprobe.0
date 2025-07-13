Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3E52E371E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752404394; cv=none; b=VLZOvmU1BFAjQGWVnqaMmL0kvL4rpdgqpX1D/njBxVsWagjRBhEOCbVCQnrvaUVR8Yr1kxkxwFRUotJuiRCJzaPuOMSAD5BRSBiHz1O9VaGZgcLyJpRGBZBpqJBBPp5hL1gw8LATiv1zms+nYH7qhd2bolpxPbLR3wXGiruRXC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752404394; c=relaxed/simple;
	bh=anl4MspDxAY148SaVgSMDEUsWVU7JE8ZbruusWppkbY=;
	h=To:Subject:From:Message-Id:Date; b=rWP92G8+77VC8abwg8RLiGRGAx2SixicEJe3R1jPnlDMj8604bksZHMWdQ94ZDeL/b/7XXo0Vs4hxZn3UZdUPIkB/IDyEGeW3Xq/x+bdpAaUGzPI/7K7b3skpAnnD5r9Ify7YYrS3uykkPntpiPK2p6wLC1s6hGfpYma9nDOaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcnh6fKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcnh6fKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A320CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752404393;
	bh=anl4MspDxAY148SaVgSMDEUsWVU7JE8ZbruusWppkbY=;
	h=To:Subject:From:Date:From;
	b=lcnh6fKD3Gr8yszRlNk+bv8PIsSJl7ihimn3m4aN3vvlMPaTqUXyO9prdIsECVJsR
	 1oYXZpDAYGws1zLgKoziL0EWpFhs8ISBLKChvacfxheqS6s/h1jyNhscI2XQv3Q7W+
	 3ZE9NVmeEuu6z44SY65WU4SSAxHJznby1MLcVRlY4fD8PypJ9nUSR8MlRmbtIz+OUl
	 mQK89UwotRR14frH12qJ7/2EuE0qE9V4sx1yAZddZiJ5OX5Ixq9LZF1h1iDscqddWz
	 YcRDv548kw8q7IRihuGr54SOx7k1lTmN6raEgfx1x1MNrEi2s0E0dCFZn1Ijs7Vmtu
	 rqGbM1dqQ7Qiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB84C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240439358.7073.17143921618880931012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9ce1158fd6219da51557460111153ab442241028bad8163af0cd80d1e27c23
Date: Sun, 13 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752404393
