Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F357274B44
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999794; cv=none; b=b0AscQI1W1nW9gBvc1sFAHiMKjnfeRqfUrY0+k8P1F6d7cTD0388I++TNe5651pEjHVzxH1cRFxrTBkZDsPOk2WXuAginPwSBBI4vGOR0LyNCkmUMHo6Tjq5TQ4f5EzsNABoRUewPCl+z4jojTH+eU0XmoQr0fNVGs60X+cu7OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999794; c=relaxed/simple;
	bh=H6cmMFRPp2v3C5vYAKP3G0mUbBlLiBu/2bJMqo+PxX4=;
	h=To:Subject:From:Message-Id:Date; b=IexBOGw8lmOiEIHYtgjnyo5VRAheCUQyc9872aoeUbf7M2XUIDuhC/2BVvL3jvZW88HOTniLmiF8PuzCZET6ZZh16UnJXj8OsnBI0SVzcEmW8A3x5iOnTfwHTp6skG5YraOSADKqKwpCqEXH8EW8+0fa+1+5j/x8CoZ01cvf0u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okzTyaup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okzTyaup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9A3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759999793;
	bh=H6cmMFRPp2v3C5vYAKP3G0mUbBlLiBu/2bJMqo+PxX4=;
	h=To:Subject:From:Date:From;
	b=okzTyaupPDAvzqafh3BFvz59K/mpiPuGzOLnqTEEktBlVsLE/Wvh8UFtJEZo6Swz4
	 /f25ZNENrsyE7ZPnQtosQYIkjA5nar5UK2W0s60mQXgP2URXJNk05yQbwEZbwOhlqf
	 2WcYX4mZ0Y/f5iXlA3Bw3VA6ls39xCS6oB6UylP5atAbMiHrtrJmWPmwPif65Fmd/6
	 NGDrWlIlaank/9bmn+MAPRQygsIwXK+LVRChGCG/led12PwsyiX1OaY0L1hsY/IxJ5
	 GaFoMZUzewhE2npGHekomvkxP+pSSQVEXPHHBJSKBB6LPBTd9z7T9aB5Gk9yjxGoab
	 fUTbrgY4cn4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AACCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999979359.30279.11278173202957618000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e2590116049ac4ff808bc3870cc133a7aba746071166421421074bfbd1c02d
Date: Thu, 09 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759999793
