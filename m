Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E58B2ED85E
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751622594; cv=none; b=ZCiAsGm4NYvu2W2p4Arw4KrAyiDEtFEs33DjY4IuLSemOGeH2JbSCUkSC79LTQfTkmi6MfzFJAIbG/rFMoy5atl8fuhdQf4VPge6jNWyXov2iAI6rjxQU+3PNlSfc793jpYE1+spbT7Vvd0gMSoDcZYa8jdyts7ZOgRqqKgnJzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751622594; c=relaxed/simple;
	bh=WHSKsGEmrboRHxbnzJR08Oabml46TpAOq9OoLuzpP1k=;
	h=To:Subject:From:Message-Id:Date; b=ndTZl2jHJ5wytUjHtAxL+vrEzqCvwS00/YDUqbHW0+5zS8Yb9iO5usnSaUBcECAHMxKDKhSwIKxPzFyo/QKAPkh20RTgtep6T5fFaH/5mN+qthTaskvfppmpVReB/meHLfRmVlrja73KUP6NO0nA4QbOno2DeepzcLjhR1OwgWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXV4jaa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXV4jaa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C989C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751622593;
	bh=WHSKsGEmrboRHxbnzJR08Oabml46TpAOq9OoLuzpP1k=;
	h=To:Subject:From:Date:From;
	b=CXV4jaa9WgrrCNTiXlK0jrKZSgGlyWENBb/Ad+1XgHjtTDz9/x0f/gInFz+p5qVV4
	 kJfxqx54bfhdABjiy/rmtN1HamHET1eVNu+x2qHzMQT7O/V4CEPqijtYD/ZXS+WncY
	 BF5DMC5a8ijbjTOas0nU1e27BbhmpRyeFtyo6d2eR/U0WtJ+2Px/si+RO7KB5ikDfR
	 zn8BJbqcdJxpOo4e1WH4KElzKUznoUAD6vxi1WZDSvnwHiw93RkhgfEIzF36srkFAS
	 OxLQDp/0SoANIdeyf0a0RE6OeBWaR6kux4dPTWnO4sEW239O3d/bI2Ny19KeBk9pSS
	 DDYOKHMCxnRFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E803C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162259357.3970.15361363585124126514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31bf76cf1d114ab4ce0db69fb9210e85ad0f05260bcbfcd5f9b7555b4c611e6
Date: Fri, 04 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751622593
