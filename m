Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204833594C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749311995; cv=none; b=uyoMZhHCJQpXc8GbuVKc1kWCRM2MJcY9syXPhMDMh/6Ak/nuTXAC2noNgF1/RDj/RK9LJfYr7RkJTlfPkRDX1JlrKJ1XWPJYPbP9BXkl6P7pD2OmMy5bGAmCXBr/TY2FJ+0+lFVAlpzzYf+DjmcwK9A1LG2KcsBV+KnWTB1kE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749311995; c=relaxed/simple;
	bh=2/6DK29E+gfHRRVDMXYc1vomAxt1aNLg9SuscJXmKGU=;
	h=To:Subject:From:Message-Id:Date; b=CyNcKDHEHSD1png10F0tQXdWyjyRv/SoAhsbsTe3BLd4ZPtkur/teJ5wJtuvxLBmz4oa5DG0YxR4z50TMT4pnoxb7p0lRgTHnId45VzyvPzezb9XZsk8yCCC4aYpdhG5QRmnxbEzewsqbQEUVp6/Wk/epNeYAOECu7ptCVmSaSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5xOnoCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5xOnoCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A44C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749311993;
	bh=2/6DK29E+gfHRRVDMXYc1vomAxt1aNLg9SuscJXmKGU=;
	h=To:Subject:From:Date:From;
	b=o5xOnoChzpabSMDpZv5QLEXHTcUuVNDTxah+nQ7TbXXWxiRlkp8oLLru6uQdCQvn2
	 45nto+NFMC4UaGb93WjNdLgVm2DmfjphDwFjU1Z6aDMLNuJ+/UXSw7rIV05Y5DzDJQ
	 xdj2giot1NmYyzwxdrjhLEOi8wrwsAOa/ATLUpulWJR8b0YozhsUVOMGJAVyUKV+CW
	 ULRBeX9xcM2HKT88KglulO/Uq/Px9z4ebnCFRVsGjtu1dfhLI0dtGwah1O1ujF18Vm
	 bEn7BvDoNWuKDgy7kfQUU/r5Ns8IsPLRNUsFyAzuWQ8uUd5sGHMrGMeMMeD9qH0PcJ
	 h72LQCUYMAkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A5C61DB2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931199358.18526.11873621210457231328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa4c2d136566eb5358168c87ae2c75a24528046c7ed3660eb5f3b2dabf3312d
Date: Sat, 07 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749311993
