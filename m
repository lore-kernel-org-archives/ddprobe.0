Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A005058AA1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710194296; cv=none; b=RAxtTN1iHEgBDQUsciJbRuRiiYObMa9FYX2q7C+jGdGhcgQbQu1d/Hok4+0chYA6y5PUn0aJ+znGI+9MNSE3nhLZNTby2S3kETJM6J1WikhRWmTAE7q+g4yIpUw8uIZgVwglwHWYKf7EClMo0V3HjKZTrILcRtLQVVQ2iHCJHkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710194296; c=relaxed/simple;
	bh=VGnv5f8P5uDd7D6TSqJQRvJ+HaD22nOSX8jr3CDZrwI=;
	h=To:Subject:From:Message-Id:Date; b=VaTB/XGG+uYb1b7Uyh2hBSUNjyGrfybc/x1lnRvJ6Euzf1B5f7ZWzYC2cpRPBiDPqw/z98AOaQWPfvN4kSRaDYaHUZ18ZbHK7ceXHFtdpi5mkbTU+8CgJ9RUraqK7evEchZVWDnGctL28a8HJooa23+dOPVLSgA+KSmfYH/LwJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkBvk+Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkBvk+Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E93C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710194296;
	bh=VGnv5f8P5uDd7D6TSqJQRvJ+HaD22nOSX8jr3CDZrwI=;
	h=To:Subject:From:Date:From;
	b=ZkBvk+Jdg/tDEgTJxdBIQ8bg2js60XQuVZOcdHrA80LVDb2KdZriCVriUqV3VDSxG
	 xOqwiO+rFKjHFe4gJPYa6SMCm/l3Xiww26ikRqAlL56D/w4z+kCGW9qFnTHSSB2KWv
	 2Dg7YyDAdZPqu0Vkc+Bp4e2B6DlD/24ii++Ox5it3v8Yr5xJ5XGN1epJ/TG/SU8NFz
	 HNPr/bUKiLIe2Q/E62YKEyNjcMBuOisqFxratjAqR98i1de+htT7zcF3PNF6wWyEGl
	 wlpZk7HcNgHwivc8bTXiZis1qjJwRJ/bYFbnJp4AOs3DIk+oSXyPQS/pZFgZoAecHl
	 2o13heXypDATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA05C54E58
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171019429637.19872.15590680865315671736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1381cc15029ffc8b3049a01aa331d4cfa8cfbc909c390338f86d42cf74543b
Date: Mon, 11 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710194296
