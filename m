Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7816AB8
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717026263; cv=none; b=G90QCGuUBuJeSy03aekd1fXRxormi1VYnNgLkeLKos8IeAN1jtdB0ngcVV0opkTzUUA/TGo0VWNO9PkLMweAEeYXxykE+hynMMCbC8V0pw74RSOmvQwraOhy4WtRHtvuw3cTAy6+tWnT8izIx6qF7nXarCjSm2xQ4okMb8IpDvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717026263; c=relaxed/simple;
	bh=hQ+BoqeZiv7YdmKvXTV8EK7H5RJJlyYNXflF1wWbiW4=;
	h=To:Subject:From:Message-Id:Date; b=dw7HKO3Ay0QzBXA4yuwP43MGbNtMbk1vAL6x0edEg7jNDdevH9ecqY+81h8HcXRz9HgCEpUB1+hjJ8JCCfEfaXlLcYJQxSTOMzDyX2oCOLsoirYaWKi+YM/vY2QuI3SinHhiuqlhGuJET/m0HMseM6jELb13y1H7KCbPGEb1Nkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVVGB+SW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVVGB+SW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEADC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717026262;
	bh=hQ+BoqeZiv7YdmKvXTV8EK7H5RJJlyYNXflF1wWbiW4=;
	h=To:Subject:From:Date:From;
	b=NVVGB+SWb3cPSCxMXg7EX2iPPkS2OSLzi/rMv2Adh2zwdnRwTX8AhcQUELrGeGHC2
	 8X09PO0quNjI2dCh5I0IGgoYZCRipqm1qdhLtjeR9hLR9VOQYMYngseI5Q9m2WH/KL
	 pvIH4W4afALUhVQbS6KElLRKzJfsnwB23mU09Sw/a4epK68oQY9rICc8NIX7Ew55RF
	 w7xpsuTRDhcJONj2dD375j5xIJVmWY4MiXTT9FCsDxm5ePd+vC8PFG9lnv+6WUAxHD
	 6YlO6PofwfzZzqtQW+0QE4gQ/VbiBP5CeZrlSaDKSRBZycBkTHfQSEcOq9CeE2FGka
	 qidoZYB9fp0bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA636C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702626279.16618.4006831313698788924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bb448423608220c075d93af5cf1efa084cf8a2c48e9ad9f8192a048949488a
Date: Wed, 29 May 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717026262
