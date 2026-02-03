Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285772F12C9
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770096234; cv=none; b=hZoJiPd0Z5jSyO7iBCYem204GWFQsIHofflH3RWnBOUcZnLXy2QFBINsLLp7LH1AHDIp+aiyOTRvwfX+35ZdU2lVfZJ5e8KPsedtwXk0YsUA5+JurUoMMHb1MNuxYosUqUyQT/oVkErqExs8f+2RBgGnjbW0JFy7Mt10w65sOeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770096234; c=relaxed/simple;
	bh=SFxl/FYPUe0YUNsty6OLsL0jqsfO9PgeekCF0E/g9pg=;
	h=To:Subject:From:Message-Id:Date; b=fsQJVfVNDpdNTjOXS8I0R+UUqMwXairVXqNvfwELotY/j2r937rZ21pCAYn0u8+r57W6qRD8xfIyxdSmHrK5tPwtfR7v/IkxHjTZWioCfiX6RVKGcKn2eZYY9De2NXf3BcmcQVWHZmpK+ItkOm5Zpn0+vU5+lzS8UxjOGXEfJVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8x82gtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8x82gtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6FBC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770096233;
	bh=SFxl/FYPUe0YUNsty6OLsL0jqsfO9PgeekCF0E/g9pg=;
	h=To:Subject:From:Date:From;
	b=G8x82gtu3DWBNmA4RxuclTR06/s4IVsxNN8tHLPh3+/Prvp8hT/G4/1Gd4vzHPplW
	 PaB+CrO9ik8Zdcjry2IKo17OFGiOT+JIRrPtvGO+z2iNWMjULoO6Fn27VTh6TkjWgn
	 XhCNckQZHiMaQZRjRPl5wSjhpclf/+sTjsgd84n2XRLx42ndSagzyWaYol6LWlkt8s
	 Uc7lwFlTd0CI9UeJ5I9aANM36GZz89CHgkIXn4uSR92ajQHaU7WDg3rGYtkWh2O7lK
	 KErppBY4bnnp5F5U4WmGmA3uQXQ/GwMAQSDV5MxUGbGzMuq0WYiqJz391sihe+t3a7
	 d4wWUD7jN3a2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E06E83056
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009623361.16876.9936003620172018364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec64bb137379e37a22569f569c76d355b24af49803c014d6ffdc92ec2a0180e5
Date: Tue, 03 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770096233
