Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC92C8FF
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731117354; cv=none; b=JSHXySui+M1tUbxUQIY5zXfLHSgvYyYgPAQhQXO3lQVFYAzrA3/b9Ye/4odg/uF3GstKX1YeDds5rMzcUVu+rzaxCyHJR266kvF0Kb558Rol/C8bAwsBwFr+WJSmXts364Mw5b2wejIfi/H21xCE9Wh0dbzp+d766CRnGHxB9PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731117354; c=relaxed/simple;
	bh=NhSdOhoRgQJagF7tt70mGUIKTAfUAINsO2f0cs1M4og=;
	h=To:Subject:From:Message-Id:Date; b=DruUCUjpOpXALd5ePyEMxsvYmMBRRvKxQuIj8eTJny4lwY6flan76rygE230/aqQRNQmNHPkciy1bxJOXvp7qYSpgWb/soM6HynLmsEnSM+f/YiI8vOb+uUxZAk5HwzMoJFyc/eVXkdcwZSbYpRsBU1BCLy/Y3Ng7aAfoQSKMp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzz51kR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzz51kR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F5C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731117353;
	bh=NhSdOhoRgQJagF7tt70mGUIKTAfUAINsO2f0cs1M4og=;
	h=To:Subject:From:Date:From;
	b=mzz51kR2mUm+qHvb2vcwo96u90n6msP/o4otSk6PH+JlmIUFBzGPpRGv8lN10nax1
	 EZoDXZGWp1Ps25v3CJHcmmynTmY+gfNqAnb2sLYQ9pkdPsSnOrsHAVrTBbmc+37uNJ
	 DBPkQlyr00Je3Pj548KXKCXkUHx/dQwm5oP3BcPuhuWdhVGOe3r3HPiYfPLKTEbaF4
	 lPx9uloq2OFCIkYCLSeWFF5up06qLFqJN7B6ESj1MKPKcq8TNQ5xv9ohn6wM28ZKFm
	 doEM9lROWgQ1+IbPOcdKOmNPeUOTNMHo2+dsTSXCie9qT5iKFc35dC2QTrSiqx27yG
	 RCfKrKlw5MwEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99184D64099
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173111735359.6927.14320252378425829679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cbc2e3a89d0b0041dc6a269360f3436d924a17c41f40a6ac9d17658aeea357
Date: Sat, 09 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731117353
