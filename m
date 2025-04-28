Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A519F120
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745827794; cv=none; b=JYDyvqrk3upFYqjPNJbpy0xNAdc/ZCRdM/XzKzD+Dsqzigl3BHqCXv4D27KDRXOD6lLyylofS119cg/OhAW5OQWFZr4++1fZN5mYWc1fd5AbXho5UKDZHFi6JbEHTymoq3zVnNL753O7s2+ISfBsLrtoX2A5qdOQLV08sbOKu9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745827794; c=relaxed/simple;
	bh=vw98FEIUGIrs9nd3A+ekbB6BkBUaLby80rnREtCQaVY=;
	h=To:Subject:From:Message-Id:Date; b=KiJyCHdKCpxSJFGi7i9BhIGG+713C7S0Y+PAyYdDKvBT1T13ysmt3adESdNgg9yFbFqMqQf4gd8mK37xtvAZlClXDPILDI0dIJ9xSvd5GyHtbnju82ZBh3Al+okd6Gne89Zgf5Febj+VdBxSRA6PziFcL0fjAbMXzlfRugCmCM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cG6ujYpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cG6ujYpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745827793;
	bh=vw98FEIUGIrs9nd3A+ekbB6BkBUaLby80rnREtCQaVY=;
	h=To:Subject:From:Date:From;
	b=cG6ujYpw2OMDMudqVEuddissncji4EwsVyUZbic3XQ3br+8HpxzxYq0VXd8JLV31U
	 SZc2gh532U/DbycMIxZcH9tMSO2T9q18AKWkryIbyDgaUGF4/eP6RfI9tCs6SNnGf2
	 fHWXuqVU+JUWEYgA8rqrMJ1eD6vZwcAOfV7tT0Ct9nHDEeupd8j+xPFM1o4XTEde2p
	 BtHLvynYmVUv5pVjP0dseGbUlKTobgCxxnTs6eB7Rp6/zEXxc/QV6V2YegkjtNeajb
	 /W3+c0G9lSjjasgQGEAUMWoJS08DlCZSyPmWEJNH7M+l2/a/zZSnG76ulwh65P20lT
	 oaZoKr8f/xK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7EC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582779358.21250.13039935848996498338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df59df2ccfe7187664c7bbb74b2d501ffad697ceabc3f98c130143a0038811b
Date: Mon, 28 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745827793
