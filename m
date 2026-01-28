Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C886D2C1598
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769582633; cv=none; b=t0iSklpdS6Ilmokg7MvB0et9fFXJvmgb4Psm6EYGJvN3be3yaCv6GlKyPNyhEzsDZ6qVFDhQ5msddCSdcAEayccxdJWdgQrC3ioDlsER6iEAO6n2DTXSyUIdskQlzlokSYuuXYXtF4ypC4hMuN1RPcXOSbd361pRHg/4r8zDJDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769582633; c=relaxed/simple;
	bh=llTlgvdpcySpv33gcrhthQvcyC7LR1rLYlztnCtm62w=;
	h=To:Subject:From:Message-Id:Date; b=bs+VsojueY7qdZDBIyuVmFo4dQ2EjpCvg819PawOizGA4NCA4bzkA46d92gKvfnajtCvS5PjiKWvnB2iGcGYWsxE8g9dFPQz56f755oBD//k5qavlRwz3GXvUavx3eC9AwtYjBHUOBGWyYw9TsjWytLjNbRAsnbZvj/lNMx6j+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok7WcjTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok7WcjTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8F8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769582633;
	bh=llTlgvdpcySpv33gcrhthQvcyC7LR1rLYlztnCtm62w=;
	h=To:Subject:From:Date:From;
	b=Ok7WcjTawEOCe34JG7gSk52Zn0rW2oqU+WLkKaBnZzNs0GmmUgWOEqPqsoqXBZKm6
	 59bmvJ7h4imHYgqrijnIliq/wCx1GkUwPhe94ygmECTedw0R1CQ9M1X7LtKevLcwx9
	 3zwVi80xD6CP3LfMUOuY/DV+lVy1XLbkWqarDnRtfqk1BExFuytb69EeUTPYP1OseS
	 reO1cVgdcZ6g+BdcgbDuMrBN1jv8hxcZnQ3jRLdTIeUiJK7GG5gimK1ilepNvZvKGm
	 KB502T8Atx2wi0XppXDtwbFgOeCTeDzGqtHd7Bi3vK1ZhF9+F4R6AGoaZ0rL1nEdTe
	 UJZzuVSBZX2lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99943D35686
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958263359.24382.5997700411443265233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75f04862bd2062434a571583d910a22ea37e6c2b7157023cb768a0b26d09564
Date: Wed, 28 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769582633
