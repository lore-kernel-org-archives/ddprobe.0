Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7BA13C918
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745237394; cv=none; b=K2pB2u6+E3SJfoc89NRFyImefJz/wJWWylm/i2qRRVv3v4cQpTOPxw0cInbIEV1xG9tHN//VptJqJDFcgf83br26ZFOYumen2Y+vpGoyBG8kgLAs6ZePv6cEbsiUYbu9qpsSTZR5nHMOmuwNUQEixiz7Yg+Mo4eDHA3N7V4FEHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745237394; c=relaxed/simple;
	bh=OI0CsS4rkFDHFr03A9DWe8/ikT9de5y2QouprRJ4Asc=;
	h=To:Subject:From:Message-Id:Date; b=DHUkXfxs9ZWvu3mDdjvOMO6tKu+8L5VISyXRmiFImYh7s/TzhYJFQz97kwHlvfIMKjbZU+QIerh6fNLQBlvstPoDfPpZxnOIQa6lJz2Ey2oCB8U0khs7lHGRt9HcXwq3t4BOPSdx5SHE50dWV9n11Gr1+4aOhAP4WHqHq9Pekz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPJY81ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPJY81ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED2AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745237393;
	bh=OI0CsS4rkFDHFr03A9DWe8/ikT9de5y2QouprRJ4Asc=;
	h=To:Subject:From:Date:From;
	b=VPJY81cklh/B+VwGO6deJOKsTU7Ir8lkfAUZLoNplH6mdngtdnsyPtqnTS0JmfAo4
	 WA71GdsAzp0GvDriDaBX8YDXlpwkYGfAhOwnTpBCFttr1z91oCBz4TZMRqrISGvpsZ
	 VGLIp+WxhJcJLr5T21jdfM/dmrTvP5tkLO7Z7T2RAw37cvu3axW8Ds+ZWx1x87JwnG
	 Nn0qwwi31f5TxDH+y00luCiydARGNegGLRmXLaFyp+H0+eW5fJahERM4320p5qvuef
	 wpvDMJ9VSUddLkcYbTpgUILc6IJ9NRNfvKRCMi906k4W9V8klhKQz+XuSpSrGG3h/+
	 Y+WV0gkUusDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C8C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523739365.12163.9515077736494084904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0656291e5fd0eeaaae8a5a988e6955bfd0153b6b5a19432edceaf18b3a3031d8
Date: Mon, 21 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745237393
