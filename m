Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF8028C864
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696034; cv=none; b=inbr7eNdtcjAdKIeAP3+Y9RArtClRSlK4vI/PT53pNIHskDy4CAHAsMIQ8ytvDXJtz+KbCooD9UgNk2x8Y5BLn6g3Fa7/qdu85I93bq773XYELCud7A5AG4gCSS5ZAMuqzYh8D/A7sHFR+4xAVMMts5UvXpwShO++FYlgddsPKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696034; c=relaxed/simple;
	bh=kJ51dR/IXAHZufEs51JkBBcMvjm0Dai3oTxJrAxeIEY=;
	h=To:Subject:From:Message-Id:Date; b=Fn6l5GfqMKJOwSe682RQ/lzBkHiBc8+n9S8I892MdB0jn45+TjHD5CUlF2B0CcZs3C+eAVNTEba+I55sqC0LpRdxlZh8E9j3FgQKfYsOCbQI/FOpEkDawoULKO0IihuOmVNx46G4rpRRAVtn5gM9vkxbiWFFaZjjyF2Mrnc4F3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/501jjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/501jjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B56C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696033;
	bh=kJ51dR/IXAHZufEs51JkBBcMvjm0Dai3oTxJrAxeIEY=;
	h=To:Subject:From:Date:From;
	b=G/501jjO37iWIr8EW6z1M24yFmlzecdEkKW2ifZfU8F13ia7y49eCHsdqHgS1k/2+
	 x47wBQguPus6hRu1Lbg92scdcRLoqmQs1o4hUtnZqDWV1/RoVRGjiJUD3TM9qLghdl
	 5Vry7w1f150DZDjMMhm+jXk0BbJ7pzJqkSaciqFljSw1D22clclHxf/cj+6hbmV6VX
	 J53KiU1eppJtv1J4zlcAz8jB2SACabYWZKlEjTrASKv3CzpAc+XoyYvkn8sqpui55l
	 tPGatSbhuj+d4JW17P5JAXpkNMgucI7VuRfwI/CWUiOHsgvgQac0IifRr9PMwSu5fO
	 Lr+xgNU5X9m1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F028E7AD6C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669603359.20694.6297321481849549592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0c7f733bc7cf8ced67e0b379208dfd7de5a7ea19c02740d36bc8ee1a276939
Date: Thu, 25 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766696033
