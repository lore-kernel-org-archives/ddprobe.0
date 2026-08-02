Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB6258EE9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785632434; cv=none; b=rJ4cZ1/5hwPr8i7S1hsFbxXJf+tkemsXG9X1mwko53sUEfDQKFvNohsnbOSUofWxjeDMoifXeiSVvd4opWCkDFDcVUR7zsMAqrTbDVy+VoF9jlh5hDK9nYbxZO5KE0dUX6P13/1LSE0ZeMkZjfzXXF2W066feroGTJl8NE53KV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785632434; c=relaxed/simple;
	bh=IJi8vdfgIs1EoVoOo7JqZtqOSCVu/XoHS+db6t0A0Co=;
	h=To:Subject:From:Message-Id:Date; b=YOmFNQKauFqhxWJ69bS3yRmUbFRr5ftQGZRgrInJWbLILTzaehr7DrNQEUUv6csTi+WU46yczN+CtLVtHlN8scCt4io4FHuR6I3bAqVLb4b4vxl+nnA8SO7OYOTI12nASOBvc6ghNJy3tsftS+uVjuT/b2Scqq0PVyOHNPARMYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVhVZcXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVhVZcXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5850C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785632433;
	bh=IJi8vdfgIs1EoVoOo7JqZtqOSCVu/XoHS+db6t0A0Co=;
	h=To:Subject:From:Date:From;
	b=iVhVZcXz4/na+1CO5laEQxKlyv70ns2PX4zX7OkY0MObtbFPX0+vjukqE3oy7YTxQ
	 TzbBo63Ha3MSdYUstW5CrujIExyJkhs3Gte4UY+9vQH54cmvJPW/U38ZcsmSdy427W
	 BEi/CHvjiEx28M4EbhfdgeRqlEdXwP4UNTQF2HXQvMFzc74KXSTTHsymAC6rbiHIhq
	 1JZ+ZunB5EZT9/aAkoemjrVsuMNzp2qNQEK+e/lwnmLJ8eoPw6Rn9KHKCOsRs3+uDJ
	 NSrbJ1oaejCVngCT4XhpBbYlASVyjKICJb6Y8m/Z4Bgk6ZnJvrsR6Thud7tuU1NLDm
	 pJptM1MwaKi5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEBDC5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563243368.13546.10101629448959402229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c31aef3d484ceba6fb67c4668f78fc723a70b8bf693d0abd713704c044c11c4
Date: Sun, 02 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785632433
