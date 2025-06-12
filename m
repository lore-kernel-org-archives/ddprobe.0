Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3306E22424C
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749719994; cv=none; b=DEqn/rKebAWfHd6Pb5QvZgIzO03Ht1gt9D6ADusWM1Ki3c60K6fylP3/l1eSlgh/SgWNEO+eBOf4Hh7AxnLIpWkrmCuTW98XdjLQ+g2d0ktCQWBMdikZvjWJW1RbJI3ffJ60dOxrWMK1qOUdej4AqXyE+WPxxHc+Mo88GS0OCZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749719994; c=relaxed/simple;
	bh=Nmh3W7gD9MvBrGUm+9m89P3u8Mg8F+IsDmuXi7MbMZE=;
	h=To:Subject:From:Message-Id:Date; b=E8bbxMpJsrO4vKU5OqMW9dvZ2Jy0OofWYVBcEFVtzdmZdy8KiAxswMWPrUktJTMfliEaUoozHM++3KAOfy1CrUyTHIbut+4KWEqv2OzvtV3T7PLY5Hz62pR4YOtexwKScEonr+2HJjCBTsKVM6Pi5YZBt6brHz1GsIjkZtRZ5y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGWElPrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGWElPrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A550DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749719993;
	bh=Nmh3W7gD9MvBrGUm+9m89P3u8Mg8F+IsDmuXi7MbMZE=;
	h=To:Subject:From:Date:From;
	b=cGWElPrl7orOucsN5UeTQUXy8l/ixQeVDmkx2lChuhzdvjnHxA3m4uMZtwdBLLF7t
	 Ds/iGFlVRnvzhhLjnw/pDLnTQDC6L3zaKF4f+zzhaqolEuiLSHRPgkDV3AF/CGH5ow
	 8PbFHIZnIUI5igPS950z5an671p8QHm32o0hfxD1uxFbUZTHv8DWHF8OHM3EYN3m2e
	 meBti0RNhCEI3xdKa/ChNaL5ORlCjiDsRnbkRYOuYN/FVrebc6GMULoHxdWE8K0QBs
	 0sgSycNvdpcCVSqA/qv3NTsTYU5c/cc1Qs3fzg3/6OZcipgR1Ig5mWjb2NbTjH8225
	 QBRB65fMko7Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90467C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971999358.4495.12676988382181128458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3d529e281e447cbfa7f0609433f02b86bb823951e795adb7dc9d6cdc4ecc9e
Date: Thu, 12 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749719993
