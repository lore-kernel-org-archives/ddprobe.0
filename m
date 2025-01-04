Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0BC1B5EB5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736009154; cv=none; b=f1aUrKm87QPq8YaqU6c9GnnDelx8YEj6v87EF6fOhO/fOWwI/ogYM0cYl/FC0/zEcx2/NTun4Jhw+vj3BZ8vko2KbNeMdpuUOVx7fYJzwEtP/NgEH/i6DgBUj++/B+YdMuvI/2Tb/MjMkmvQjMyt8FWXnDlpPWwKqj96OGJjVG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736009154; c=relaxed/simple;
	bh=/yn6AUEwMASLyEqkhfxin1chflooNImV+iwJUteXBDA=;
	h=To:Subject:From:Message-Id:Date; b=CjYPTEYBUlLDLjhW8ojdGjN/h28g2IHRvz+UTBG+CVlgdg5EcJnLPznneU+M7Kvssj0H8ZUEL+3L+dhOLI3y3JfLrfsSnSAXjkH5yil78NBleKn1MP43orRZlcW/FN0LJcOYm0BdkPBdEkqKpijIfd/3RPOECgpB3WPXqzt6WUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJgb1yK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJgb1yK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8355C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736009153;
	bh=/yn6AUEwMASLyEqkhfxin1chflooNImV+iwJUteXBDA=;
	h=To:Subject:From:Date:From;
	b=FJgb1yK1gLWGSRvj5DzXU8cEYggDi791foC8puUyxroTTdcsMwfNlCnC1Fl06qrBj
	 ueSOm9LfsmvmfTD0CRxURpvFauzkM4vIMWrncLldYZEeLMX4ljJHbteCp+9ExYXhCG
	 M61m9bDijFlNheQhb6jgt1eQH5vKLLhi++byZ+xL10IVqOeUlUg+wqd8Y2jcejROVp
	 RpPSH0rdyrz1vFaRDbB+NQomi4NvS9w5/6lQ9X+QszqZpPrCmpGlMC/qpRKJrSP4KX
	 8CcmPWA4h8jpEgAIiLiKePT33ToCVNjXEPn2mBR2eEzl1xdY8XmmiVSIP5KJH1wlGX
	 vnTPgATE3NYFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94079E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600915359.5892.2115793775504180185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef30986a462247ef3f83c38b4bae52be9a9731fbcb04a50aac9224ac0a7b676
Date: Sat, 04 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736009153
