Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3772428D8F7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748450394; cv=none; b=s2VHNDCYwBOXcNYaGtBw+U8EsO70NB2lrcdY3tQEKyXErd1GGqtsmH7es7ADFNHF4EFi4SqTnulx6OeUl2RE1tJoMNi0I5smmLCmy7EK/w38c9nKSgESIoQi7oEQNpvOAxsCKBUzE+v1UMCxZbowdJDj8FTv4/JhbHlwofX34Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748450394; c=relaxed/simple;
	bh=F+fPsBqr7126jHGL7gKdmqdpGC23hsTl7qBPn3kSyiw=;
	h=To:Subject:From:Message-Id:Date; b=EES+RbpsJ9y8Qk6CQM5PHhYR9NZ0mSGFF/AYPTOe0W/tJuPf9cz00muj5zXIbR78ytVLyIOMrK/7TBNUFb4HLPUog8lSWzOTMF67qpKA3aU/vRx+IKec2Ugr7gYDEzlTHjtUsoFU7V59Svnr0Xb9zBMM4foEF5xvAVS5UMvysGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rq9oBGMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rq9oBGMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CCC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748450393;
	bh=F+fPsBqr7126jHGL7gKdmqdpGC23hsTl7qBPn3kSyiw=;
	h=To:Subject:From:Date:From;
	b=Rq9oBGMtwpPOnjPZzkRE/Z6vKWbm7X8g9jads4bkT2FMJaWam15lSNJ4wm+luhvwk
	 uLjeDlfHaMXrY3TK28weeyDcsUhLP4It8DSU+Uv2yWomKx5ClZCF6eJEuWaOV88N08
	 EQZ+VUD4YKmGjJRfHnAwW/6AwFzzxtuqrgv9L/vtF6pOTDX37c0gP0A/I+Eeetu+/7
	 hPJuDXBzmupE1vroeEzslTFad71ktu741e2DlOga5gOZHkRuTWLDTG3ghmXrUo1q5/
	 7+cTKFtnd2WZc8Q/m72BiOZI86K4+IrGjCebrkv2FpSqggikLupXENgENfonS2jT63
	 9czkOfWsQUbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDCC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845039357.832.8974740036242324519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282351837d0b784f60bf61a31db663c4840e70ddbc84f9d6eb27a7e2f75acbb8
Date: Wed, 28 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748450393
