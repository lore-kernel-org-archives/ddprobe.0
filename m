Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B1DEEA8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758481194; cv=none; b=noGm4kUJYjDkpvqLE/gTxDag9B960M/bxK9z05d0rvV/8lkHKwisEQd3Z1mvfnBu8AlC6bKl4JrvHR9oDTlrH3LKKbBkLe9IPBgNwQP53sDY58LCRy7ojv6SxNLx+Zfs+iX5zWrE+COuGMJNRZod14dadgcaTs30J3iCvtpkAtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758481194; c=relaxed/simple;
	bh=gJr/Ij2qectrj6AUvcZkFWbU9taScupjOqzkHg4eTJI=;
	h=To:Subject:From:Message-Id:Date; b=JpOsPF/BNXD8jJbPmTZQhCp547G2GbK0WUdq804gvl1aynYJXVT09GONh3p2F3h4EK44QDl1QDeM9Bx6GvB0aAKlTXilm3A9aHc3HpfnHFc4/Kb4/GnKrhX7hcf0J2oP/sUbEksZ6sZazCKkpRnYnd6hS0Lhukd5wyfCKDRkWb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6koQtB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6koQtB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF3CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758481193;
	bh=gJr/Ij2qectrj6AUvcZkFWbU9taScupjOqzkHg4eTJI=;
	h=To:Subject:From:Date:From;
	b=E6koQtB3A9aq5IuBUB9un1AFEAw1tPh46XEfoO2Dv2CanhJR59g5sdcyI+tlmuOFD
	 iB+odqUlbAAWt95ij3w2OcDyuF68BYkNXhO0aCdMYLbHBkaDBh0jrK2+HKdnD2jpwS
	 cuqcjOKJiwQ5NnXmVS/6wB1W7ANSRvPqAxtyFGPF7CHve8lVWZ0Z/Pvnq9/dlhVGCm
	 RVPm4TT9vaENobunIQOduWSpfWIm1PwgySEZ4qDm+47xeNBaUYm0gYQvtuY8SJbvjY
	 IasCbw7P6ETN1Ms25glV6PVmPASHUxf4bKvRQV0OGFvyACGo99NFMTFaanMZwUmA3B
	 yFjciK+Tte0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB62CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848119357.11593.156562831422137401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3052c5b932283803e6bba1173d685235081f42b8e6df0c5c2b5d3efcbfe57a7
Date: Sun, 21 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758481193
