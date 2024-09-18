Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2065045BEC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726649154; cv=none; b=WVyOaQgf++nMhhe2gJ6zvxQYPKoCIg1DY84BCHI0cgJoNmx2P8wezj64uhkVf0Y+xInnwHGpVmn9WKd0iGq+UqcKXEv+4zL4E3GH/njZmTjtyERskaVuTSDkXIwRgvoYHiovpKLQ+NDmO8ePufr5x29BG200OBn5OsusEbOwr2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726649154; c=relaxed/simple;
	bh=PQsxmtHGd5OzcEJ24Xscl6tCIEk1yn8obok3z4qPUco=;
	h=To:Subject:From:Message-Id:Date; b=ZqU5l61H2LOX3BPfQJDYNIhuu/GqncA+Gdl6FIY9uQfNdFMAcyxjN2q3orrN3SJpM9GEgKUumuJhm6RFbw1nDkskRXIUdkEodWdNkCJdB5Rvb9ercWO6bvITHtcPyn8mcwFmxzEZ384lxQjKs3G4IU6K3hOjtd4KtlpjbuauQg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiAfeW3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiAfeW3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726649153;
	bh=PQsxmtHGd5OzcEJ24Xscl6tCIEk1yn8obok3z4qPUco=;
	h=To:Subject:From:Date:From;
	b=aiAfeW3oOVKgbBzj5pu+XXfL65BCiOiRCGGShC/U6PGS2dmVQ0LP+B2MBGn+J1nSK
	 4NytzKOrobRyvKqdRNinqas3fJ0z9uSxrk4NV9SkdilX5InGqpt9fzB83Qo0NY+DAm
	 bwNAwPWQBM47teIpTp3PqnxBoPAxbZY4Kkh+ZGYFVmEIQtFsokTt3XCN6Gv9MTarc4
	 wfLemnBArF/f5xXdL5mqCcRYsA5G9Xn6S+oQb5GhiiIt4hr/15msct40jfP5rKT+cN
	 rY4L0t4cnM0htfL4I3aJo0x5B2vJCqX1/JXvuym3e6j8NpMOmRNNXZUaWDI2lDKObg
	 uSLsw5PevBKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E1CCD192
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664915359.21570.4604812261629271736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942b00dc01c44d93d1fec199810255c09d8b56f206a03492b90667aacf139f00
Date: Wed, 18 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726649153
