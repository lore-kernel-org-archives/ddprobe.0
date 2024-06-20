Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641513A29C
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718867363; cv=none; b=BB/8AVN33zB5zY2VAal6KkDOSuHG1iu7FrI79PXEfMxYT2xSYPpEVnyueRhE5qDVXAoKN2voYJDqxQD5td0qXgt3vtHmqxsG5BaZCxLoPfVRAoXsL3YSgfzRDwgvCwK3mwKVZPTwSeIsM7Q5y+boPRq0COYru1YoLg/dmbbTp0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718867363; c=relaxed/simple;
	bh=ASEkHgaWBXyCcScmotXBZP3VC98/wSMh7CWJlschWwg=;
	h=To:Subject:From:Message-Id:Date; b=UIuMdvKC0m4rRjWcelBai7/DV1eY15GLFChi6N8y4XZulIGCKZHply4fWFlVuSQubMnofC5erLojR3deAPYjN193zbz1EjyfjDOQSY1sUtag/EYrm0i5t6MpUMLWYaNjQm3CriFHuVEMjTewuMJAk81nMALqzdSe5eENCc68lzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIc+3hVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIc+3hVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00B8C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718867362;
	bh=ASEkHgaWBXyCcScmotXBZP3VC98/wSMh7CWJlschWwg=;
	h=To:Subject:From:Date:From;
	b=fIc+3hVvxyN8rfutJOwejcpWpgdyD7Dg7xQc8HYW9D+wDQn6L4J4hCcAQOR38xC4C
	 mDy0BhNK1HYDUWSt/ZCvVd/GQ+Bshyyq6Q3BN9lVtdDESLquOedYiR7vbvSdFqGsGp
	 IUcXlrL0uFMZgO9zSy9uX5TAAliYrvjjE9aPsCS0XXCQbFJNbFIs9Mqmf9vmrtC0II
	 pMy07762DvTFFE75dt8Z0RR4B1NKFQksapLhGhey9w3IDIAz7YxsCzivd74+ILrXGG
	 uaq80TevkNPUoxcTKw3YRYy+ZwJ1iHADeml/DitB8MltV4LUFFyLyundYHE3yyHx8W
	 KKNBUPvb5GZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4C6C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886736279.11531.7948538225159515414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f822e717172ca5cdb6a171c6ca955856e4857ab0ccf5c29d8a975b2209826e47
Date: Thu, 20 Jun 2024 07:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718867362
