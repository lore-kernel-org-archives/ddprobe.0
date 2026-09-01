Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE22459AC4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788300034; cv=none; b=sTYc1gofhBS998tyygVnDWElVRDtHO0GXJOID/9epdlAanY+m9miXL9RnRIaNZ+5KOKgqoFeWxtalrdYqjvJ3F99fT8QPuGZbzlXUCJtpYS5HbuO3ZsnnzvwhDtpXq7XWuq3dlYht4SggSGoVYetby6lQQNpNoIXtIMZaWmHeB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788300034; c=relaxed/simple;
	bh=dC68pSieEHcD1VeFsUGCaNq0Cyaqd7+SI8QHOJZ3i9Y=;
	h=To:Subject:From:Message-Id:Date; b=BYsQj1WjG3kmKhho3Ojsmk+Oz5trHcuNgsKfxqzGskrH8zVzAc7ysQCa4hR3dbgkfqKPhLkYMrPcdeWNDqVXravnlI/CaePN2qjZpE/oyYCIvYxWTsOegETqt9cm6lDzv6UKx9Amd1hJZWLYHySywv1zNo7Yc/EYgiwD/X+nqgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYsgFNKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYsgFNKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08E2C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788300033;
	bh=dC68pSieEHcD1VeFsUGCaNq0Cyaqd7+SI8QHOJZ3i9Y=;
	h=To:Subject:From:Date:From;
	b=CYsgFNKR6Hu7Gn1PrKWHtEo1gO/wWXrcBVpd6dqhS/vqfzFupq5Vt/BN0nG/NX5qC
	 klskHN62fXz49PORTIvdRnNbZqa2IplM2K0HwJIiWc2tuY21ImIU7TpX08VI9hbmmB
	 RAP3mmNfIjhjQj54pyib9cY1uTUbWfv8dM/4CPXDNgDUaW+DswA7S5dOqjY6XdPwLm
	 Q2ZGpupm1GSIHlSRHHp4f+wzk6iJpJ2WHWb86qnT+DBCykr0EyrTo3//tmI9hX7Z6J
	 LAmh7tEZIt/maUquGC4vH1xmMInWGdLMLG9xLejfTXA9cXjsUebXLOBYnX73xsz9XK
	 RH3X27ch0cEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B4C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830003368.6460.16924173024957888336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f1b1a534aeee17e8d0568fff76357b2892f14d858de69048f44815082c0b6b
Date: Tue, 01 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788300033
