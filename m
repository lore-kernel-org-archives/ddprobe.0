Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775CD83CD8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717457123; cv=none; b=jKmkQZ+zsuYms5ZOb9jHIrkEELUSCqBygNEmIFHijC072/7xD8OVCSfaBN27yyvy8mMJs/VLnE2Yoc8ZNNg8SUDfPWvn1xfGdyT5Ns7v+M3N1wIT2I/EQmf7foo5Q901BazSVWafW9NAUPILGlo+RNTEiJelk+V4/fonjrS1MJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717457123; c=relaxed/simple;
	bh=7X3YiIQy618IYTwMFXXux4LF0Rt1ze6X5m0YQNTihvo=;
	h=To:Subject:From:Message-Id:Date; b=fMlIuJEMcmQM7cb1zV+sjdBX5Jcfca/zVuqVuktKqqix0ThDt/9I59hhAxmqH/C19KeETIIqTT+/hTB7NJZLNpmghzDEXUbPuogIv/zjcFBUZR7pxVgkigP1VhOmgS91g9r4swJY2ok/EvC3uhpC5CVPYD4ogKGvOsq1eEMNSvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsZ1aFve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsZ1aFve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1FDC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717457122;
	bh=7X3YiIQy618IYTwMFXXux4LF0Rt1ze6X5m0YQNTihvo=;
	h=To:Subject:From:Date:From;
	b=NsZ1aFveyVLq+V3Nlq183zRrpIPAfJFvK74JUmuuSe+38RuhAkH5ay4MFM7f8JUbz
	 39/ZlszrsNUNmozoI3zrc3PYbu+kpZe/pg8hwtMe63tTEX9y0BOUc++lXSzjqZfZ/L
	 o6bPWsEBbreye2lrdLefUB37xXwl8sHhgsoowzhJToWwUpVXdPAze2HU/vRXL4hy0V
	 D+Wp6XKD+NhKMcpnkyx31KXbsI086J/UPmRS//cg13/mcJ9hhGb4Fdyr9ScUr/Dv1W
	 7PPykiEZpu060BRHUq6Q2UVb+E5kN9RSkSpLk28ET2+9zOlYKjOYuqqp2z/MLXSJR5
	 PhpIVlGR6VzYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB8B0C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745712282.21390.18136462620581123905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3340553d29e64db43e744620024a2eca41426af12c4e53f2740fc45fc1adb795
Date: Mon, 03 Jun 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717457122
