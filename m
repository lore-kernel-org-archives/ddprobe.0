Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EAC1EFFB2
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758841794; cv=none; b=bu+FxQ4YJPOTqSLusepo4dOQbuHla1h33IFKAaEaezOLDzYrFnmFWxpEVDzEy8FceCgUeynPz9Th1axVNs6lRbAAmAL3wadBy8/QG6UmC6Hox/NA+CSozOSVoYv/0lKdE/v3Wq5ypJtmigKa3ZY98uXkO9wZUeR8x4vvBdqRsPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758841794; c=relaxed/simple;
	bh=vEkIkP2PACBB/9qci8wDiyfgu1o/E5Dh40Fll+GDYpU=;
	h=To:Subject:From:Message-Id:Date; b=O6UwTZoB2TFjP5a9LJeou11i9siwhVH/6h3g5nNwUJSmsgPqxJg5JWkMcFHB4gjZIck6Q9L/7ugy2orElvB4E5lGHX1YXpdTlqOjm22QbeAHc/YqMzuhEOEczHDmKYNApupV+J1ErdV37gPCeANFvi95bP2Rh5QawTNpdUEo3D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IALTjt7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IALTjt7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2615C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758841793;
	bh=vEkIkP2PACBB/9qci8wDiyfgu1o/E5Dh40Fll+GDYpU=;
	h=To:Subject:From:Date:From;
	b=IALTjt7eOHfmtns2yar8436d8a87we8jtbkeBvEJtsBdEDFCJFG48lijxwC5WjEzE
	 i1AUHfHEs/+qEt8B0ki3bKLYPgQt5Mm2LphjlATjLkCkoUCKRgIXg8trt+bi1gISla
	 /yGjXTU1yAsiz14DA+I4GP4FbEQF+AHGF9grSpMhNgV9XxjbCRisQIaovoYI/2P4va
	 0j3FSg+3oEKx1VFbtOg37J98K+hOcTwSe/9zSzjFnonFdWrTmbJ342nfN+3OtxSDRM
	 5DmA+csPzSbz1E163CGO8tGWHMUlJfc/TI0LijZBubjEAiEplwk/4OXjLPP+RN7/zt
	 ukaUw5i05ejmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA5CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884179358.2798.13542674396505462585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7aa5bdaa2c6614e7bf7ff81c009a508db553be2b83c13edf5bfe733175c517
Date: Thu, 25 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758841793
