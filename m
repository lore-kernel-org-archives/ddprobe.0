Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E7F472793
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772223294; cv=none; b=X61MHDHZLr1Udy4DaTj5wWv0eeAR4bdU2Z0xUydnYGtNu6+/xBMUY2SxaVk9a0y2/QhZ6jf9Gvidm3VW4QgGmGFhlHl9gxqWAB/w2G3zu4yC4WG+TXYggY9bC+/+o1yDvTEzTFHte27J4UnpI56YTb3mguioy8sOyIjr5BiXNNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772223294; c=relaxed/simple;
	bh=ct4w+k3jiNlEDtLcALi0pS1tZcnYT7OoEa6BRt1OBa8=;
	h=To:Subject:From:Message-Id:Date; b=jf1uD/n67/7skMTKBmV4yjkElEMZOQaA+bHx/1ss4eCbP29XIVaEQjJvInNt/khI9CY7m276HTGrgGgiUzjfns8QcWwiL2euOHFBpZqfwFQ7KA9bAwXEJHWTb5tE7B1sxNsKroHG+mHrVr9tsBskuTaHzdRTuwJJ/RgAbly2WLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0CDSI1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0CDSI1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19FC19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772223293;
	bh=ct4w+k3jiNlEDtLcALi0pS1tZcnYT7OoEa6BRt1OBa8=;
	h=To:Subject:From:Date:From;
	b=K0CDSI1mLjaG/2qk1rHCap5PU6xlDryZhvLSfUKg3DPM2y/qMgG5i6V7tmiM4kj/p
	 gvVtpWFThJn+dzvdEOCpXQzC1xec16B8Uch/YsMjyIAB96YP5CBr2wonJ4oqG48Rmy
	 k+D5kOZFoQOiDyLbstJlft+Bzl72D8gjLMgo+J1MZ9l9YDbzLXv0Cs3r785ktG4W8E
	 aWokfBEzBq9nciu9DBf6nefaABvO9C8oZaIX6npG+DbQ22ZC6/+mHW9XW/K1Ki1VUP
	 ant6lEUe43oJY4+VmPEESU+RuD2aOl9jmlY/ORVb4jVo+qTaVzRbtogUQnzuDdY2o2
	 YotbH261kPwmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B6FD9E3A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222329358.19216.11942819226318915935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfeb846da2eda0fc4bdab503c2b59d57f3f3b7e267f7a8fb44a5e342a34da091
Date: Fri, 27 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772223293
