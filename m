Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA723BADB4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783589914; cv=none; b=XhN97ujxB33fgSumuFvDBUUldYuHNvOcQNWACOwkdXmYhBXL8tUsGF4jtDPFfkJyMwq8uJx/2jTKwyoES+xKLCeRp2/1+FFobw8y4WXNwouj+HaUsOZ6eVTbyUitM3vbjNj+R1Cjn2qTG1LNoYFEZoi3hVi0Yx3lrcuAnHKoG7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783589914; c=relaxed/simple;
	bh=qYjoIDpnhCVfNLNgskpGULgCSOtrSoyFseAFU8vJvtY=;
	h=To:Subject:From:Message-Id:Date; b=SsSHzd73bBf3z9WJkIkCR+1k8shFXg/RxGOCZGvUGMUy2hSUaA6BT7rzC9Ecool7R8B94vKxgGPcYd5b+nXAxZHj9JlCYMCFUnGp6X1EQbLgqovEjEhS5u//N0Wyzb2RaUQjtebmyP4DDEm4Ou9RTmO/29ns3eGZzE4kgeZaGsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjtsbkVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjtsbkVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1FBC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783589913;
	bh=qYjoIDpnhCVfNLNgskpGULgCSOtrSoyFseAFU8vJvtY=;
	h=To:Subject:From:Date:From;
	b=bjtsbkVM9fhVQAly9kz46KxTz4sgePkW9ga9i1DUhuNcxZh5b9iO4eOHrHaK7L8tK
	 8uhnmJwAmYYC68hF1CWjs4AoAPVbH91cNPP+udE+U6XMm/t7vrDHpdVNtPm+dC7/TF
	 U+ki+pBac3JeCrOITJ+ShneGa6zqtmnhf4fg8vWXOCZtVoBOGw6GEvrNPKhfruTnDa
	 e3zOv3x40dd31LMkfQ68yJ4deIa4gYkhrL9DUGrKsRMGjm0Z2hb2APtZLk+RaarjhR
	 2/RdXsDvThOo6fgjK5o+iyHH92rPcWfvjuoruH9xTgUeAU5xaCtjMnmJJ9dIvKDzzs
	 nNF+jFbZU3CDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DE0C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358991368.21911.6731442663891178829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b47109e0f1532550a4ed51058b8f9294dedbf3764a30ff07cc5892195bb5965
Date: Thu, 09 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783589913
