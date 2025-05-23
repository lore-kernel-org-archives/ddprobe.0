Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C55204C0F
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747979994; cv=none; b=RkLHHF/moOXvemsd2SrU6YTWUgDcVAaOmrRz8hPiak0raMARfwj4SqdFnBF85O5iw/TYGr6zmpE7hcvguIWcZdc8V9T9N+OT3KtvoXDsc9EklDrtvw+jNuLOyFMHUzAeu4aEeXd9AyJLBbiX7UOnwWi4WtMn4Nau2xNE0j4z4Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747979994; c=relaxed/simple;
	bh=AvdNOBacj7BWkxFIWjXeVwVsGxt24ccpS1Kww7N+p7c=;
	h=To:Subject:From:Message-Id:Date; b=u5WbQM4TslHUvRj6p34oP/eedXh1r0GF3ZCgtUrBLuHe8ryYL1f9NbowAwMGa7Ll1hqJKKxl8cGph14NKblH+F3PrmAh431eZNhT3FOd6K9F3BlVj4c1rp8B1Uh/b8fnWGhEPmPktKZ8mEroSKOVxu9cfo/QiTZ4PnzKamDq8UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noMr3NR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noMr3NR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74EDC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747979993;
	bh=AvdNOBacj7BWkxFIWjXeVwVsGxt24ccpS1Kww7N+p7c=;
	h=To:Subject:From:Date:From;
	b=noMr3NR+TKeEMgj8GjnhHfJqzMzRGKkVua03sRw0BALX8d1WDWzasuUvbpNQSRg6q
	 u6tIS1UI4R8V2Ig6CQpcz0aS8KAbDDCU8d//fM0RqOjaD2oP0cteyqUYhi4d5nkf+5
	 TU+H6zvehctFVqTjNmqxQaeY3KwwicFGKBFZhgBEV/IZFG89X3HXUyKK/Nh8CI6vM9
	 nvvJW0MLrQkAXXn++CECdfLX0Y1x6oRgzCqUT7jhg7pSb50jZ49jX1JOx88EOqOgCT
	 6TQ6FWrvm6Phz79GpTpzrc+XamdFlHqMZAMhU7HZlo0N1Tsiu4+ex94eC7goDNbnKv
	 aqcvDdOei4xGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469BC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797999357.28320.312083143143380119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141a9f40f07679dad088494e61f0529de8456b3ee6b1d802141aca4e4690a5cd
Date: Fri, 23 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747979993
