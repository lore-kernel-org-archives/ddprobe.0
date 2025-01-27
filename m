Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EF5DDDC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737987954; cv=none; b=OHJrGCGqMkONLS6AePRgCv/jvKSXx6yp2DC/vKZBwna6mfPXI9UfAlami+msYCf/DQQvyesnPo3js2eVfrTsXJJcqx0m35Aoo7ukWoT+HWJ5E3DoJzCe0PLZCeNvNF8jfuQREUBap4DWtd+xkO9mjGXLzi52fNNtFdcsKmb0rhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737987954; c=relaxed/simple;
	bh=1fJ52gAbYkgOv9GI44DqJZJYb5BwcigP4A29Nc0DEXI=;
	h=To:Subject:From:Message-Id:Date; b=m/CwVD4eeSypyKFIpR4ypUrhN67iht1R/loecoKQ0PYciAxnXzbkWY+FYgotkcMl6jHIkja9rHpD1oY7v77T4+DOH5SN3OMkEpLA1syBjgKZk3iLdM3XSBjm7x5DJ+1jumrnSeSdYfibGSEN7y5lmiknfnvDlBToONHl6odsU8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i//depk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i//depk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9AAC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737987953;
	bh=1fJ52gAbYkgOv9GI44DqJZJYb5BwcigP4A29Nc0DEXI=;
	h=To:Subject:From:Date:From;
	b=i//depk5xaP3oyTcJUP/1xaPebuqRmZtgc57xETtFmrAYrQdZR+o+ShtErth0rUpn
	 QiSLm4EY9xEAXW/civrpGvMuFDrl+L23DZErntGAkNZxYv8w0JMk7NnhYzS8j5osEX
	 a1N8vb5WIWgGws/JiU8D4yY+hkJiWFT/1GD6DMCNGTA/lgWUUL9FWM8xiNqchUqVIe
	 PKwdQ2Psb7RaXjo+YOVYuhJVUp7FjFP04rw+mX4VoFauqJd9E0zjGOweZGnzmeaZE+
	 IgSGF1IOyIJw1haxQpCtxMjEQ3Glxh8E0RIhbLHLzWGwQ005ISpA+WEIYvsHuW5wq3
	 QPiypeItZv0Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F131C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798795364.14633.15987679504189456279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc02c4eedf43e0f813df9f302b9469a351470849c55b6ba166019d866cc9eb0
Date: Mon, 27 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737987953
