Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8A13845D0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783711114; cv=none; b=kjJKxacW/UdrCh80vBBj52EdR96dlBnmE+cleq7chMQJd3L3HGviQ8rbOmgxhAXsqDJeTCFrUC8KG6KbBDdjjmGrveXQYxSe7Wz4bcRBgIJbbGfVwACNnkmctjvfDGwhbXmvfZTHMIeBP51vgupPJS7Y2syVMsZtQyQ0M/r/pF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783711114; c=relaxed/simple;
	bh=CIBRIEQlXpEeoGSBM/bCVMo3DYzvfh9IGQqA/TkC3A0=;
	h=To:Subject:From:Message-Id:Date; b=Gia3rmVHuuTu0T8V6xtPmN8cMPgQTRrFPKP9AxA5F0WzE0gN/l02AnE2uZ73yQGGSKcGdGOFjAyMNqhryVOyQ8TO+ifj4n1Oly08t90vA1VX0rP1YYCP3p7D+53iDzEAQOg1SPL2R43O0W08AGJu8sMK5n1U5k2WAKXekWrLNrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQp1Lg8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQp1Lg8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA931C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783711113;
	bh=CIBRIEQlXpEeoGSBM/bCVMo3DYzvfh9IGQqA/TkC3A0=;
	h=To:Subject:From:Date:From;
	b=LQp1Lg8qLo0gXshr1bKIQTmO5HOu1eZAJhsB/IGHeMX9km5oLs5AcF9qkfkds1Shs
	 QtHeLUcS0OSZkuB8As9o+opOouQrxsg3H9sUSM4AmM0GQZVaMtR+5P+MxR9g0SH/Qn
	 vYC6iqXXMXXYHtCDGE3eZdYzUZIjP28wp7S6uTykr8hzPLXWALG+V+oHnl73iCjrg3
	 YhZNj1hCAHU+dQCrIYAs6ZtR0WG3eZk/8G7TfL+WbaZeR1rHiDKULrKfMVu6F5/xXV
	 QWaWZyvf34dFPCVWfG79APbYrkygfQf1ZkhErd4OMbh0Nynh8K4W7wBL83n8wel6/l
	 MteOplPKUl8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E0C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371111368.17603.14671056313183557118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e11e7d095906484b6eb213931cb7a3ec881d0665eb42d7535db0051ab3cd40e
Date: Fri, 10 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783711113
