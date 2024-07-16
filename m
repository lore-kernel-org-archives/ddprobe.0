Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5743725779
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721168723; cv=none; b=G+91hyl7vSVkVufA0Ks+xW7QSfk2XXGkJryL2pQDnlDOn7MCEaLH6PjhgMrpfSBaLmC/t7oCrDcmCnCsXYq+STwKy0COTeAapxBfc9tE2xdjJAdwrJgrY063ksB7sEQgORgpxPI72dJ8KWD0DuXzozYjNmXeF5R5tCVpaKWmdb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721168723; c=relaxed/simple;
	bh=MqdhtXis5ugRbvO8I7FqQRT7LQs2YUnn2puZQ3JsNog=;
	h=To:Subject:From:Message-Id:Date; b=NexoidKp5dBixbAkF98NrGs6R98U6GzehG6zKJP89zR9/ktm4X44gTP3KkH8UTiwY19KGUNGsctouojcnyEmYqZDrX48GxAx3+DDwCxX6UAdZ7yfkASLFUmUI3uNVGn2xa/t9xxL4pcWov+y5Ep1LkEGHnSaM/Ak1sRDP4dQJgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsABsjhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsABsjhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDC3C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721168722;
	bh=MqdhtXis5ugRbvO8I7FqQRT7LQs2YUnn2puZQ3JsNog=;
	h=To:Subject:From:Date:From;
	b=EsABsjhjqA0cG+LyRTXIWLGtZ6LT8UrXEadQ4NgCAl2LON0V+1WURcFlaXJ7l9vgA
	 61GUX6dJf91wJEoJtSHKJgR7/d08dj1CYBLS5LBbNUcZJ1whke/gRJFJTY+Dtnmfoz
	 jbYa12mKLnCnG5or0TA06C2/I1Rd4B6fnB+uYn9xGy1X+634/S/FFislkKE1PWPSqa
	 0G99ukeAcoxsaUz3AEreEu/yUV78jY8giVTZE+tM/uxn/ZKB1fivzRdNL55dQuLqEI
	 rcB2ZLcv1LJ0/R8IpgwP5dQ8SDhjsJAyCu+Uq8WACxGKC6Ht5gtpVdxsk3DzDtt9z2
	 H6eHYXjzs1C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D28C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116872278.22618.14859414353938867556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403b74f82cc111f633cf2e9956e05e8eebc3412ddd616928134dae5d9946d8c6
Date: Tue, 16 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721168722
