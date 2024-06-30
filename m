Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700122C69B
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719720863; cv=none; b=aLU2G1hVODWARlLx8ZJUl+1grifTpy94xe6sgrHk3ubiDMtll/uokyu5U1PxpNKQp3bcgv2wgB29e0AtEwH/S6VwSyUqUelE6SpuKTIt3imFgjbOZDhmTfGl3wMRqxjWVqTPimOumz4ZrcpqrMrEQx33G9z/ncFnGxocy9ApWs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719720863; c=relaxed/simple;
	bh=XqHwFQNLSMhnUKbGQTbWSdtLWghVc4uv2rXA0Ux9STY=;
	h=To:Subject:From:Message-Id:Date; b=fvI0uxq8TRgCmccw3irOMlGgGB+uMKnxGrLNgu9VbWkB5JchaAU5jVXM/0CPANrz7D/wbIQ0L2w1MXMxFmq7bKBejfvLMpjIBg++WHuoe7La4r4Nkk5bC36CFjgCuFFt/b5CX4sspecsq1M8xKT1PW60867i3T8Kqj4U6DFQHyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJu30u5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJu30u5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF059C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719720862;
	bh=XqHwFQNLSMhnUKbGQTbWSdtLWghVc4uv2rXA0Ux9STY=;
	h=To:Subject:From:Date:From;
	b=tJu30u5vEPGSwmnNOULOOJ3WlwSRaLvkp4HTGpj1ggWAlJsAxD275y7O7Y/OS+9FC
	 5LzOAkeRBejmXIypsVYh5lxphGECMFTW2AJ9BHBAzcCncmN9zvFNGZS6CgfgPUL05Q
	 l2dOUlkLbgnqjweE8iv5prnDysji+gh38ypMTOr0uJmFOFzJDSPPd0K4kvp7se3Y5p
	 RnWIipPtNaaBK6spJc5ceUOg0Iy7GkPDU1h8Dh2VqhyavLBezrutAUwqmiMK91JhX0
	 rQRXTw5xsWSkFuOs4xV9PkkpzwrZ+4pcmdJUEGtJ2uLlWZZ3KkxcuL4HEiiyNBWx02
	 zgRuaRJPwVyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EC1C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972086278.7830.16117740020032841973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db05a5494a8c2420bb33a24dd71165f7bcf8218d065c9bcaff18b05942d0c740
Date: Sun, 30 Jun 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719720862
