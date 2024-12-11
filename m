Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD1A246342
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733928354; cv=none; b=ASRGDzEaVceE4pZJBKl0i996e06j0lZbF9TaiRZ+lXxmcdxFQtkjzDXc9+jEtOTYFbjUNHMzYAm8lcvkiGkRFzMEP12R+bygkLggKkl/pETVWIdAc0xcvqTUejSKwErDmtKqZchKmH3TCued2ywIPd1/3fAC/eB9sUBS42GzvLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733928354; c=relaxed/simple;
	bh=M7g5hOq0TqsrW7y7pBk2gzAaV5Ya7VxUKdofV44EVsg=;
	h=To:Subject:From:Message-Id:Date; b=gEduRM51ZD3xRSFSR1kHf+Sh4l0KsWtl7pXNb4NOqVlJYuQIaZOcooHVvejzXKhujUBWEu2OacRRtKJGXE04llFbdMhlVpjD1Gt+kn4VolCy4LjOQMyEaN3k7yPbBf0yu1d/PgUSoJu4wQ2rh8OhfSBJoVa3CxCLii7gCJ7Ppjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ria5PanJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ria5PanJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6841C4CED4
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733928353;
	bh=M7g5hOq0TqsrW7y7pBk2gzAaV5Ya7VxUKdofV44EVsg=;
	h=To:Subject:From:Date:From;
	b=ria5PanJDaWTfy3Cp5i6vTOV3FoUl3wq5e3HYgmaQWF7r8Cg70sBQCY6jscgkRGME
	 W42tq9rXt51HGpXwPrB/gXesJ7UKOYn75FiquwO3poYzTf8Rlj/XEymcIm4LXYUaEx
	 o8XpfjuFfX1WDcPtAYunUQGvTppPRGE4BSPjOR/u3YiYk4kiG8IsN7zzKWeDNO9DAS
	 Lidj5ZVtVi+50RZyuHxoBG7jwSvBiQ+cNUhIJgRudV7oyfmvluyKVJ4TO9P8LMUoDV
	 O/f499jyJbFPOdfeULHd9S+/3l6+cSwuGX/fyUGScO4wNxDYlv/ZPym7LsF5jL8x79
	 WNZOOfYxx7r1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D2E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173392835358.16610.15332368303401384666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7369f4f57fdf9d10f2b838965fd2fef4aa0507bfbb485ad7f81d8c7602780a5
Date: Wed, 11 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733928353
