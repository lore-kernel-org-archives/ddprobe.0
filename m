Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103B62556E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750250994; cv=none; b=RJr+3JemEjdtO6EFZMfOf1KudDH8IftQxiSVN6+0an3RkbCPXnNwm5Kbja3ksXktElyHaRKT0fgb5Jm+GRAp4VkzNLvjIBOhq+lLomPCt/rOf2+uaWXLFRnwSrI4icJpcX5Iiaf9O+eLjgKHQScT78boLJyyHQfnV0PsUQT25to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750250994; c=relaxed/simple;
	bh=yp63+rMpnWn6PSszLk8WMm1zJxZci/eFLKmID55T8S4=;
	h=To:Subject:From:Message-Id:Date; b=J8LQaonQ+WtzpQLZaPdQlCinFs8ytiGrL4on9ueEIng8Ats6q24rvYnjAy0iaeDFbnuVCS1zGzjk10Di96Qdzrha9z7XMxBgiLClxpYRYeI85l5GIhswVj1lZK2wa3Z9pFDgzAUV5SzXNawkyxFv5i8QbeI6pKx8RGuOrJbM45I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj3aG8kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj3aG8kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7815C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750250993;
	bh=yp63+rMpnWn6PSszLk8WMm1zJxZci/eFLKmID55T8S4=;
	h=To:Subject:From:Date:From;
	b=Sj3aG8kb4VvIMFqjJlevEow+YHU+ZXGW3Z23hExoGvvTqBEaW9+hfDBfvrmSiXBzE
	 jovIFtIpZNtU2AJuuyMJYkDAx/hwsPj8SGrIzRVi/Mh+jfnoZ1hzyVt//nDdN7VO+E
	 6rjUGaUhTBPzAUHFw7QqmzLqmdnsNY4XSS1nfZAKMHuEDXK6/BTCNFZULCbzIkki0u
	 VyqpVec4o1itFZYEumvchhiroHa3mY90QwawmUulZpR0nLtFZ5WD0gHd7z8OX87357
	 odi3pK9uRNS1KVFQFUF/I9DOZR7/XRkWFm846TZzJtKX77bjaMe5hTRM9NmuxqYYZW
	 UykY2pHMHiEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DFC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025099358.24975.15275792793846884204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddeb4cf51ee4ca0abc56408e8afb9e71a21a6711af0d91e09afdf7edc710ebe
Date: Wed, 18 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750250993
