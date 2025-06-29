Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1C12B71
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751174994; cv=none; b=eXmx2WnJXupZrwE0AAw/XiLpmouqZwzAPrzkvWPlVGmY4cKlNh4WNdFyvfPTzc6p0TDsGzTYWZd5b2m/rwYBPdJswStnkgte2Zs7wDZ0Y0/HND+F+fgbrLAHEUPzR4Hsl2CYD2Orx6hwa5yJUVKoXwNT6l0c3dkBYMGrToOVC9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751174994; c=relaxed/simple;
	bh=tbKGxsW47CK002P6FJh6TnQ27ohe2d5Vd5OxmTv1gGY=;
	h=To:Subject:From:Message-Id:Date; b=tcGT9jDymNDrTJqPh+FrijDcC3vZECvzAqLBHVXvKBaoetJn6wcPSFZtWy6ofunDd6y+igC1y588sQ/TjADpargpznegHoyriivhZsYQ0Wk28vAFNk7H2Z8x1/rENF51OP+FMhzKj4621e7nIhtEj7pX5bFPgcNNr1jiPxnlHn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYQwUBO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYQwUBO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751174993;
	bh=tbKGxsW47CK002P6FJh6TnQ27ohe2d5Vd5OxmTv1gGY=;
	h=To:Subject:From:Date:From;
	b=ZYQwUBO0NdwSe8fDmaDoB0Q4BDJv65F0W+liSElbncigW8jbHnx/uP3tJ7/BiYCG/
	 TXe42+SSAK5BfrlbpvN9keyrfHSmmqMg6Y6qlktg3sCsjlBR6Jid/Mw0eNKCgoj9OV
	 3RZ1txjwyoiMPQQ8Id1Wz8waGO+kF663CFISCqXnywLIHpLnpEoF1oxToO727iJ2Bx
	 zDJapEfS+MsLbBInoWJSmOtr9WojTlN9Vudd0P0mFDCa9LWjxXD997jVqEaLi1uoAZ
	 5O653a3M0wUEJqDa58/OTRg4EJYfZD+uUEvGajODjKHEc8zU3cAk5zHGKcqqIsyQnF
	 ieJBzW265v/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CEC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117499357.20068.16257589357973058595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5b703ce2e093da722c81268116c5c6e41322d473e9a23075fbf33bd18db31d
Date: Sun, 29 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751174993
