Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4012FA47
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748132394; cv=none; b=AhHt3fGi0n5zv8sUqikIOAumyVVO56aiQ2Sh4g6H/af3TmjnCmpmCHNQ77ij70iOvxTBwniuKc5GZIr2yXeLOnWF15J/SG0xr2v9ieQ8tlxdBZbJS8w781WI+AKJnIB/h1ojEku9PCEBQ3PeoFJz+Gp6ErbBNGaDvb2JhjH3dtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748132394; c=relaxed/simple;
	bh=VaQSslZIF98mJ79+YJ4HTb155TNckGrRFOI+q92TZ1E=;
	h=To:Subject:From:Message-Id:Date; b=Yziff4+qFFgr663iMXvPC/caF3qNTlIArbmdeDE4dxzw/DZ2lyEdRNc+9kGqijXpTecFORowKVv/1IU2fK+E7pg7Pup3O6tFPXJEAk+WDG/8As7LM4HCJWHwUxllEjJPG8KuTTTZjBAp9meJYOUihjx5JlA9Ki4eyY6PW/DtfqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOD0hus6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOD0hus6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3517C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748132393;
	bh=VaQSslZIF98mJ79+YJ4HTb155TNckGrRFOI+q92TZ1E=;
	h=To:Subject:From:Date:From;
	b=uOD0hus6aU44YeVLQgifB1vk5cXkUj2RMUJUnC9E/fcODP/9U3NMzKwxRYn6pIB/Y
	 9m4PAAtcfkGTigdHKCPpW+ha/8J1rnoUW7hjuMMySxrPfbKx6/R3bnO9fy29GJ+vf3
	 V6hdgP3MLaekkbqizbSOUqLxp9quleYC0X1RGJQFOVWSZniKh7HmVvG15/ZZdm+/8D
	 NMjGWk/Vg0DG1Zt5YdvtIaqqxlx8MtdBf8LMDbyvjIfIHxeNSud0GK7OirW6Elktmm
	 pGG6AKgdup7DD4Ma0AJZy6O81JCtpGqY0oFkryTVqVs74jhZAFQQPlxSBYm2qtwmPu
	 K1M789oRw3ubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A4C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813239357.1253.10092138450320188747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feec039cb5a6d6f908246fccc724da3ab7d7b7daf04013f8ad24c05ebcd70965
Date: Sun, 25 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748132393
