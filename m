Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7758610F7
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713576023; cv=none; b=LJiefs33EFBaI8XjE/xPHBe72v+m9WjvYdy58aH6CluXbFwtqgsjmBVSOKibskm16b7FBqtM7RunpG+a8tyU3RjxT+rOA7rOXeRv9jmdX/Re/zoVmqezLnZG1X9E0UZUmSYnciJa+/IbaHfSmEu5R3KA41dmHXwI4ns5mVi0/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713576023; c=relaxed/simple;
	bh=IxBGWmaxWuqIlziTM279Y/J7Ahl0qXTj/qOaZ91VNGY=;
	h=To:Subject:From:Message-Id:Date; b=H9K+6pSaBARk72rRrGlc+MWqAi/XdhJ0fl5jR9jcLmjNH7VFMz+4ABFWJbEWAfPcsRm+KzNMJMldK7WaTm3antH34Y9uONb66Or4GCNqPDnnD6A8XSeKxY3TaYzL3avFTHiSwDXQgzXu7qlBXihg56cfF/C4ozYrsmWiijWtnp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHbKbbmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHbKbbmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8118C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713576022;
	bh=IxBGWmaxWuqIlziTM279Y/J7Ahl0qXTj/qOaZ91VNGY=;
	h=To:Subject:From:Date:From;
	b=rHbKbbmNEMSEflg2IqTtanxW0yN2wOv9vgIeMhkz94GWUzARBlzQkL00Q4eZmQHmC
	 nwyo8Z/+/pONH5/Fj7CZ+U5wHNvJUkrJZjXwgcm8eKIazNxW1rOnsQDgtoRdOa724C
	 D2nSMmWKqs6FJW5vkyQczTHJVig6t68Y5NAgjjGamc4g/AgHQPm7iW26DknL849QaB
	 3qAPiZcFbZtRq4tU3C9hFi2GOxo2YKUc1ke7k4fVuJSUw6VpDpVzLGjowSzLb3zbta
	 dAUcUUurX1leIbY2mjW/3zATUW9JfzurNG+4vcoIX1/XNXEq3XdylvbfiZ9BfFVPPz
	 NPjK3ZDwC17eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA60C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357602277.23396.7842248418887966911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa88684aab4661261eb16db26202efae8cf2156fef65add9228e61b9162c2e6
Date: Sat, 20 Apr 2024 01:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713576022
