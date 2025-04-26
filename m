Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B51DB34C
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745654394; cv=none; b=iILtzQd1w83iE2HBafF0d3t5rvL2zSa5oFKQLRwZpU27x05fjCIYSyaUvfYmWPVG7DXjLSJ0zsk70+VY4Z8g30shzmMjdRMJh+QRirjSsAemLQU+tFd8OI3w17Y2Qmimh9xssOCEyiIUbR8uQIAxUfG2u6Kil566MFFSpyY9Grc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745654394; c=relaxed/simple;
	bh=hikH1a37xJGvP43qI+crVVwiOOdNrBA0x8XLUkS3qLI=;
	h=To:Subject:From:Message-Id:Date; b=ubZ285An33FRjq87N+tWBcAqOevZPa1E4X5CvavD5DETt7fbLBSLQnDxMVX32bKPobk3FeysgY4TareiezPR1zk3ZraNnImnf5hK0lpn3eXk4nTaIxNqt2zmEb0B1Fg5GyIucNVJCuLlwSxoUkPYJ8eLPum10qxtPRGn9AM/7sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjIH3d4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjIH3d4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745654393;
	bh=hikH1a37xJGvP43qI+crVVwiOOdNrBA0x8XLUkS3qLI=;
	h=To:Subject:From:Date:From;
	b=cjIH3d4r9WC50jJznFz7vLg4tPdDc/EvsFWeE1181zXTLgCDD3BhzZJBWqSdf/XxT
	 GCMqJgyiVG4v+oQE2KhC0LYWvB4763HRXOX5PH+bEv4qPdCWh0DzySJ3iVCWL1O5xt
	 UNm4EVGQ4SAXP7zvBEUqLJXcbJJ5vAAnVfGRw7a7agZYA1ApwEN6PxIV92r8Y9HyBz
	 mIBq77xQjLPpUpm3ZGhJTeP8WEdNbm9WD7kVp/p8NDdqWl8YZnd9neBHXphCJjAL6x
	 nsZP0MHEYCUUsT0+0fpjoOZDvrAGOyeu1yFpjwla3xVzm3RIT75AGMr8HPo+zRjcCC
	 u52iaHRqyVixA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CCC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565439357.17531.2745859103519614636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6fdd32b9e275ee5670080de4cb3f9e9f4b1233f73418483126517a49470fc2
Date: Sat, 26 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745654393
