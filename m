Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE33BED66
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792336234; cv=none; b=cryqM06PEqOqiPAzlYASSM6Md5/13LC8u5msQcEgiwBHgZTD1eiSaH5mfxkjAWeA6u7tqzM40rYMvJJ7obx2gkewX63hdFykWlRmJSAYgEhb6sjQXRJFa94NazeNX6JJ7is132N9a4tiI7q3z22nVlhk6kGPwfnoJkWYzqS+QrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792336234; c=relaxed/simple;
	bh=kQj7MLhyC5C6FT8ZgtEQJVI5I/wRywFh91hqBFHgdxc=;
	h=To:Subject:From:Message-Id:Date; b=rDcZb/TenXwbq2DwQMdEB+LyGY+EY3qqKhD5sreixbrpKrGu3ODDpH+JUF57jIIsXczoljMY1NvemWLm/bt38PGbU1yUgcPO/SqImf8LVmokQ/IySN71jK8jq0IQl/RmG3Ocrbfp5b24POyENlUkRLoftuqIGx4rNWZF7W4M684=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3JAahLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3JAahLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA6EC2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792336233;
	bh=kQj7MLhyC5C6FT8ZgtEQJVI5I/wRywFh91hqBFHgdxc=;
	h=To:Subject:From:Date:From;
	b=W3JAahLceUu5S1KDbeYbYJZ3sT/ljrgcUglaBsFK+lHTciedbYdw1F8OdHQ/k+aoA
	 tWTDhz0mVsZxiIbB23ejORbQPfdthM6caen5NvIjHG3rS7vJBG4vxv+bQo6/UKiWFd
	 XWcRGqld0hful9FwwlRk9K/5N8rBx7q8dt4a+8L1o8x3lJINp/6RcP7tMoyYIVlgOG
	 Kg0qtH/v7/E0iAZWeEKfsTfI0MDtQwYP/Kry2qnPS6tB4EmRfbs7YHSIttDSwsvhDq
	 S15V2BZtOl0i9jiV9Ak+qYQoE0MFqkmknXYSrPV3TrbXQb4fe5MytpE+0pEJ6KwbH6
	 c9wga6YdazlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D59CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233623368.25730.10446772161144476619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0f463406a4b9be7c203574c06d68cc35abefc9d5e04a23aa533251694454e2
Date: Sun, 18 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792336233
