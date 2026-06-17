Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2974D30DECB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781736394; cv=none; b=a9h2JewdeqadO66yFSSVRlf2p3TPcmBJjxaKl0/8f4Weqh2RSHW018//cOJSl5t1RCnFYox0MkYWSVsBwIIlq87ScYqRaAgQ5HUiWLChrsTfwfgLJZkPkr3CfKn2DuFPKvDOXEKu5AKDMvx44uT0H5DRTa54ZXir4jJFJrIijWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781736394; c=relaxed/simple;
	bh=eHQMs03cVfu/0XJtzN/sAyg/dE35wbBLN7biwd0Z24k=;
	h=To:Subject:From:Message-Id:Date; b=MXNg1BRSGatd08SdfphS3c4ka0zZM1RoFDerzONzHZ/QRzLn0GEE+r1VwP2NGQjM3sbJ+1ECeWHLQ83I+hlvQz3nAVo1BJ5+X7jz9VIoVaWxU2e9LLWFbs4DMPsMtiTIUctQLs6RkHWBvIf3x2uZWCdPV2jTUqsBC1wOC0wgLn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwuEc90N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwuEc90N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE73CC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781736393;
	bh=eHQMs03cVfu/0XJtzN/sAyg/dE35wbBLN7biwd0Z24k=;
	h=To:Subject:From:Date:From;
	b=VwuEc90NUS3Mp+rrWkNU5tE9PuJsM2rPRV5IXQ4H26Kuqk34QbJu3fyJVXfa3CuYM
	 IgZPn50MzYCmED/E1g9y0stzICvgtGnkRjYUItsjgz9GYsLs/LMx6KUc52jywytgr2
	 MYGK28vMn0hv7rhG/deOfVWWsxSoLpYa00HPZIJvMxAybAuD/rBiS8v4NcHH3kXD6I
	 sXyFjt//yg0bfcl2atPYhbKdfFTG5/QOZZcgREvfLnYz04mfBkA/IKXX8VGiYy8yZ/
	 dg1flArbu8U2NlApqItUMFwMZo1ek+7Otwng1+R1VpmZk0iUpJcfwzg/7cnHMt59x0
	 ZU1j212GfnO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E95CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173639371.5417.8094553988380365208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d1fc95a198ca0225818a22cb45ff3593cda08af1225381ddc261fc8e80fa05
Date: Wed, 17 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781736393
