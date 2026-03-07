Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD862C11E9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772921094; cv=none; b=gg0Na2zNwaxTfYnRTn5eOndhHn9vyrB4R9O8XdfPxvbCAIvkmww1iWUggnxPHTo9Ps6OEotPwZONb087rNcXnKix+eIF37aQzC+cmkVT/PSpRjHAXZcz5spB9woVL87iK7xFooyhc21Poq/1ViE+LgF8udCxX55X84OpPXXghvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772921094; c=relaxed/simple;
	bh=uvqelXTME3EU8/bg0mwSjKIW96Ja0I/mE3j9mk0a1hs=;
	h=To:Subject:From:Message-Id:Date; b=JddWJIr7fp6izZe9Ohe7w0MnrPY618H0R6z7GxQd180NMnnpqVDwRNHp/3WpdyQrUEGKXZT/3DOjWMQ4+n+1aUyzaY+DsgCulLHwzwUY4KOexd6mPjMp84F1dhjhxCgI/SmVI4ezQa79xQDsAo1p+fT+v94SjCC/ZGiOxdNTqA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6lgMkAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6lgMkAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05B3C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772921093;
	bh=uvqelXTME3EU8/bg0mwSjKIW96Ja0I/mE3j9mk0a1hs=;
	h=To:Subject:From:Date:From;
	b=A6lgMkAqh9AUS1Lydyh5fChkWxJIj/t5M5kK/gANsI4I/NvfdlG2w9/Kf7LQqoG6n
	 Vn1KkZHsKIisonV4VY7JkkKleaEQxttaRK1bp4Z9QbyfcDVkIXhCxaMTKM6tAstmUM
	 AuR/IDGfOLXIkk6M5lOdimfq71pYCpv2KwckbAivFOlPV49S5x6qsZL8nu5d1hdfsb
	 I38p6fxlLI2569MpWMcv0jSeKHsD1zyyuiJilMqnhguq8WE/Zf7rGQo0J+wz6X2DrM
	 cli+JwzqjfyNth/CMud+5GaDcNOg9rUXV3DMuHYvDG0ARiQBKJVRQMMixGRoVQ2ItU
	 EXH4jbfEBOgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E521F5510B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292109357.12289.4086593158158676925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d22ee16a4096455340fdf9489ac59587e5da00d890cf155fbba2592bcd5041
Date: Sat, 07 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772921093
