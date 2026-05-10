Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FAB2E173D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778436034; cv=none; b=lDZXatH002aS8YkmmjttnDgWSUl5zx/wticYwgkfPdjmaQqIa6WkEpUCYayst4pzVyC8GWWK85thhtM2eNbFUF5LKm+Ry7uRlZQq/fgDt7wkMIR8gEMx6CP/89sXx8n4OB4PhipolrSFMVoUV1mrBHAjxcNMWypOt3Q90knYZCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778436034; c=relaxed/simple;
	bh=GYVxIhr9603zGQuSHap2DmcYnk3HSOtfHJFAzdWMElw=;
	h=To:Subject:From:Message-Id:Date; b=aUYZEeCWynizUykztbijFHASkWazdkxRBNDnPWh+edVXOkWxht4lPUyHu0H9I+GZ+6t1KYD9Dotub5YyowS9I3ppC+nQkCmIyM6DtifMlnVPT7V/lShx4/z6lHYEzl9DCO96Xb0BQBTXA46dGoVcqadI0ghdRxIWqDgKsdY1jr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgQJZDk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgQJZDk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C832FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778436033;
	bh=GYVxIhr9603zGQuSHap2DmcYnk3HSOtfHJFAzdWMElw=;
	h=To:Subject:From:Date:From;
	b=cgQJZDk0ziyGHGPCJC2o1NFkJWZ4f4mEDSJm9oQrlZ8vexrV6HGSyG5sQffJ5Ubgz
	 UW2Mldi+wYVuN5fb1hNqS0jZ4LvGT+xtKnO7zMt8W+UNgX2VYa8ja7AFvAvoN2voZ/
	 XGtAI+v0Ri59AiSXAPP93pnl0VaDcC2xP94kixnr9nOa4fvLL4A4nEp1lamtrbetQ/
	 vM2Y/E5BuVuYyUwhxwVH5OwW4BMpVNh5jF9De8bbx4D+DrD9xf55l6XoEhsjDvor8U
	 bm9ygIAxyG6v3lJayi7Zqd8VWZHmv11XP8g4gjw0qQHswNOxGnoiFumEFZJMygLh9E
	 /ZdGHPq+6ZmNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B330ACD37B9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843603371.24180.9728046968398740136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427b70d8058043de8ab2ce7adda518471b5fcc37c1bd9d66f31358df5edd5d48
Date: Sun, 10 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778436033
