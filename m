Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB0E1865FD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730667354; cv=none; b=qBdnkKG3aAMRgw4lgYKnL+kA9aSfwFk4K20YxM5XR1UciSITfoIbKWPPYBwWMHGltUOCgOhCuxhqjudXAIwz0uOynxZuhKcJD47Oh6/DXgFig3au+tIniiVN7B3S55U6WeesEl6Uo44XXDieA9Ym46zOKC8BtEd+EDuqrzzlS7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730667354; c=relaxed/simple;
	bh=kyecWUVNiJamgwh6b6m2kPIvrnfzgRgujPzEMPEaOzU=;
	h=To:Subject:From:Message-Id:Date; b=db5VPWMiZ5Pb3UuRzffVGSbf+0kt2sVz6l6qRWmUe8X56uBIOajUHHr9JbHTeLD6TF4xTan/OhWJ4+z8ij+zp3k8BdH9wE7L/dNp3M2vkv/z6qMOTnfUh0GNJkiEUTmax7erxVnRqzUm8oV3UzKf/fD8VUXQ3C/8Ke+ZaY//pY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/CiL0RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/CiL0RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4D6C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730667353;
	bh=kyecWUVNiJamgwh6b6m2kPIvrnfzgRgujPzEMPEaOzU=;
	h=To:Subject:From:Date:From;
	b=G/CiL0RK8cuz3uHOnDLFwRRt+OGqciv0yPmknvxA4DHv4jQL8u5tdiLnPy/1Aihai
	 Qb1fSil2v5fSEBhioi0xhT1OeSDGWYap5/PFSjYnxZHJZ1WS8BnXk7JZniIIBQziF4
	 TOEdd2VjIZpHPLMilbLsZ1IvFMcQaPN/HlHZUr1m/gthhfjcVTW/g8L48ACYcy/55W
	 dLvikBbOxbWz8g4LoH7PxR3pt8tdc8e85vv/lJ2q3er4fP8m6p0fKQWTDeeC0oRCZv
	 gm3Cy6SpVC1wTHNBf808igUAQDLcpibom2wpdlZn4b4t+gTeENmRJsufyYfeEbFIui
	 qlzyolLTnTg/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8AD1118C
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173066735360.17523.13519843561920748934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e9760d6c3cc66478e2728ae4e35ef98061f8f9a0aa3dacb8ffde27997523f4
Date: Sun, 03 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730667353
