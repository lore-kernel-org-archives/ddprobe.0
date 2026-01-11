Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221F5125A0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768107834; cv=none; b=CtE3v37mm/Ak22UhplF8mEvcHV/8vqpf96oNtNjItsBDV3l3nZkD9VG4xS4r0BI12idTg8EcgVute2XKWkmUYFACfLWZP3S0z298W+GbJhxJ12LiXD55Gs9l+exnWYKW1B6yXRkXjzLbnedqgbUn6P1N88Gvw0pOkxU32UlnH8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768107834; c=relaxed/simple;
	bh=O37HXsgS+pOnmyjorfNLO1ScfhT0KTSYbz7lh7MjyqI=;
	h=To:Subject:From:Message-Id:Date; b=F+9mfokyQnRuQpKXkeceTHWTUlTE3YO2qt744ehWgJDx0j/edEGcJpZZ0Ty2pYSOiRGxcGLLHTb5y1WMrIHd0A8P7kyDJkCSAm/zFOR/Iul/J/jFIlDe5Zg0x4HgQ9yUb9WPLB0VmZxd/qcOUhnoByxI5KT+6w3d6xymipWdfa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZH18Ywk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZH18Ywk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768107833;
	bh=O37HXsgS+pOnmyjorfNLO1ScfhT0KTSYbz7lh7MjyqI=;
	h=To:Subject:From:Date:From;
	b=mZH18YwkzT2Eg2m/HuWrNZpEj0+U2FRCJfiXgBipvo4PNbTEwdIVb1G7j48obwWSQ
	 6O8Y6Qn/8CIWdQ/IFWbpSEl6IwwlDvPSuNsaFKsrYtc4C3e4PvtetX4J6u8FiwWxzL
	 USpncAXQcZiLl5usOLsJ3dcPvy7tVd2Kt35ZLgsnWgO7xN1XoNVDJetWl++YT9Ok40
	 1XXKWEu5RRIets7TIdMU2fYqhP9EOWVgRDSz+vDGzAIepjdmd2tXt0M5EQQJ6Nu86D
	 0GuFhgw2wvqv9J85ni2dfZHgNjGITotYE6/RJ0h8xVYhTIRIONhq0I6VFfb90I43hB
	 FNFPsEoamXVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94305D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810783357.29610.9736824080902094488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ed69fd044dd53570e2e4b15b6565bc4f16849132d8fc7df94b8576ddd3b71a
Date: Sun, 11 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768107833
