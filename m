Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6738374FC
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710508696; cv=none; b=FayDoKKiakg7CwEcSi4MLj158+ZYplLA4Ramu6pmPfEjeASsf8u8A0dw/7VHiIkAtBtPdDs6NDrYSfFceE+OM2RKY8x/27hb8AcEaOIw8C2Y0IkhR8TbXIbq4UqBlwrsJAX+8K/zYthorRmCaYT4G07wEjhl2+l6+lLFE2tUnmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710508696; c=relaxed/simple;
	bh=a7SibbYxpd6pmXqQzstgFXmequerb1tpb4qmL16wZ+w=;
	h=To:Subject:From:Message-Id:Date; b=JKGIcqw2fmxVLY4XS/sRMmfHWlTB+SsoCgwtnA1D4CYIBeBGraK3Y1uS9Nz0siNq1nliqDjClSz/G7zj03LmnlYDOwjDbUnEQKwynlnBXyuIt70jPOxYMHrlRpycz7mthnsMcJOqCskp/nzhuxECn0ItXS+boINIl4NCd3jl8UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px+0vhfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px+0vhfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3C5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710508696;
	bh=a7SibbYxpd6pmXqQzstgFXmequerb1tpb4qmL16wZ+w=;
	h=To:Subject:From:Date:From;
	b=px+0vhfcZxeum68LBHoODEb4grfiU8xT/3JTxXwOyjivZr6VE1VoM8LspRCQcQcZg
	 l0pMI+Hw5jJAmiRdtVW7oxJG4BB7KNifLZqCM4NUlZJccf7AR+/fBUS8NGDf1P3VPo
	 TW60dhRoxmZGpOUhtz4srtHslhhT7l57FckIcPq++Pc7sUjTkx4b7QFab6p4r0Qddm
	 um67oxAeOui+1IJ8UcQQ6XMtp2CymFBysrsrGw5c+7fCh+qiYOK3LtUd/UmrKNjD5f
	 tEjj/EMySnA5Me3R7pEwsbspKQTqZMHnh3DnJFjg/SJW22s0IT191Nlsa9rvvVezpr
	 OJtgJB7Ntl/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59EE6C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171050869636.2954.16229313931935462810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a2f664694fe425df55864bb3b2d91825eb70908eb80a45efbdd7132cdfcd04
Date: Fri, 15 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710508696
