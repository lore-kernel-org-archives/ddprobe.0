Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B0C946A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779585754; cv=none; b=io7MLYBYj0J1dJ+l/VTxlKElNeuKKJQgkMpLuubtb2rrc9AR16GuoGAQsDVHUMQM5+Yk6/Eb9ZSJVcYlflsSZ0qDHcMEcJ4HT44tz1eCSFQ29U8CkgLUv9ISxYDha/YJ7A0Fhj4mFX7fm2nvZW06q2+UZe2XVSSYGMbqkGz7Gz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779585754; c=relaxed/simple;
	bh=GWi4bVaLJzLv6bIeDC8G7PkaUJwZ/2Awt6dZK3lBFyY=;
	h=To:Subject:From:Message-Id:Date; b=jEiE4tGTXdqEdpLHDZzfWL6rI2peSfwGAtmIPW6Eoiwq4vKIvE45nWsdZEqOQNV/aB6kYx24hl0E9wHFtdYsGk/Lqk8EiMvZlRK8JZ78/lXMzQFxLslxvN0WOnF66vwdujZvCzv8RRG7Y/5s/ctEPMmev89A9WRYNbfQQhNxFzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXPr6UTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXPr6UTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB99AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779585753;
	bh=GWi4bVaLJzLv6bIeDC8G7PkaUJwZ/2Awt6dZK3lBFyY=;
	h=To:Subject:From:Date:From;
	b=RXPr6UTkXHQzIjs3hPH1+IHxNwWe2x2OI17DBK5IEFOmwgwGagOgjdnM0yZo0ygDM
	 vsrGugTBf+SVz+fBdTXPGraWTPPtyerPjTdZH+CvPdSCQ/s17ZKq27cG/n47K1NeeG
	 9l8jsZvVJbS3DlF1xtMm71C+yevi7Chw8uBiBApib9Q3KOqNpWfOM78nAOApJQpyar
	 cVRO31b4gEWQ11M0QIoiOb2AW9ZmTohFUrAOl0Nu8wWqrWHAaqEId+JzdFd26zf9dz
	 jVLBR9bUJrpfllyZ7y7qMYadWegGtoSmkrHkt6eIeUUxN2xSSvGDEbyqb3ClKB4gSN
	 uealWMP+q4Xiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE512CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958575368.24557.7208120205644095562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09973b2edc81774f88caa3cb97f61bf421937157ad1870b3d319b18dac1b096f
Date: Sun, 24 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779585753
