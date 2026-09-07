Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF8338E8A6
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788747034; cv=none; b=X01L+55PB3MC6UmFii3xJwYisQ60JWm6WMn1WkHPSDivzjHyjV4UEUXSC7cXb3pcZAh5TbU8ikSGywuZBdkPpSUrbQQMbG5xbW9S3K9gg7QVeTnvpw6/iZNGMAcMx53IPii58XvcL6XM+NG3Rd9j3F7oQ9tfSQbd0S6ngagLYlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788747034; c=relaxed/simple;
	bh=qqAnf06EQQIFqnaSW3OcrTanauBZif8MxOruF72A4IE=;
	h=To:Subject:From:Message-Id:Date; b=CV4fUof59Zmy83IiunN5K6iDazpOb5MKuLLk54ZUnZxQf0hr5UZxcG8cm4l6MKM9op1KPxaZGgKhhAjQVdLofg7PCpPtUNxiU8s1YuVOYp1Mtgkfto5GnJKrW1OYWplIQNsSCpCZ4jdQiBvrenx7XXunrsHT1v3B/+bDrOo3PWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJgWFTc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJgWFTc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4394C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788747033;
	bh=qqAnf06EQQIFqnaSW3OcrTanauBZif8MxOruF72A4IE=;
	h=To:Subject:From:Date:From;
	b=AJgWFTc8Veqb0DjipzwGMMB3VdnKn3gT5cSoBhrFK2L/7PcMYwni7Uv8/Xt3Uvw4y
	 ONjA1uMVKmeD3kUexvSaqwKvjwcqUxV1pyPLXc1fPc22p2J2imiqXTkMhTkj0sOMVN
	 1w3ktton9Vj8ZlyaQlnhhLi/FTW0WuHvOB7w2Pu8Gy09cVvgpwzn744wIwbl0SVF3q
	 5GJElw0vg02uoQ3x4unXz2OF9/cCn1/Vqm1IP4v4yrucrcN2Mq83muj4LLGmaFMMFe
	 jnbogy2jkWJAmeZE4pyXHAcd0f+AV9ySWxN1Mmzp/bv2AXRBthXnRsNBmbSQ6oQD81
	 Sn6aw1MdTb0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1425C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874703370.11015.2502240960030033231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba27b3a8418a4331fae02cd7fefeceefdd97a0109a134ad5e8f89f3e66a5dd1e
Date: Mon, 07 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788747033
