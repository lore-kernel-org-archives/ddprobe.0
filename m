Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F9764D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737960354; cv=none; b=U0oh7Uly3gR6sUb0AnD0eFexAgFWITCqRRYTqE6qL6SCL048Aksdv7olyCP+IRcgomX7X0tFhY52deXMn/Idj5PyJVx7yOWxdV10Ag0YMI0lKK/P7ndrmR3fR4FwyWgTAK16J0zVbNKgAUi8PiIlHMN4tLQoDjDQirW8bloGllM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737960354; c=relaxed/simple;
	bh=m8uPCyRLqwGZ777GiSQMON+YLvs6HM9p+uP6zKa5jn4=;
	h=To:Subject:From:Message-Id:Date; b=Ay7hEd+CWg7tZghwuAqiOYa1PIpi0OpfrfNHCqGvoLrCHCTcC549DEGHSZyHbQSsMNvhzJMa/XL53Z8hxSsPLvrYB4HsIDZX2uJ0hH092euxdmaiUaaDGBC6qJchvsksksEE160lV4UxhbuDjEDbregU1QcRowg0g7BxFDouA/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keYLWKdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keYLWKdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 183E2C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737960354;
	bh=m8uPCyRLqwGZ777GiSQMON+YLvs6HM9p+uP6zKa5jn4=;
	h=To:Subject:From:Date:From;
	b=keYLWKdwOB/ZsXrDpDA6bCV+yrbomFtCJSlJ6cV6F9rNKbtH06uyixzCntoSI/vzW
	 1JvZbnBOdAhxyIIE6vpMgqCgovs9UC63gk0tsZqGq31zKWX+3EzsPLYbFhIYhJqEfL
	 eba9N8CzcFPj88eFTbzcJskgokKWRhDgJjBlqUN+b+Rfr/eXzrqFs3flCKdeH4LkmH
	 b8KmGpSfk+UHkxAkl3W2hbEEARePKSb0X7KxvMvllEuJeKWbFCB/qfcfScjrSiJ4iF
	 m7O+9C6RydASkLtgs5sr4JCVkWMtEvD9iyhPa7bOHBvz+76xROxtgHnU692mKPsgZa
	 DwN6LodE65c6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5439C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796035381.4813.17212111855133916039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a977d7161e98d0e076089f99fd3560e8210561e7291da6402f1d500f03a0886f
Date: Mon, 27 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737960353
