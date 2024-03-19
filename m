Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F913BBE0
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710881296; cv=none; b=oSy9xlh91oJ6QD4aKnhe501nB0VEmGFixxQYmWrrpE8ladH2m/25YeAc3Q7grbRVGHT6aIIGfHRESwXttz30FY8SWzjy26KpzZVQdgXCV2byQfVeWX6p71fkuXaDlQzM0EYr8LtLXojVWBO6UQbr1Vbp+RkAetfgguveL8N/WTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710881296; c=relaxed/simple;
	bh=B0dxrZA/+2LfskOeZXZ3WjmIR6AlHL1uwAbeOEeGwUI=;
	h=To:Subject:From:Message-Id:Date; b=UIQjP8AL1UtnF7awN7o/ddFEkYGVtwgKnFebma2YcP//BW/PY9KDG8Y2VfsulPUYIGnnBsK69GJUfKifT8Ntqu90W/8uIEe6JSVSJd3ZQJV7D++NpZG9eoUueXqy6KhpYBy8RvsWaFXDuIsM39yqn+PpWV7IpVVcU20HHQo9R7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq21GQwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq21GQwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7509DC433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710881296;
	bh=B0dxrZA/+2LfskOeZXZ3WjmIR6AlHL1uwAbeOEeGwUI=;
	h=To:Subject:From:Date:From;
	b=Tq21GQwBFKv7yhsimqFx4p57/QFOr6sX4WpfENpqKgl0FvsCJ7MYeH3hPXHkaJfEE
	 N6N1WKVeEIi9/KNGYxncAkvcTI70MkR2xxiX/CZWTwlDASb+8okQliJzLEg7TO9ITM
	 zHtjY5qoLxuT/OMHwGFY0ZO+G2ox+UFxC1XSLjpFGLU6rj1FhgWxMgnHFVJuxBHoSR
	 u5qrUhE1/LUCw+IKuIT8jGeUzDb3bgzYumWD/OwDfZWaH506BXqDW/Iw0xBeocv8+5
	 5Ro8+K2ETEmH6oYN4aXsqsbEtXiO4FDetDMQmeSVlMAGPEilBRAauyWfCbN8ZaVn6k
	 KxHAIP4oaK6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648BDC54E71
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171088129638.12145.10884353602564685609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c008544ef1a40813b5fea7cb80d4da6c3d6459e972fd92a657c4f5c9304d4d
Date: Tue, 19 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710881296
