Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241538F6E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752371994; cv=none; b=PDtPMQw05yNFZBEYC6i/h5vBQCsVZR8qxxgq8D/ZC9x7GwoChx1j6+Wf7IEIQZr6yat75tRM8UxzmeRoq1+X6yz5SyVfJvCdK4Sz70cRsc71N4a+UNMkcxUOp0MYbgUcspIf9fZFKUa2qmcQ3ctr0il6f7s2apRGfgp1kFgc9GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752371994; c=relaxed/simple;
	bh=RYX3GJDBzQTjkwcqRhEZtR8a8MuZ/5CG8F2tbWw1dks=;
	h=To:Subject:From:Message-Id:Date; b=XzSVErTm6DH3NSCcVeSE/FlDbIziC86KA4kaLHf8K/dRicnR+0RTqq0y3dgQwHDYnSHaSnlBVN8zGhRRKyrSlzaWlJ9vi4zUjnlSXdAhZTMs+azGGlZM3PmduWBL+ka5Xm5/w11cSGVCAudUf7aRfa0j2/19/BuQzzOX6Abh1Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=depQNRZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="depQNRZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA8C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752371993;
	bh=RYX3GJDBzQTjkwcqRhEZtR8a8MuZ/5CG8F2tbWw1dks=;
	h=To:Subject:From:Date:From;
	b=depQNRZDqZnq69LeSbuGySpT+clUA4TSIaCIZE+5s+W17L0QNEb+k9HoZ6OmGA1Rf
	 9lHv47GKxuGkAt+gyzdT8uc8awSaElA6zoT68o+4DmXHH9oZcvT9OoEi/dqHfvloYz
	 EAJK6VQrqFdvv7OF2vgpc3OaQoIKIbKbfEfG8TXlvuHTbAlP+jx6fXt3JmhLftHEv2
	 cqvhsx7hBmhnEpflun6hX8vuNqsO2Fu9hdbf60HPbPWdFlnHY7cMbnddMTPPU4zpFr
	 3G0zT3tEHaajPKK8ozc483gI1/d9GCPvVFZUG3VU/vFkiKTQSj/PTEpLlMZ4rLOzql
	 XzwrLBkBLdSYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99BC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237199357.26409.14460535473657689999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060f1912581654b55bd007441b2dcc2cb2815fe6e64812bede5bbf288b3d228a
Date: Sun, 13 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752371993
