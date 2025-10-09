Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F4E28C841
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760053194; cv=none; b=BEbKM6bZXj6guiWcIVUxUjJiOqfTFmEB02ijFVqI1qsdYZJ2QXx+dBpyHAGFjMaFrtincbsxxen+Niqtttn0Rolqfk3exyT3b8hD/62tVW9NwQjXr/eCv58V5NS4122yFJzNqpWxrjNt/O0LJ7vQbzY5gDALk8OKEdyvUMHMe7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760053194; c=relaxed/simple;
	bh=ZPxDVREIjn8sydv4oWA9yZutgrtP3y6wT4DxQLU3cBc=;
	h=To:Subject:From:Message-Id:Date; b=bXuf8AtYT2ouh1c0Oh2uL8jp/WcePpFKpCOZN5am+mHgeM2fTff/IW23EYE8mP626G0Lb6cMTqTl7qWzn5xGTi0033r6x0YMUlM1pF4hCx62Lx8/Hc2AS99KLFLN9CPgMAuiOZEUOQoSo2blTNOR87QHhR88/hexlVO2Yws1pnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7FBIJuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7FBIJuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B1EC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760053193;
	bh=ZPxDVREIjn8sydv4oWA9yZutgrtP3y6wT4DxQLU3cBc=;
	h=To:Subject:From:Date:From;
	b=A7FBIJuwAWDjRnpoP0HplJIe4hFEaEP1xxXSdROWbHm97vVOF1jROMngNHLmuBNrH
	 16rH3rLinhE4xhMrmK5t29YuA7ZfLkj/VJBQh9M82RZNavyWq90XjUOcw4ZDGmSbBv
	 iHiiscIfwzbwv3WOmRs7bPA/hKSACqUz6FNOm5KeK7cSlG7N7NpDuhsJUPT5phU7/H
	 7s0AveI4QzQACbaWWNVaBseBVDuV/MCMlYDUOukLzYc0KYoZT2Z30mzGSdO/hYLwG7
	 j6/HJzt2cr2ykFYAZTJKbTixDVQz01cgXliaK5ofQ6Ye/SEJ1eWojqtGuDhclRBRsW
	 RzS33ITUxcuyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE6CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005319360.29657.2603365618812155216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a186a893861238634b3c0041f23124927d9a3095bcc1d8e93523fd2d3341e4db
Date: Thu, 09 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760053193
