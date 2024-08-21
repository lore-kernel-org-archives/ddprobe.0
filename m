Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B01A4AAB
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724235354; cv=none; b=oLtcMyUmOvGoTZH8yYyXh1LpWkm2gwlvRVo4VcADLS58A/9v/FTfYt30v4WWRvS1f8H9aIBaBHhSNhd97AZBJPBA/19reZ2l1lJdRFD0llsecboCN2RjOXC9kCbnC/R3KHpdujH3EIvr6N4lGWpGgIQ8jlKxAc72DSWJtqJw610=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724235354; c=relaxed/simple;
	bh=BufPIHodm6NymFsXft/6+TUJf3VGrk5VCmw3SwRiyvg=;
	h=To:Subject:From:Message-Id:Date; b=sBuMhFyT+2aOqgHmC6/ropKaPiKDWMhDtfTTH9F0ymjfejxemTojKYW7/Bu8qit+QCb58iBN384WiAhX6lJUDL/xk8Xf8CLwFy0sifLv5SrMYQX6mCAumliCYE2hv7TKKf2xxzjfFJdNziqRZCXnaSdr4ctHAx78Sy17FIMxxMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIAsauWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIAsauWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A325BC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724235353;
	bh=BufPIHodm6NymFsXft/6+TUJf3VGrk5VCmw3SwRiyvg=;
	h=To:Subject:From:Date:From;
	b=QIAsauWKWf3YPXRE0AGQd1VnR5MUIdU+XRnNixnz5xQ397HIa9d5S/Kkhq/lZqDM7
	 CoOfjgQQdtk2QGsPyRjIMJ5QmuqAF5hLAcRqvW/4fKTn0/vMBNRSrG0kySV1G+JH/H
	 0P/INS0vMX5kzf7HhW0DAz5FRzCjrBKub1mD/19EUDfh9YJeWwPR96IrSrw66l3q+f
	 O763PqT5dBRk0f4aYuOdzbYtFf4Na61lfY0y4EF2BU8zgt3Zdcjwso2BiEkf12fMua
	 +n89fzEs/CMqjd8SltkPiHxfd9HlU1cJ7Cim2JvTGkZtCg0kCncZn8MppcD8lq3Pxf
	 iWMSrtcfRyj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92467C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172423535359.10205.12826290886946551333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37bc7891947493fa9d3304a44816416fd186792f8e44a45814566f0d8c480ddb
Date: Wed, 21 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724235353
