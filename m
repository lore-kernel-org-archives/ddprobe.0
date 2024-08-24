Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223064C62E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724522754; cv=none; b=Rc7DLr9E693ZiO4XvHNYArT6S7PfT6aFS3UNFgshtJgcFz3bKoU/YtWTMdX1VS9taErpBmrfa0Zwp8eAryBJ0MSNgjlVoucitFI27/0iY7qw/sAyRXniPR7a+ySl5a4wr2ll4In++4ise/We/QuKAwi7KgInuePUerD6WMezVD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724522754; c=relaxed/simple;
	bh=D1aTgul/Ue5mmhKRWd1pKg47PrIIfDh5BMrg8eitDiI=;
	h=To:Subject:From:Message-Id:Date; b=FgwT0vz/CtIwY6L3fpgTJExK9VqiTezpN2BQUyXqEyDBE2qtgzubhmEiXgU/p1+YAd0xVaAopPWiA4dZx5CoN5GElgu8NqVKVwiUYGFgvtvFXach2yFQrIBXCJhUCpPXcTBlsfcbkiErsUPa4j/RWAE5NIdiy7GxUagUXssahps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOZrIkFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOZrIkFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A872CC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724522753;
	bh=D1aTgul/Ue5mmhKRWd1pKg47PrIIfDh5BMrg8eitDiI=;
	h=To:Subject:From:Date:From;
	b=fOZrIkFIokKW1YyS6oxlePg+8twGzfrNyykMWaXngZnJh0fOnP4wSKio1L+HpXihL
	 af7b2Xtc4G1676dVCjY1nTPXm4nUUe2TZUyuNig5hS+bvTzbxA/seRpXq5OeOvgNG4
	 wH4Klrp2wnDFOs4xkqCNKEdnaGyY0HdnvYws+krsdR/0MxzdkswfdTOM6iiCaAjVUC
	 9sGf7diQx8QbjKv8xb5p05USK79PcvBHXxN1DXv/clYqcHq9JI0RgHKL2Kv59Zf8IW
	 2R2Qwp4y/d8wJSqDqXTwn8tPCy7iB22Ho8PzyxG/FpmHspv8VbMvsZ5F9YM/+EjOdx
	 cgK4drE1fAw0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97816C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452275360.26944.2957446826132811854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c027fffd3e4c14198e215ac9f9c4206ee968488d2b09f1641ef6155da17ab36b
Date: Sat, 24 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724522753
