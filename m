Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077C82877F2
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755570595; cv=none; b=Zpugm15dW1I+GNFf9daiP5hMhUU+ovqb19qEVef0BTM2Y75q5SbWnfW47y4zn3tsMqct2KMLLbzlrSLyqwWkzgvawgd56ueetLjvAQvpoqs0wWMstya88LPiuftox8br4mRCELesF+2eInjehS1QU9x2hrEMxBQ3r9J665/hejw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755570595; c=relaxed/simple;
	bh=bHPOn2fVXRslmAbQ7NFpS8WEHv70movZ5z+s9+0xzuI=;
	h=To:Subject:From:Message-Id:Date; b=Z+Ezwl9XgJ78t6d+1HL+Ybv1alcH0fsNwbidsB6AQbrDD5CCY28mgE86DiWCdYTN1dcvWuQonM9m4Hxs/2h+GOopSvWJcrOWXmIzR1zsiPaQC1L5QK15MsANsOzZf65cKcInBWMV0mcwZ/OL2qlBIOJx+6u83oLkwo40pYnSgH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2WzxQQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2WzxQQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D85C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755570593;
	bh=bHPOn2fVXRslmAbQ7NFpS8WEHv70movZ5z+s9+0xzuI=;
	h=To:Subject:From:Date:From;
	b=I2WzxQQesxxk7/It5VJrySVTreC4LH+QHzQxMcu1snZZxdNk0wDZXuz4FInEF+fsX
	 D+PKqJ+SEnm4OD0Np8azvnoW2sStAhyUy+4mczVAHN7ZaZgRisgjnSYSAq2x/6b+KQ
	 3bnNn2NdNAulni+2eWiFU2WO35xn+uLQplW7rsomNGBK9eCDv92Nyc//rh6SrBvsO5
	 APfxlnLGpO71wQocAGqPhDoJ9PW1fWsQfkX6sgO1+prJq0wb9T3g92X7mM5BuqWzqM
	 F4DwjviYYKK8ZF3/gzIHAfDB79TACzOYQaXuyj1FKSv49h5dK4j77mowgTkERkRvEB
	 6rtVJPHJGCqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F7CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557059357.27615.2990874477717136338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6286155deba93a9a800f1902c7ec9df6900c928df8eda1cba5592c63fb07d5
Date: Tue, 19 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755570593
