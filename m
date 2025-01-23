Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CFD29B0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737614154; cv=none; b=POkM1CAWbCYBLucNHYfGP6I9Dtk5BINojoFbDyQ8lq9w3rqrCQSICiRf81Tn4h5xh8U0uMBepGttkUc9Iiwz8jyvzm846NncAG/x5AE8BlTWqXT4vRw6ArGIipLknMXMX0hib3I+furSfAwhGOYrlQ/L269AG+oVZavQu7YTpg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737614154; c=relaxed/simple;
	bh=mP5qbnfT7EccdFwGtInkayDcPTrWD86oBBj+Nj++zPs=;
	h=To:Subject:From:Message-Id:Date; b=iNYBT8OoierP1fI3ucdsBoMwtbBlKEN+yfkoulqtGDhXlqvdb5cWijCMwpSyzBzfkCSkmPIyrG2CXRRfdJ+8eDR/F2x2+s7x6Jo1qW3oQO6I2z77w9kWwVcYvgb90MLb1SXt0Cgf6e6vLhLaF2V6k/vWgLgjXmQnJKQeuwhGOyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJUfSUSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJUfSUSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBA3C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737614153;
	bh=mP5qbnfT7EccdFwGtInkayDcPTrWD86oBBj+Nj++zPs=;
	h=To:Subject:From:Date:From;
	b=NJUfSUSMUgePM3MnxUpc8a8lPk/dIvwU0PZwSWTYSey/ofo4SUhqFrXIFyUzwd3OJ
	 WQ0Lt2Iq1dtEgquYfgNzs6lDwlZlSaMgnJsQiTB+POQdpupX0+3D2752QxTxjSQCiG
	 1d1eFwDoO0gh6Y1XZINJEVxxMLrnUYdLkKHxCC23CLxy7887Zvbvk8wj1ewlO0FZJh
	 UgliJAbsx3F/pyFZhcKDoVNIHQh3psljegcgSyZWcH5NbcJ29QcJHtfhhzAf9EwIqP
	 R8MQR/+AW1cZRs8U8GqvUR3JX+VuJz3sTqKMNyoIPIY9wsOliayaJfY8io0ilBd6ee
	 hEWrAYIF+oy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F33C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761415359.3711.11674608355261267881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720f8fdd14d3495b7e2e78ee9bd08a4bb1cfa632a7325db10b75742a6bab8433
Date: Thu, 23 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737614153
