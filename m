Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3261F3C0A07
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789714234; cv=none; b=YvHuVGJuMwCo6/rb87xwAjSVJjvMY8esz2oNOMB3AT61ptJ/R2Cb3084QZygCUDLpeIMC05Iv6ghAmDjea/AVzC0LjdkoZ2StK7KhKbzvXTS8AdJnx8xGgC4GeB47TPlVRTFSnJxBBPG1MxBMONYbxhTZ8OUhHrOJt2Fz0ddx7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789714234; c=relaxed/simple;
	bh=1QVQcCXrCNn/9cBvORaKxWHjQnLJBZPXbA6ZTNsISKo=;
	h=To:Subject:From:Message-Id:Date; b=CYmyMcxYVg+s7wRB96dmmJpdw3Ip/XJpvx5f7zCSGSdAJVBjYNfBttII05jUvjLIXdlC/JnFi9TiSK7WL9L23NhZoKaIFJlhTucvAv8y75//2FNCaKo3iLjZabvOAba1l3iHu0D7d+IKxkBVEzKgALqi8aTK8tZh8zjkkUUqVQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj1DpF/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj1DpF/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1B0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789714233;
	bh=1QVQcCXrCNn/9cBvORaKxWHjQnLJBZPXbA6ZTNsISKo=;
	h=To:Subject:From:Date:From;
	b=Fj1DpF/3jPZ2stCvlBLgvTSdbc4MG6OV8sKKPrFTKGtgQf1L78514esjHK/fFBqJW
	 eTKBYQOf8WdJtUL7dSBEwJw61UdcdmJNEYvakXRQGOT5GT0qkmjUuXBUAigdaGivyR
	 Q/BsmQbVJV3vClsXVeVksI1sURikLdc5WBU6Xvr8Tix5DvJ1jjkeIpPhNZqQqDM19G
	 cIDbY6e33U9hiHvvCqwgLHhfPSE16BgA8WuxyNDGXUt/VNE+gctqoJjEK+7iUQ4h7F
	 eG2+J9iqBu999k3c4XyabYL3lVtCBMac982kqjZCyVNdXXD6QulmFPvwgfspxN+nKq
	 H3RsHzBxZCH8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A993AC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971423368.9502.10255663562801916257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b067dc53496a66f6d35bdcb405983aee45ae77db5b63d0acb2c7620bcf9cc92
Date: Fri, 18 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789714233
