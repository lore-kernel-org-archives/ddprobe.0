Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7522E3E9
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741018134; cv=none; b=p6kjAOKA1G21CVD/Nffj+Iv5L03GP5hRp6nXxrQx6H+w7X0awQo2z3Ocf+MdOSBJozgU8l4rx/laJNyQQwggBycsDY07o/ZacfhnUsovcO/aIZ6Vc4bc5mlFjezKNW/s9OrPGIFaDrtrCqPSEanxVT4QuZsTNPUZz8OGzdi0Vrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741018134; c=relaxed/simple;
	bh=nTz8sguayCOvSmhd3a2QgmdoX411Ym10GG2sWdQeco8=;
	h=To:Subject:From:Message-Id:Date; b=AEKqhzmZzmyO+onSqv/Pp/nyWZJNCYZnIZMSt0RZ5LRn6ENM3oYCAHHQmOYiavZtAdCtvWSkYVNtstbc7+P5vlLYuvi5siVnf0eY+HldziD6fIoMEFB5AgbL70N6+Dmd+0bFzh9SGnlEfZN3LNixyM6FU+y04JoyDkjRbrvBFT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjhjSNcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjhjSNcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC32C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741018133;
	bh=nTz8sguayCOvSmhd3a2QgmdoX411Ym10GG2sWdQeco8=;
	h=To:Subject:From:Date:From;
	b=WjhjSNcPIwzj3wmGLH9tMFPM2G9QqlgdSSVoXl83/dYkZsZkVhgtn+4tE9UU6U1uP
	 kuAogmt17dCAfC/F1e4NRvr4L3c2w1YnhVwlhXC9/9QYJtBlXTCRY3D3MG1UHt/lBz
	 KHrCi7ycb2vI9ndAw4xMh283pq64DzOSLPDBGLL1aZFPx++YSkIMWxy3BSpkhNVlxp
	 jFtBnzIVwJ99mpU/S5wm3xcuqaYllzmv0ynXQiP16wwyD3M9/1kbmSXS60+dYlMSvk
	 U9wh7EDSgu/S/34XmUriKh/5lzyjX6uXVF9zp+yll2WmUE8ubW7B2s5nWTlCXQYnPD
	 Na3dEwH+dqU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99780C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101813361.2362.7358312051607848302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b6275ef5dd29ce4a2679e8e6531aeb38f3bd8b17b9a5d1fa0e1b6e6eb9fd5a
Date: Mon, 03 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741018133
