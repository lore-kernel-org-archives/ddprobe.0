Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2505726B971
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780355074; cv=none; b=Pt0vYM2Ec87rTqRrs/T7ya/HPi3HwRBeoGZlCQL4m3+JzyPpxAgoC0Qkk46xDRy5HTwVt39RBw2wtr+V38zOyxGK5+oKmivjoaA+TsTIgY5Dx+coYAKPNdmnYzBhoEGnvsyyXaaqglXLvb87ZrPNN1ZB/p/Gi84rQneDJNde9FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780355074; c=relaxed/simple;
	bh=oLiNwAR/EN81WlEuvKfZ1AlBjW3j2C7OekRUcfhv2Ww=;
	h=To:Subject:From:Message-Id:Date; b=aNZ/vZyKT/TarRtX8zSzoGBNgyIU8RiUr89hfqy8qT7+XUTbhSnl+1S22InBGNENV3e2X5WVcHwZaaO/qZTVi8/X/qNpumOt6YoqG+fw8cVanj9VfRZZFrf6/TJsZGL9m1po+4VWKT7riRfyoD0DJWtbc2kvWb9sRZkhnMs5xqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRnqNB88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRnqNB88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07B6C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780355073;
	bh=oLiNwAR/EN81WlEuvKfZ1AlBjW3j2C7OekRUcfhv2Ww=;
	h=To:Subject:From:Date:From;
	b=iRnqNB88j2hxxUO354lVFn28gurLKkvA46zqqLGSvHyZURttv1pHcK1yoKMkcIABy
	 v6LNemM5eVmqMQWksLI9PFuQgdO8QNuzkraf1yMcePNu5is0n/xYhYk7WMfkONusYm
	 pUwkEnuFrKMCcWirwbYhBV5k+DuMLDCc2jAtR4snAa3yf8qI/j7uYeFSWBT77wTN/j
	 mgtWpnhonuO632QuXsjIlGejMW/yXcC43LtMmQn9hKGpIQZoPJr1XtvCuuXNEVf6g5
	 +812AFVbv6P3foC24OfS8X0us4Z1lusDC5ae2TNSk9jCJkjbe6kRIaVfBYPFilx5Ex
	 YpHqJs5F2UQ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F5CCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035507369.27999.13503635636945637719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd69000c269bc36aceeb544b72cf9c7297583e9694b02027e2e424a6f52f43cf
Date: Mon, 01 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780355073
