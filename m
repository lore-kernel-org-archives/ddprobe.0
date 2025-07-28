Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2061F2737E3
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753722594; cv=none; b=eOSDjP6PyoiUCLZdA3/7ItfONoLCUPyTnpvLLVBQ2aIwq8Xx4hKka1mAJeAG0nEQ9e4ar9mz/3MLi3YdWudbyOD1sy5LMrj8/xuHG2l2PodVSRMYcxFseudLrtksQF3T+vceid52mzQAAJSbYgR49d/grpaEFMA3aoxEJzsXgN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753722594; c=relaxed/simple;
	bh=9DhZ/uU1m9KfxvueFdjeI385i61ehzd5XJGvxUYiP8o=;
	h=To:Subject:From:Message-Id:Date; b=MnJdX6owzPSPtm0nXB/F2CTrZ7fY9tgvTIhPTbfzklJE2Jo6zVyNm5qTgeqYn4jAxymo/DvFxKaZmCukBYIBbRCC2/FHN5CYxuQxYLzz7FaghpDSSdLPSheJOIc6MBcphQzy3HyE/j5iCy5Yio1V2F6X/WWYq9WFYIphL31OBWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+FcM8qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+FcM8qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE615C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753722593;
	bh=9DhZ/uU1m9KfxvueFdjeI385i61ehzd5XJGvxUYiP8o=;
	h=To:Subject:From:Date:From;
	b=m+FcM8qdMMzwl2jMuR5XiDAR7BL+AgnwaHfNwMj7f5uuLyhz4X76dZRkeMT+XfAv6
	 PKsCZND+S75qzZ7Ct1KfSW8W+sAOMQSuGFdbKSRi1GMZq5LV7v5IJo5Kwde23YKrZR
	 lALEjeV1PT8ATgkLRj9FmRC1/T6ol/ILtZDaKEXemaDUdCTHOORndf7T/QpWG1fy6q
	 qEv7RqPPr+nNrWfTM/YmuSaVkBJKB+Lf8atSCq0S2DSTi9mZAzSuu4qjJmICgHFjwI
	 gRbUWvUE4oGeAamm3uhoVmUL3FcJKkofEjpGJAx+USykQwlTh+iLzKgcv0lVeea94h
	 a3BiL5siMOfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2EFC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372259363.4286.17040863725665690801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1af643874dd606e85066bddd7c14b47d04f296c0c071bca1546fbbd69b90c6e
Date: Mon, 28 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753722593
