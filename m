Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6870822CBD9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781489194; cv=none; b=BlVXj1PRJ5PpmNGdl1BnMHghwtLNBOZd+IB+8aqPOpr0sOPfnfuStzE+r2I7VZRkn/zDrlj3fp6vsETk8i3clV9VVkOwosXdZuNaVYQf/1ctRWtVISGjK7sfPwQ2dO9OE2vvN7x2h8c8Hb6yM+Y8Kmp7ep22SDPUarznAKV1JaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781489194; c=relaxed/simple;
	bh=bUw7IV7HEOD+ehm7yn3yJJKx/YweA4Th2K9Y9a8YkA8=;
	h=To:Subject:From:Message-Id:Date; b=U1zh9Pc/04IprQp7s+LrmQLn420nMZtpKOp4xkxfeoVZcmmDsQkaNZ9eMU1Pr5uKr1TX1lE7oUIUl1by3Uuk4vmvenge3G2cdqbxkvPpEa3RAsggZS7QpPpCVTDlnwLOs+mHwf0wD2NB4dxuUv9jv4RAdocPoEN5eVYJYMNXNSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlgGY2Qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlgGY2Qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A7BC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781489193;
	bh=bUw7IV7HEOD+ehm7yn3yJJKx/YweA4Th2K9Y9a8YkA8=;
	h=To:Subject:From:Date:From;
	b=OlgGY2QtUFVUQVrVU/TXWwRry1mhwpkCbHSLCx0VbKaEp8Rstxu1eMFvn9uYf+gD6
	 ouuJXOfeMmoHVz+p6jbmq3Nz0pNV9XRUrHvxK1qban2Is92woJOVRKUuxULN7AZOmJ
	 TQoxOuUi2ZtO2dBt1Ow9F3bELqvcTxc2aqMKvw2jIkmv1D3c7gvkx8ObxyiK0s29Gm
	 bwIogxkVhTQUjz8Sg7Gl5r+7bzCmb04cp9CMfewTBl2SGy04B2vvKkxd3huTnNz8O7
	 l8/1uLP/WeB84asVuyFjWxQExDSP3yJoxFMvDDLqgl3fRA/j6QI9hweuAwBV/OXN1f
	 OL90ADA9Wlj9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4DACD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148919371.9408.17087990385083135259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fba33ef884714e6810cf220e6e6fa549c74e78c3a30dc9cbbf0ab52edd026bb
Date: Mon, 15 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781489193
