Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8991865E2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729114554; cv=none; b=IapMVaCxKkJVcUkFWVBkUxCpV9QfB434aOE6bJbCKSK1L6P0kTKzSVK3mOvlC0X3gEr2s6dpqwBchX0wwSQAfFS75cNm6JKYjaZNpIoedS2ATKsVGLCIvGN6Vj5MO7E+nyFy3I2PRK80+X7jCgO/UWS+nVORMYFUpkfJNmqZiFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729114554; c=relaxed/simple;
	bh=6gRpPD+JhmBt6xkqKbDL/z+Ysvj670+JViej/MEE1Jg=;
	h=To:Subject:From:Message-Id:Date; b=R0VAhOqTR+kbu3EYxtc1B4fU7Y8+vkf46FpU+YlgAVX88fpHD/19lJWsJi8uGLigRSdPBDMP5ekMjvisVZcgwiBOSZ00z98Olbn23CnzcexM1MfRybsNAux9ZPCfY2JqwBat+qD0bcag+xFCHhdr4eC9k9NXifSWKXA2em4Mm6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqzUmVxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqzUmVxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C9C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729114553;
	bh=6gRpPD+JhmBt6xkqKbDL/z+Ysvj670+JViej/MEE1Jg=;
	h=To:Subject:From:Date:From;
	b=dqzUmVxp7kJ+zJErlEtIo1i7Bo2ypaEVTrv0HhqP6PA/dcfVXOs9cF0jyY4X6W1r0
	 eGpRL6UFw6uj5t4HxN5nwXeMJF5pYbJtbWyJxtEw49CeL0Voqgq+rjWdeiguwe7HcD
	 tdAF7AkLVQ00F29rQeSHkgTu7pybORh9G+wp8askZsljTX9IXPE/a0zYm22XgXlbsM
	 yJMAc2zq71I9azq4KJrwdVzUg1HXR3Bq9TAQfJpnvDJkxte/fjYsh1aDCKp45e/qJE
	 tvlT/7Kdw2dVNP9Q2VGw+b171grjHVi5YQ1N9GIcjSx8cN/1wgkOp3I5RLetO7o/oY
	 FYZ/Zi4kErafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F035D2F7C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172911455357.14137.163661354938251808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da548ca5d7a852f9c3fdf8c58f67fd00c44d37e1b191f5b34bc4c27fb474f484
Date: Wed, 16 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729114553
