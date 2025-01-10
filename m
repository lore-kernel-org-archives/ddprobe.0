Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E68211299
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736520954; cv=none; b=rHjs1l4Jy59CIh8Fyug3T0LOWRsR6v3iDVfmjv2BRNB3G6dz1rOK/AnX1e03YHWzSLEJKT9Op1A5EQaQrKSLAKjxwgmZlPL9dg3YRXgfd6IbmkR4c7WKuhZ9NdTN8gWmdYAmANiJtZlGPfI3+3kBerWNG0+KwqV99OAkixEjZ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736520954; c=relaxed/simple;
	bh=eMKktqqgZG+FsmvLmXWGILEj+DKffiWnI5v8Lpj4QG4=;
	h=To:Subject:From:Message-Id:Date; b=CWoPM/KbUV1neU07xrQVpbwzSXPk53rVkttti6jBhinBrocX9oq7lk+4FmvDZU+Of+pwQn08uAEPGpxJqi8Y/IqrRMm2Df/XxW4T+NV/k3Mev568a6zku3A8HPqEV/y8I4GR1sTGRNzhbyC8gC6M/cinOJAkYAtMs1N/gkZONMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pakuoIza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pakuoIza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA44FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736520953;
	bh=eMKktqqgZG+FsmvLmXWGILEj+DKffiWnI5v8Lpj4QG4=;
	h=To:Subject:From:Date:From;
	b=pakuoIza1PaszhxKsNvEKEdSzztr5qbEXDDtviKsQuEAtxuhSgRt1H5sQZntXnyS1
	 N/JhlGuWzmzfzs2t6hft25cPDyfyJCaIjF1qeb49vtHTNUo0qgAH1goJrAnT7NUlED
	 W2GWQbntOOeIbaQG+QTiVEck0RbbjpiuEaelqUbVgkrpu9zDYUPcn31h9PT1KCToGl
	 GEJlGj9ARfa7xX6GeBHodFlxY2wpXAQ/7o+43Mgky//cvU1rw/GKroivIsKK4H2uS9
	 DPegx6Af71aJy6oqhVFYgXOQCzM28epStaWmAcUJ860vMPFzYE+T2BkAFARXfxv/HD
	 VW9BNpEh6ZZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A829AE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652095367.21945.1578621147921622083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932ae0b107ebcc7a7fe8e27acb2afa4585e2d8494d0d6237d408133ad6f394ec
Date: Fri, 10 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736520953
