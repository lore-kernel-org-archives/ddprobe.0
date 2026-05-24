Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7774317D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779633154; cv=none; b=K6GGtFgSb0bOThOFjKQdXWU1FfuOmZ581D5emk7TMseDFQX/IiMwSFZ2GAEhDgVrRad8u14oKZh4TxrqbRwHEiumWYzIl02J56ERpCHmxdPMysy73kHUugarg7GM6qe32UTMbntrPBmaf3PXfdtHHZIMGiX4i89BfzdY4HPhjzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779633154; c=relaxed/simple;
	bh=kHecHvK7bKWB636IGse2UJTXi8OSTI8xOhxZrk2juZ4=;
	h=To:Subject:From:Message-Id:Date; b=CzqLlPDs0VLfNMYuDXVAAIHotlfzVwhICQcLVka6Y9jRV7GiNk7tavKZRQaqPXQ3f4qRjfpTMZUruvfJ3GChQjLUBzcGEHDuHtvpLYv5P3XmsLlmvEiprbqVx5f5TUmcSb4aUb6zr3+8+l4q5SwnZqgJqaMrildqZ7KT1tVCddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfZqI4iW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfZqI4iW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA97AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779633153;
	bh=kHecHvK7bKWB636IGse2UJTXi8OSTI8xOhxZrk2juZ4=;
	h=To:Subject:From:Date:From;
	b=LfZqI4iWidYYgxWoDio/A85f4iWFm24c0xjyVVFgNZpHkqMozmhf6sS7Fs5XGjQro
	 3Rw/o/Kc1hGoUlAmr7AF+ljc1Rra8WJnbFf2Or4Gj8InMRHhqu1+0jIxflgdUlzofD
	 qIfvIIQzYHkil1iyr4LUxgGiyn3NI1S/bMl/g1KkCqIZ6mX47P6vz6XDIGVymJs9v1
	 CjR6ys/a5fCVsDBKcNQDaXFeysY2mfUufwrz95wZCT2GwTN8/DMlYFBzPAyxj/aTF3
	 VRZR3c8savQyyXomS25tvFC2kdz7Sn1pZyIm8Hpo75QNDwFVBiDHi6k/o6hBPsytd1
	 QXqoKhnvBHaUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ABBCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963315369.30505.18078468705062655479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dd8616af6c6b62a4dd51983bc9400eac5ea826cc6b30c31e0fcdbb119b6974
Date: Sun, 24 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779633153
