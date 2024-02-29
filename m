Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB90F15B1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709165297; cv=none; b=RTYa+0SnM0yWPxciaEI96BrHEMvQ0MOCXihLnBHLFSB4yLdjqLZLHTpX2ynFEOc7hwn23eCNlBMvakmlCuUP1oS0XlXaHx44Ww7GO/hFlpGQzi9lK2rDdxO1kJEo8nTv6taFuxLRpCvA9L+AN47jMA8hBK2fNNxCegjkjaqamlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709165297; c=relaxed/simple;
	bh=5MNzBD2bAeSfyWt5hFVhx1TGBruDJejcuAa9fwu6bAY=;
	h=To:Subject:From:Message-Id:Date; b=cxBMnH11OmT4poDBe9pmAVZ3CPdMXifnF6eyRny5BDVRhF9XVR8hRqoCWOxjSrNXCyLUpoUtoE/92N7e7RHoAu7lWgKZ1xtCsFpz32iHQ1dllwmYNcYIzYO2fNh5U0RdeRl+iKI0MCZMH9a2HCwH4jWBI4yobo/OxKaAqWK8PXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii+4LrVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii+4LrVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A7BC433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709165296;
	bh=5MNzBD2bAeSfyWt5hFVhx1TGBruDJejcuAa9fwu6bAY=;
	h=To:Subject:From:Date:From;
	b=ii+4LrViBG6q2RwK49b4e+MkZok7guh0yT4lpii0dt8IK/ipRmg81MNGX4Fe9TLFU
	 vkAH/3aVCwlv+pjHCTJXCRwdpZYACOt1x+ern0BiMtU5MfEWndFzubtu6GwFtRgDtA
	 zW38Hlxnrg7/DLP8m2Pdh5E/lBfGx6fWmclPYCfjVeHKPFDhB6OtoGQIqVy/2nzg/0
	 0UE2pfHgmpBV1fs1M5K+MFF6XjzXzhRFG7dbr6ulIaD52KH5Rvxh3/7y2iuiSpCpi3
	 fTiRS9Tv41Sg0aoBGINFOpMVjBU14S+UfB9eQe4do3WSl493e6Emex7ub/7lKtr0Td
	 xRtL43Vv1y9UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688C1C5475B
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170916529640.20207.17982241136541697798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9a8997483337238f152247ed10592ab0aca7283711eec398eb7b749242d891
Date: Thu, 29 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709165296
