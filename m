Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE0A1E5207
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783084114; cv=none; b=JczKwsfzZ6isxfBdrdsgUKwIKsRGBfdyX8dP0plk/hDRrZ+DwSsGpvpdNmeikXa8368n/0/wuoo65a7Sz58W0tAguP5GFqltsFVCR6e+zVnWql0ycgTkfzSLbEGHTxi/X66HM9K2C8hRhdjmlI2mCAYlPNMOuxYcFeuETgLNPcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783084114; c=relaxed/simple;
	bh=y69/ZMn68BtSyGOLxep6A/SSoo3YCaC4lACb6xXdITU=;
	h=To:Subject:From:Message-Id:Date; b=Va3HasPZM/QIO4NvbsBK0zpl6FrR/mIkW6Ty8egtG1QHS8Rd10CIlZH0gJck7P5q76TFXnzyJ5tInaY0aj+FSkJQy4D0RbSrkBj2Z86KLbOkw28Reps/NEHcxLv3BsO1dOL6Cv4znDL8y2cLnco6cJbDOvCtCBpIAXSeyYbCKJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rn283uDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rn283uDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA372C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783084113;
	bh=y69/ZMn68BtSyGOLxep6A/SSoo3YCaC4lACb6xXdITU=;
	h=To:Subject:From:Date:From;
	b=Rn283uDqvfWw963N11AWhIaomx2KqQQhANab8nDmAkgadr3Yu7A+1VavZDUSJVUXP
	 K15/F2yYMNv5fm6qhR/sT9vAKX5i1YeoQpNOphJ4J40KP+TPny/hahbNH56/Wjf4+L
	 6nLASXhBrkTg5hsgJgGc2ChcuA56DRqEj0NzJA+cx/PIYAWTBRKmhOdLwS4n00kZX/
	 VgMPxM3jSIZdtLFKnhc9MNVGnKkO6K/ER+lE0K9FJxjw3VlpUXAB1dKhXYU5AO6HWt
	 Ewtp6Z0rx6S1hP6IyAnlXEyLcrnNUW3R665ucVLIxxxxI9/UQNqpxcIy/Ny1Wm+ZGE
	 t3D94up8QXRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E8C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308411368.13829.5539932118480561393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c74a3b9b271b194c5a62408c887884e60632853146928473016433786e23038
Date: Fri, 03 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783084113
