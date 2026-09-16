Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602583B443F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789546834; cv=none; b=p4iwr7tzYX+a3doG02nvmERJOrPTmekCCgfq+WUIjbi0o8fiUhmPjzUGiWI2qmZ8c8gL01XXcyf3L0ycjbqtEP2X898WUT2vzzIULQ1k639+4RVhU+4hb2BV1hOhK3Kt+GH6lY//k4A/Y2xQ3SkAyxXR6gmsfQF8Dm4ZHS5Qc+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789546834; c=relaxed/simple;
	bh=EUEWFe/zX5R/FV4EnJXcvQVhckjO7hs0vmEcRcXHp8Y=;
	h=To:Subject:From:Message-Id:Date; b=jtDhZAPEvGsEf+dyQ6TNcudSQGv18AOYm9NzZn9RgWdo4MckKk5JTib3FqC3h18rHljRCeG4yxpg+xiUL+wSlNzKq2iYOaLzSUYDl93urW7TwzbPbossW2PSVpfMsI+NxCYz8VPhfmPUCVI6K3T4ixPVxGqdy9fckM3Kfrpenl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I35Jo1ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I35Jo1ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD02CC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789546833;
	bh=EUEWFe/zX5R/FV4EnJXcvQVhckjO7hs0vmEcRcXHp8Y=;
	h=To:Subject:From:Date:From;
	b=I35Jo1ewxfKWvaoh83q5tuG/r+NSWHZfKFVA94rzt6XEvJXYRHa9R7qIt0JuZRoIS
	 gBQ8YZdeihYMhoX25HBCC9Dy7Vst5lcXkIRSWb+UWh4U0BPJJT6V4Y+lPifwXXBamw
	 Pm8qWLhmK9RS/7grDFLBJok3EROIiFF0yscYFS9zlv0XtfOzjoJXDxyws7OVXE/Mir
	 mGTQt9cKJSARMHSf98K2OZ3P4fDIsPaAP3Nt1cAyWaYF9MJKvEB9sAkx8iy67es9Vi
	 STw21oz7FA72BZl0ouZWeGU9Y99KIX16ghSOH71m0uuedDp63rWQhz5CcfKB5XWvL0
	 EjhNAVgZ0PCuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59D8C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954683371.12311.13612467428416988983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8242a669cf9a2c1bb60995923bbfa3ee38d2a5732d9aceb2d16b45bd91efbf6
Date: Wed, 16 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789546833
