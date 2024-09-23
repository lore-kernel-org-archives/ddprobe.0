Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C7781749
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727103954; cv=none; b=J5hmauCMNi3j6sbl1PcVQQb7NUlLEcmW5hgYbh6bmd+lCq+bJ9nw4agKzKajwvymDvnb6ekQyVfhGhXU0A3xc9xJPFbDXB7y4RoLj/4fuEXvnqTRPdQ/HrLHpNM6Q06D3Z38HB+avy3sf6SuC6VuGEu2ijoQ2veciOopDDGRqNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727103954; c=relaxed/simple;
	bh=H5qFtmp1KmWtLc5UM96WGPyqMdDr/koqahdk+wJfYMY=;
	h=To:Subject:From:Message-Id:Date; b=gQDB6aG/a1QWGtliHOflaZgOTbOJIZCa4aU4442BTWJBRZft+ow1Z3Xx0t7ka/0iPIU4JpcSBmwPk1jvhrhwmyy+saMfs5RcoMNhAZAxDpaVB1th2SQgdzb3802y8xu2d8TlCzV8diwP62hckzW3PS2GPJgSv2/KgX3LeGDy05c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBKy/YYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBKy/YYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E62C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727103953;
	bh=H5qFtmp1KmWtLc5UM96WGPyqMdDr/koqahdk+wJfYMY=;
	h=To:Subject:From:Date:From;
	b=hBKy/YYOUNsYnOTDkdMAqWT61U8ZhlIGvsrfFaReRvjBJuvSdBWgWRN1inuLVlhhz
	 EJF6lNvDTQTHRpgS9P92VaUOG1Yl7Cz+l47ieo1yFAeekDrTCTJWVvIb/wUEMr6xPS
	 uwOspi3a5qZjpSe3n57Iti4qahVKFj4axkv2MGyerXkoavEpU95ykD2wDB86cgIeM5
	 i8asHOUI3buiyRDsBIzP+4K76/BWqsdcP95We0Xt5L6BcJtAFBgworp4bTL24Q5ScL
	 9dtWdmTfSk5tpTeAdDcPJcZHrqmq9E5CpuHbeUX/xd76UyAI45KkVW03DnKeB+zYVz
	 +J5jva4BZdg3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C56FCF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710395363.9501.13514882702024228619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a467e8a66f949502bb7d4898534db4804ddc6772ac9e207cd9ba37a62bad7e62
Date: Mon, 23 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727103953
