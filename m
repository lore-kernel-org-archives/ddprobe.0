Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAF42F066D
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762168194; cv=none; b=oBvU6E/hq+vWLadqXk1JF3gLuiP53+beHjTuWKcBISSec3f6wDHYUuiKE5pothf3xhtEkGDZDRPMOw/cHwMSVeoWdqUYtLYxwCahc3b6uwFuIQc/RDy7JvPiFvon9cTc4X2BUdUkBPwkvfkge7wyGfm5U6SDV09jPJ3tJqfELMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762168194; c=relaxed/simple;
	bh=k/Mq1xh1+og97c5xENPXuEKWZyBctWJTFPfl0kQaQD0=;
	h=To:Subject:From:Message-Id:Date; b=oLhhLZD46inC3Ep4fyJyHYezMBL8WsG/HJD9iNb8x/UVX50h8GHm6uuMYrs/MTknGng0XfV3U6oVNPKS8wWz6G2V/n2aaPtrET64oLG8N1gEauXqnB9oTsPBSRcqgQhixGqS7+arb5CdVZ9CTYV4o80dymmNhJdjA73epO6tKyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf663dsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf663dsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF0DC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762168193;
	bh=k/Mq1xh1+og97c5xENPXuEKWZyBctWJTFPfl0kQaQD0=;
	h=To:Subject:From:Date:From;
	b=Wf663dsC3G0ujYXwLYo4hDGQhK6TuLju0sHJ+c8NJptw3LpiNUnFSmE4TpgQ2VLg7
	 DjCR+XQISacQw07WgfQ67Ymy9RfRCPk7udWN0vmpn6/F1SC8XsTgPMUafvuleJaHlt
	 B1g/LoPg3GuBxLXceDiGqUbxNgAzNq2F1pjU0ruPXPABBXGae/fwkGOLp6ogowen8r
	 55pAhboA5AWFC4eA3Wwmm6Z0IcqMDztpZgSq2hFDfrOHVH3zurxIwgy1FTl7OG49UQ
	 X8qY5BJ7HDeYR7yLLv38Q3cTHi2KVCEOmkHjSTjmisulSBl//dWLVpCVqTtbtHpltk
	 70ASYmMFS17ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057CCCFA05
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216819358.15074.8487846122453495171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b24bcfc1a02e5a90145cd2ca0900a90e54e70af8e0652ab9f6f5774bbf6bea
Date: Mon, 03 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762168193
