Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442C236B90F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787642434; cv=none; b=YgV9JkgXxV9SE7tnnLUQ7LCivPKf4bTuW1Pd0JwxnEzUaAQKayyOcEie1cmRvj5PS8BlcR5Lw7BWmkj3sNFNTpmmdOJhW3qtAT37bHTdN8Z9d857DjDOwUzXZhYbdq0AXI8av7D7lvDN26DLxw9c0Mo71u/pkGLnx4Vpe4HDyTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787642434; c=relaxed/simple;
	bh=iGGyJxZQrAkJrzsXW+vYPwSR3Rz8aMPge3NgmvThUIA=;
	h=To:Subject:From:Message-Id:Date; b=Otb0hyTAL+6SiJsN9ZRYEW9oxP92VzaZU/x79lO9kNxrfEc7op9v0dIsn9qiMOxpPvMgW2yRaidlvoUb8hkXnJWrVung0ApFaLa2paHrOV/Y50hCgPU0QUVIzqhTdNG1YGmXWRrJHTkHAvseryBcKlOW2ocmjo27SLZkqSV7BiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqu3ulJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqu3ulJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF26CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787642433;
	bh=iGGyJxZQrAkJrzsXW+vYPwSR3Rz8aMPge3NgmvThUIA=;
	h=To:Subject:From:Date:From;
	b=Dqu3ulJ6uKeCd9cKtZuAzppPZdNe9OD193z9skmSsAJ4VQbyrcMI0IvO3SS1LsfPv
	 MV9M92Bb0H9XVgPpK4SugWH4TJ9GsQxrB1LEQeQzVcRj2ZMLKlkvcmuwCzWtvIQnUo
	 gJNnh2EtqYgxvBSC7isE9D/3amrxnJp+xUtNSTINLnBklmXWN7Dn2RIFJq7obrturW
	 rqspE5gqIfLrqDX8ruaSyc3bfSbnz+dVX9ohXaaMAMCv+7ItWQkyBr7Iy3O/qnWt70
	 oGiIOP9440By6hMY6kf8xcHT6R/GhLTSSzkkRn/3CcAQY6+aQtCE2DQ1wtI7qj7QTC
	 dVvZv16Ui5UCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7AAC5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764243369.3655.6633183552767706782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5178eed1eb0df59dd10cf373e427c50ee4237c911f79b6a1d49796bf105b057f
Date: Tue, 25 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787642433
