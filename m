Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9F7365
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717287323; cv=none; b=kVBUQxKDs5tgDCGLvCvBAXLED198Vad/FaCZi3NPS7iiD4CmZujJwNmJwR8MRhNK9eVDo8dHAIKZFTX9nh4lsVSpb16ZYFjWob4KeYwlh/qMeyp0NwJ/MQiRr1o5LrazgPGRi40q5VXdLM8DYjJj9QBJKjeQVcWCC/xhtWvK54o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717287323; c=relaxed/simple;
	bh=jgmRxi/5Ui2ctk3pXnEwssJIeCS/mQd8s2yLrXRbeGg=;
	h=To:Subject:From:Message-Id:Date; b=VzDaBRB1LTdVVCCRVZ17WHZp4OgvU0afV3XBvY3eu1HVMzhewyp6VEYvziAi5cwMr/C+fLYbR/kQiWOhjkidzyHciCzwdCraIcn+DuqEiywarhXjQokelRm7tCetWSm318NTVoLYCHfh8WAgrMzQWU/sqpJPRFuzSEQpjx8so4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGcuYhhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGcuYhhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E069BC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717287322;
	bh=jgmRxi/5Ui2ctk3pXnEwssJIeCS/mQd8s2yLrXRbeGg=;
	h=To:Subject:From:Date:From;
	b=tGcuYhhFY3bt1WLj7TonLfd/0X72GzCDgT4ZXKcvc+qqbkK5ugKbtJM6wp1/ulAVN
	 xv/NcmPp51eNkXuO0sxI5NhhTNDrFVbkqg4xOzGVtrYNyQbzRBCS/3o8UrUNBiTvNG
	 zlXUcKzDvF1Oieln5uUmrSJ3VnXPUsVKIaeOqLB10SK/6+06Obv74O5KKp7A6HX/46
	 GPfsDuo2COAeYl9K/1k6rNRkuySvl+FfMIzRg0YLbFWfM1DmULvMJQaO0cflnionK7
	 39o1xNv3ffN7pWTWa3CCiqzrkWOfhhJnNIDbgV1f/7JPrrfugs/tfMER3D9hYiTqX1
	 rRpnjkN9JJSvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8493C25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728732278.31958.5116777284668138499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2d56512591d932512218deb3e251541d557854553276e56bbba2b411809b95
Date: Sun, 02 Jun 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717287322
