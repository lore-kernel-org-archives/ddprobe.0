Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E01D88A4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756941594; cv=none; b=GPjEAwthS8zmAkEPwUpXw2bfYvRocmeB4WckAwualRofFsHmMxTYOBXKGLghfFfnr9G4JXadLFoOEVLGuvSU83MhkzwPVotOcYJf5qW7FMSrJnUi808OjV/mVL48tL/KXbaeExVRS3Y9PMCRDfKS0K+U6zCZNioFE5eGw3VEMUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756941594; c=relaxed/simple;
	bh=rqn0YBpY7wBIRG8CWVZ2HfYpM4bO16tIPA/31e1pt1c=;
	h=To:Subject:From:Message-Id:Date; b=VPL+DCRYzvrL6cWxwvdu8QZmMJY7iXA8/yU4fwegP+yWdVqaLyS2mFhyI2Nwl8kSVfG3CplWguWwaluiLCHunlOEheR+IsK55wqIiZ9jNnqNcuMECeS8Q9m2qI3tG5E5ujf5U+lsEHWEeufxpMzloTiRmyoM2CzXRSeigych/8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2xPBOtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2xPBOtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756941593;
	bh=rqn0YBpY7wBIRG8CWVZ2HfYpM4bO16tIPA/31e1pt1c=;
	h=To:Subject:From:Date:From;
	b=B2xPBOtUnCHlczxUjSoDAyuT4EjgwVOqfUWWNDt3A+j9IEwPAR06Yl1Y0t1p1ziNP
	 3axgOsJw8OtCHHJxZv0j0fpOF4PfPcc1qe+dieoc54VHTghHB5rIDiXBORsmSDjkx9
	 9HMQrN8oWPx1mhe8I8d17BjmJ1KBRzQsiVxR7Pz1N81Jc4KbESG72xwIElBGtG3lAl
	 ScHC9kVbR9xpvr8xaKddWTjclti5EANWoVdRp4dsyYB+V/Z0dWB2fmmQ8IgrfJ7Lxc
	 BOf4sfINgRdbaKXLUOn1Zg8/O670rpCxPzS2Sa5kXQ+dHsW86eABmRd3vVKHpjU8TI
	 KlNoa3+XF/i/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F1CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694159357.23648.3345403143741435133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55eb286382781768d2a03f794d8c416fd1b79748cca3494cecf8f9390d8ecd9f
Date: Wed, 03 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756941593
