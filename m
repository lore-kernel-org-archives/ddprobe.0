Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DE412BE8C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714047083; cv=none; b=XHl2Ns5zLL92Hy2SSEUin/yzh3BCFPZdpUCna7dYJF6JFitk9W/RGj4uE9R7Zzpztzr24c35Eoc9QYdt2ww+9LTs+Vha9iCtyS3cpZgGLIhjnnYXZIH9bgum2Ma3XsmaxX6LMltHD5ioh0AbIS8ulbfsoqSZHXoEQNfqbgPhuNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714047083; c=relaxed/simple;
	bh=28EIMLUniGKMKHaTIEW9K2RI//yx7ETYBbwdayhjXls=;
	h=To:Subject:From:Message-Id:Date; b=sEMShzVPJE76PVW81f81yrZb8LkA7GLJaGbhhf9c9QSghPhoBWR5SoHWS/Z+SF6z2aHDojpGnFeGuB068LO6Vib4yxdRU+yoJt7K4CmV5tSoND7Sp4TcHDYLzYqmJqksSWuCHHqCdy2rML0bhePF7iUe+xGEdf5vPqCWTKPw+jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuM073mR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuM073mR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAC2C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714047082;
	bh=28EIMLUniGKMKHaTIEW9K2RI//yx7ETYBbwdayhjXls=;
	h=To:Subject:From:Date:From;
	b=YuM073mR+Dc8LBEd1+BUbulahux5aAiKcR1/evp4MwuZk60RoQvSdbPzl9rcHhIL/
	 /kz8CyX6zetqvA5RdLnikt+Me2wD/sdCwtUFsclNIOEDjSJf+90BGyCCpDeIhNWUdm
	 S5Aar1y6tWQcokdKWpeTbnN/Nmhzb9kXzZ89K2jMk6P/shxRi2QooeW1NOJeJJB+xG
	 T2Cqh108KlHBiE0E5St8N2vvLhTWHvzNpUed4hLz2cutZ1Z27m7svdVK9w8FmVdajB
	 OM4vt5Mx+F8Th1Rao5Hn6n41v9kQs2ktiQzRf0oC766YlXm+w1WWYhNJeLCxwDviTV
	 /qB2Ts7RdmiIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75A1C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404708280.5895.11080163977571989176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06790aec013068e2c0c88e6cafa1c7cea13e6016c6a34207a923a24e2caa5418
Date: Thu, 25 Apr 2024 12:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714047082
