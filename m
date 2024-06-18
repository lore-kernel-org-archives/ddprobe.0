Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD5B26AC1
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717363; cv=none; b=PtSzqiTY8qgiOhyxq+LFrIkquYXMCNHcBI7yceu2X0urZvERt92VUMZFZq9SzvmTm6DLNSTXkLpYAL+Auz+vXrOIxgXgEXL0uKUdmS4V5h57Gtr/nWllCX/CZdZvlqkCtHjWbD8/S7B4zjGt64mY4Fr/KhxxS8xVniqLL/DBBA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717363; c=relaxed/simple;
	bh=phXBYCqwxEIuS6mGsfozEn2ouyHf6YDwu0ATbhoaBX4=;
	h=To:Subject:From:Message-Id:Date; b=AAq8uZ6HSwj4/aV9YFq2w1zDEWq8aUe0qQJTmTNzQ3wQGNFtUqM2bSGNSSkIW32OmBtkkvb0bDP6O/+NNuxasMLSd9z5DU6Y07rCvRA6POmBiBLXuGuCj1qxYQgThLF4EEoubloe94Rlj3ba+i7DCNHYizipsezkTUPp3O/zVig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dau5A/M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dau5A/M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF98DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718717362;
	bh=phXBYCqwxEIuS6mGsfozEn2ouyHf6YDwu0ATbhoaBX4=;
	h=To:Subject:From:Date:From;
	b=Dau5A/M0X5b/IWOubKj8aNc8AsNQrFRUPRm0C2iGG72GYs6uHinVGptUbnQp0TANN
	 2uR/2hWgTQ/zWlUV3hACNdFIZFtHgg6HZ4r3d6KiTdpzbXUEUCvhdn3pZisqUpQq4r
	 t6aw/VIoP6f2SGnuplPFgRy0scyVGVY6SM1+ts16lKld93POSq2cbhCf1tZo1cvAA+
	 Xl2YqZVHiqzcNE6C1RibqJPzdF5/03rkleTvYNKxAslJZckWnTzmIKtWXGGMhsfwLc
	 KOBnBCWUKJSclRsvjdQCCE5RgqANKGdiHvhu2Cjrn5VWc5Buh6oBz20mc14fieZKka
	 qdj++Nlp2iBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F32C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871736279.28627.2349613473141716919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c7ca50d11040b26c639b19904b42075abff8cd34c871f7820a1772ebf766cb
Date: Tue, 18 Jun 2024 13:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718717362
