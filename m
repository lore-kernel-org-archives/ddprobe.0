Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158542652B7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773896094; cv=none; b=QqNfRg0V3S07YBwaBopQ9iF7A9Cs8WO2C3wBq09f8RUltMim6iUE/uMWdHltsZDSeiLySezDcKdxaag+xo9DRqgN1fmReyXnY2+aW6lxGImc0XuHmFHC7OvV4ysDCsilMZoHujv5I8HwpP4mCwQaBQqPLZNQF+r+Z1vGTTD31Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773896094; c=relaxed/simple;
	bh=87ntPqrdA3k3swp51xQMK0ZZGVfXccYpyGHRPXgHoaI=;
	h=To:Subject:From:Message-Id:Date; b=cUCNcNeKsfQ5YjWvKLQxIv9bQCoB6tZmWPNqL4+26BDCT1b6bfwKwus3N9nVK7j+rQa1G57TrXdRsZhOTPhLvx1flmX9IzvF8eBpl2NpsuGrySDls+IwkX3bJKjw4EyoJfSKxvkihH46OMFyA+6T+ZyNmhG0pQJTmzu87UAcsuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ7mqlVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ7mqlVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E4C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773896093;
	bh=87ntPqrdA3k3swp51xQMK0ZZGVfXccYpyGHRPXgHoaI=;
	h=To:Subject:From:Date:From;
	b=hZ7mqlVaOwOVRIVxDiuG5QECyu0q38DQBaQE88CyWMh7/3V+dyFG4OAUrH7XtskAI
	 k3g2eijEE070pJ0O2nFXUwR/FHwDmUBOviybjlNPaFc6ErsvSbhUhhK6p3ixA9+fsX
	 vOUaxNDzDYY61XQFYQx6JptuCyqFaEUQTPvheqynJK8ND5Wlw0SoJvxtM2rdVRUSIY
	 gEsK8l3Jex2nTN4xmJ/6F1uwjI6pIfeZ3fKY2eAU6WujdjtTqpXMwm/4yxROZDedau
	 xkhxF5gWR7GSqO5uF1Oc0xLcYXFqat+FOTtn+yhJdn/0RNKMX7gugT8U+1EgoERHZu
	 +GnVZeAFJ8j9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD51088E70
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389609357.30336.7646401473339588363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640eb643ed026a9b3370f699f7c1ebe949d2f34bb57f28ad5ba7c6848ecb3894
Date: Thu, 19 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773896093
