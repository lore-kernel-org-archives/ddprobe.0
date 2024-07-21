Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E171FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721535954; cv=none; b=tViLxMdukAHVCIospF+iGGmMPM2/2Vxi2BQJXnM2bh/C/OUwVI6Z7x2y6ykGtt4j81q3VnlaVOMcD0p/m3Mr0x+TNp8SowW1iZSpk4ZF09ZUnNizS3tXF4/jGPjTZ3o+lXibW6xlNjvJxcNcEeq2V6dqj3ehGc690WSfS1XTzME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721535954; c=relaxed/simple;
	bh=Ww/L2BbBlYS6Dh+PLb1KGz3Tt3WXOj8yheLmIRJn+kw=;
	h=To:Subject:From:Message-Id:Date; b=d+mbe1rmtYizECCIMPjqo0bdtJYFBBQStZ0/2KO7zA2YNMupPQ6otGrygyYBvjEsBXc6TI7OMrEBtpCVUHBIlbFfXBZ1HIMDTCdjBSKB0q3iJmuQBmu+Pr2M0bjxvTDnSl7vRwMlfJHyXBARgrmxosiHNEMAKONIhTE1bH4AK/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNHJMHgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNHJMHgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91D1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721535953;
	bh=Ww/L2BbBlYS6Dh+PLb1KGz3Tt3WXOj8yheLmIRJn+kw=;
	h=To:Subject:From:Date:From;
	b=lNHJMHgZPDHZ0iQdU5iVYyUwA7xCXiRh7KJpi82NmjoUuZd1EEnbiq9hhS1gFAh8v
	 RM7B2fETKPiomRUUUsJMZzqtugVqqtKzwiAZy5OHbk7uAB4A3wl9T4Y9bz8yC9Jytf
	 6PR1NmBD4GkYHGQREd7HwXZsk5fW8J9n5FRbGW5I37dnttn1UKQClqQjY6a4/1sQ+I
	 4fXUoc66QUkRUZc+MgQui7pio6cq2gOzom85PBHvMAbTNcM+i+V8ijn+NSNbEmGv/C
	 24CDIl3k5R3IBZsL5RX6df+NzKh5yuPDoula7P/sadCtAkTSOaKfI/wLaVD//ndIMj
	 TzRtdSJmgQ38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44C0C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153595375.28787.11903032906877087256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6068813b4dcd5c10e7a4c22278da8ca8aa0d708eba1f40a2d554c6e8723860c
Date: Sun, 21 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721535953
