Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A012D47E8
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763898114; cv=none; b=osJp1CdGTDU1v/qiFc5JT7Ocn6ARPD8Ao04YWTmKy2/ub39c1MJtEBjVGCdpd/2Hi20UdQES9DN/jacycJXMR08DvesGPsBwIUypq+yy0EPBv/pywe8VyhIjAoShlw/Uxgpid+W8+CqcYlJI1ep+WMb7Yu2YElClz3ksF2fhhyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763898114; c=relaxed/simple;
	bh=fPxW4VZvvm8atqEdnQCLw/V/aYA37ddt1pdd1CSNyzY=;
	h=To:Subject:From:Message-Id:Date; b=jM02/UDjLo92c6Fv/w/HuvDuoBnmPpkOmK9VdHu2BcVYwZVIg5miuxEqlD7RCCK82+QKEQx+CYNRCn9vB3hYa2uzaKa+ju5amkA0GBE749jssrxiEEQIlBUJXMTAR/UXrT43jM5b4uu45vzy5VMjVK4Qrh75OIEslCYVlut+0P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G86Y9Ioo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G86Y9Ioo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD98AC116C6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763898113;
	bh=fPxW4VZvvm8atqEdnQCLw/V/aYA37ddt1pdd1CSNyzY=;
	h=To:Subject:From:Date:From;
	b=G86Y9IoogaxPdaETpTm68hxyo10AeKBnM3DWTThWIIGqy23MFLoHVtUnvSNid93Jo
	 Rwohj8lYMN05GCiLQYoFQ7Fk0H6XFaIsGHqlJurI2Ttr9Z3mX5WBt4AjCGLM2h/F03
	 mSi2vZtA6tsaHIuiwnQAZTugD9W1cKwUVcqPy+WtHwAvfNmndFXYxlacU8tNByAASU
	 oeWKlTWKWGJtVqkqHQLtvfYC9A02roZ+tqmJqdP0YVWBBCAFhi0w6h9NV4D84vfzM4
	 qQiGAkdEClUC6ueHHuNqK+5DCeZMTAttr+axF5Np3RiOmkVp+wF+lvBVYCXldFDG93
	 vjJQ0taXNhWZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FE7CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389811358.5529.272260220324581395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21e99dcbc3f531853904ae0cfdfd1d8968a5f651069b163041af4933f3a7e33
Date: Sun, 23 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763898113
