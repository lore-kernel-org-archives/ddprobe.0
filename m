Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEDE22F388
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791439834; cv=none; b=ia0PCHGSlqKqeL4dWIKlRDRq54OxSjc+Livx29oWxAfXsDWT/ShXKEwbmObol0F6GBZPxjPGz50loTzc3MdsVNCriZnO919/iDxdYGMVTQmF/t0ZkL/5s1B7FHaWbQKJHEZWxIjHTgLVOUj5TDagldUxcNbrpSRw9xvUD5X7wKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791439834; c=relaxed/simple;
	bh=8v5uSCZpzG6iWI679LWRBh04wGYIoLe+IbohYsIYB4k=;
	h=To:Subject:From:Message-Id:Date; b=d67TPlCMQDwKiB40xAv6vlATYM1ywAf1hGOInVU5EklCZuHoP3XLUiMPJWD/ieixjFMvl748/1geYGhQIULr/pLhhueL5hsJzW7JMky8fREdtUHtE32N2kCC5s7mIcQWGqkmJBX+pfdMCFKM9CkkUdMMMntNwAaDwr1uNNyY13c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuBJhCGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuBJhCGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4772C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791439833;
	bh=8v5uSCZpzG6iWI679LWRBh04wGYIoLe+IbohYsIYB4k=;
	h=To:Subject:From:Date:From;
	b=WuBJhCGDeLD+mYatlwbtQ/YsR9ebNOZAKzUIcc3GMEamBe9vaAGmBU8t1ZGbQRpAK
	 EFEwXJq808juWAwyY8JvelwD1pbneDG9vZaOXabcnOefyd+TgF9IZVhPDDx78P2bJg
	 5y849MlW/PGTcxy9vcPedRIt9iS+j0Jq/PemhZPcPFZ9FDMW4aMH44sWHxtXX49pIc
	 218hvnnD1JvTkCBqM4djUXXmbAyCvUk2ATaEKofkhXPGJoyvoS0sWsAOG5jh3iSpdO
	 I/khgoajh83hI7bpG8T/TnqYksJvDCTQFawWB1Q1u6sPx4DCyTod6zvnKcuUFyO4Bd
	 fW6Nx44aTZy1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E0CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143983370.9849.9843586688313220730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc213cf7b994966971d308a583334817fd27d8401c159ab7cf10c68d0bc7a057
Date: Thu, 08 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791439833
