Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381933C0A06
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779822754; cv=none; b=u0HcsllMKtikdlSMnXVVoFGu0Vo4trSHA1+4Y2pewhuEtW7zV8v+JRdoFX9BOnjftsBGqkmMoCrMLPPySFAvkQqqLr/BedBODKxBO+aRIvzBZZabPrC9WABw5bRWNu24GUXMLoaYV/HPBOOP6SfdNwjWQGeEFl9VIvWw6a/HXpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779822754; c=relaxed/simple;
	bh=woqXQJLVO8hpTJ2NcmlhAE8DjVnJtYcUeOvQCHt2o9g=;
	h=To:Subject:From:Message-Id:Date; b=axQl1pKtxzm/0uDEtyTyaeijBtsrHUZujJXR/ueTbivzd4B+k+LOvrEg2mvMXOoN/7yEoof0yBNcQxeuAHEiR1Dk6QrHVnnWC9NNI9l/ZFpCy86ngAxM8JP5QTwTYP2UyvwZODCSal6+epZ9gNJZWZNPgM3+czx2+gM7obmoh8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7ix+hM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7ix+hM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9939C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779822753;
	bh=woqXQJLVO8hpTJ2NcmlhAE8DjVnJtYcUeOvQCHt2o9g=;
	h=To:Subject:From:Date:From;
	b=s7ix+hM8Ovb5s79XDFlQ/M1IctmhBRf14cCd7YofJdJj5UEpKSm4Y9NmWpJOuZx/l
	 3a6Ps77e85KM0JpCOEw3qj4c4paaR8ZcL9RnXoljBoj8BYuiWkqI19XrW+0j+MZXDz
	 FPao7jQ/rZAHeUC4p3CHjvRqdKZ/zf9msBSSVTKQwkIeSM3kxgr90/AMNdHKaZnI8a
	 +nZinNB8IEDRw9qyYZ9+wpIn7hf3Cyw4dE7S3aK+AtZUlRe8PWx+y9H+2SDiC6oeH/
	 HczaOgkeZQ6J88igojgaLKY9Cqu6OARQnrHUE8oA79Q0iMo2AUa1KhOk75F7Ic7FW0
	 mcByxSL4STKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF273CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982275368.3055.16897316084891466245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92168715774a0211121328a011ee0f369b3c47e1d19d3db519f81265088cdb03
Date: Tue, 26 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779822753
