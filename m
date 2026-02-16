Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED84291C10
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771229094; cv=none; b=Ifp304+cIFRsm2xNuQTUuAIMJrbFJmk7eg+IhzQD9Dqs/fn7q6af4lPq5R3XANvzgicvFqOs5IJHkdAuUew6ciUeLeY/HSlGD9kM7VuGYTNEyWxUQs7Sb/M8Sauna43F7c+lnZ0BgfH0rvnVVoVJZwGRROJVBb2KZsCzVBY6M5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771229094; c=relaxed/simple;
	bh=FmDYyzAtRzdAmzEmPBZCKX20I3d2qiiYYZKuPMSNRrg=;
	h=To:Subject:From:Message-Id:Date; b=ZITVB42vlbP6Vmin0neiH/zeby/dsOBgJrvnGf2T3PPTH5HM3XeN2VuwgmkhdgDRitnRYR3hUoNQsfU40q/2x9dbIUroBRLGXvGflRV8WVXmNx1i34qp2UdLTsoWba/Sm9IIBdILi3NZUMANWoHiO9x0UmQ+p6dvmx+Xy3hEnXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTF5M9yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTF5M9yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2186C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771229093;
	bh=FmDYyzAtRzdAmzEmPBZCKX20I3d2qiiYYZKuPMSNRrg=;
	h=To:Subject:From:Date:From;
	b=KTF5M9yh5MmNu97GHa7VGXVI/ta0kS0yMSGLpeWyYmg7sjYwZO0wj9t6jyEGRfcwS
	 PuNVBGAT/jeEqOIs3c/19v0Jagpr0XotzNXt13cxmK4Pfk/zVYLuM+J+KbvvMbp8Oe
	 /l1wC9G3ZcscW/FbdQMhKkUfflGkLvrtr1k8LuUPG5qQy56V7/kNWB+jDcV/Xyl852
	 Hwmsy+fXToHpcMILNeAjPAdOetfRu+ysGSjPuDCA/me5PheVY4W5CMg6RvRGX4auts
	 lfxGwM4c6W7gww6WmIo8+tPIhf4c2kCbkc7wzLraNIyIR6FumDy6eX/+c+WBWRpj2C
	 9qvWS0xOMYiVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DCAE63F35
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122909360.1935.18163833312819848963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b3e03deb5e09da279ec557b417225b4dcd5d24f2fd47573868b35fdc70da2c
Date: Mon, 16 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771229093
