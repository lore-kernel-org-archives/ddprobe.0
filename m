Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F51030EF91
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791269434; cv=none; b=ZXCJV2ynRRP4ygqOy1ZrfvC0btpTKp4nmPiHuxIOmdgJ9iFsSAGOYi7E8vC+YlZFacV+/eT6Pk8DDZg1ZKarbwJ138VpGi+apBNOdruORtPw9AYxsOSc5qiimxWKlghTnew4tSGXzO5Y50RkvNtWUs20bJaRTWfEDtN9Ym7cEqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791269434; c=relaxed/simple;
	bh=a5IrIRqIE/8YNgL2WXqa0L6lU91+LX5C2pYeHlCq/O4=;
	h=To:Subject:From:Message-Id:Date; b=I7aET/YQMoJbAxchNdRvWmSTxoSc0MHHWFop9JiRy8pDPRpGLIko6v8HtlYaCPpsunTs2OWTKAsQdT+rpF13KLTSkGcm/zGAX57ILvwJvMnbRJtAEmbZGKs02X0qpeTpo/905Oux63dFS13uJskLd+Px74rMVm2GpjoCsoAKH/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI8vsoyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI8vsoyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64A1C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791269433;
	bh=a5IrIRqIE/8YNgL2WXqa0L6lU91+LX5C2pYeHlCq/O4=;
	h=To:Subject:From:Date:From;
	b=RI8vsoyDZZ8q10XFjNGwhzchiG8dmes5TBJ94U02kzz8ZO2QunFVnWEglZ3Blsop2
	 VHnXYAwH37QaRvlPwRxeVHNnByd1I4MW9Ti3JSPonTdqH+0vyEtW47DmNFO2t+OH4X
	 z5TMePfU65JkdK0lX3YV3q3RM0ty4o6DvOEWcC/6x1/pm6nfP4G7Pn2w6bCAVnZkSO
	 S5V9w+9sFrCcNdmM6ANE681z+IpU8AjCVmaGwODo4UVZrh+KY0iCSm724LM2nmG/Sq
	 Oilg+vIH1jjYEhwXYAEgj/yBaXl2JwTJrufDORfN+MLj/ssh7l/akohPvlnRFeUZ40
	 +DFcAK70rPb8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB560CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126943375.32052.1221208949278967944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490c5a5394db6587ea73c67cb24724095bd56d854cb3ed8a69c504032590ce41
Date: Tue, 06 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791269433
