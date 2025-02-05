Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B5828399
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738735554; cv=none; b=f7A6cjEWrgk0sFAVXfawyQWAyi3DW1IW4qlL6Cmdpcvu3Getr5RS5buu2hJoNWWMwnvEcLfexfJZ8K2SiAexI2kO2N4eWQod6MfQo8x4ekiE2jBfeSs4uFcyaFuml6FRjSkUmxb0379LiXD5rcdck1HRuKJN0TKvz0zHKdpMap0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738735554; c=relaxed/simple;
	bh=0ahtfcH5Dmu5QphpmKM4LnGmufeMvCO4R9DBxISmE3g=;
	h=To:Subject:From:Message-Id:Date; b=dDiiF7jrlYsijIPIVT+IoBsxAEMZhWeIaRnojvOkfJ9Yyf4fbyq7gAjBTKgESlca5ShvIUp4I54P7rKLHM+THVpACv9N1Uyn8NLpiKj78HAZkoCq2SchmPOA/ZyDhuVL83rC/hJeoOUgLttCC/7IsA3xP0y1cI2CJmAgbX0I5b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HriMeAk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HriMeAk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E71C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738735553;
	bh=0ahtfcH5Dmu5QphpmKM4LnGmufeMvCO4R9DBxISmE3g=;
	h=To:Subject:From:Date:From;
	b=HriMeAk8/do8RPSbJCU38cIrkpefaENONgV1ez9JpuVw82dhzU6zHxMBU2NyPadJ6
	 p+v4Zj4gByGg6X/f6cr4TS4UgbjEf8Oba4a2jtgA0VbAPbU1X2kValtqON0OoQA0Vu
	 FeFwJhzRAvJqcB9RAxZvHztlZEEbeC5HxaJSGXeCYequDnjxUglPzENrYeugOlNgIe
	 9kB0lFK6YZ0/4r48NFPKP2SMo9fDA3oaxvRRe+Ix3uqduytsBmz9Pp5kNWwTWBUB5K
	 by9W2N2uHHytTq+ftfQzbGj/t/IG80/ce2kdsh9luaicKVlg9IXMMclc8158XzlGg/
	 6rDHm4/32t46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10FCC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873555365.27844.1706837222166079326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5149ab474503650d728c9c47211ad379212a93fcade2ebed87cfe76fc6dca3b2
Date: Wed, 05 Feb 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738735553
