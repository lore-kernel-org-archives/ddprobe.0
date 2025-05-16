Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBD242AA3
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747427994; cv=none; b=g0TLY+NwB7x3YmPDbBlQBDKqshnweuIKLAWeqaxREfgmhDAvLg3pkGNhAD4P98CWaBvhPrQzFXx3K86bJSAaaNnIkQ2JXxIRztyRdpen2l9wQPn3VW4HaJc0xDWBHgy8lEC7vEulP01Wz2sbe82gN0tx9IM/Y+szF77qNyq7fwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747427994; c=relaxed/simple;
	bh=jLrvFDPRAa4moW8R633hX6TmQTa6tAd0OKNXQTpMnAs=;
	h=To:Subject:From:Message-Id:Date; b=koIlap7Rws+dbYwHY4ezp90GgetqhGDBHdv4kflP101xEYa6Q2Mc6jQcgws8uomEvy6oUmVO6eojoyylpAEqvgBB+2QdO18eZXk1C7krdnfJIfAgAMD6mfasShDD7jUdn/18mK2m2rfMdJditIwlZz6V8vIIgawGzQWGPJYs9w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STu7Mxaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STu7Mxaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747427993;
	bh=jLrvFDPRAa4moW8R633hX6TmQTa6tAd0OKNXQTpMnAs=;
	h=To:Subject:From:Date:From;
	b=STu7MxawTzs3IJBiuqrFOjh/WQhqFGPpwUz9QGX8VGsvX72MamzWY87oHL8/tWCQq
	 kzpFhwzK3yDg/VXtrJMDbQg5Sx5fkUdQWJa765QrYhG6brQYCknFNvfV3vyxTPyCL1
	 yi2U2xm7ZUCmrPGLV47P7QMgMMR/wNRbL4XoCYFDKMzVFGH3opTZGuzKj1x2EasfF5
	 OR5ipRMy8wRX8MYsjrSYjFjk0yURuV7Kb/7o0ivHLt6E/ZNOINiQbtsNhSF+jzLcLO
	 FMLbbb3l7QV5bCm+MrdD1DOVM+bLdsNYx0ksP/Ztd57cwN6HYWyTQ1/hl+iSgAaO8e
	 EY/DVuEAisvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C8C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742799358.18745.5573685533673531209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98239b56b2782b4b0b940c7af2c5fc0abe2f50243cec404a1ce509d23107109
Date: Fri, 16 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747427993
