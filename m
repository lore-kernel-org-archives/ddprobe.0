Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54A2E737E
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780126414; cv=none; b=oeEGgE5NLu1C0Mf8hJk4OpznAXTs4KGqZx10l0QjS7imd4MyMIkTxvc79AYMAzNgv04mjj1gTq03wIh2yX+ZSfQDSJajA62zOJ3253akLOxb4sgX4LyvRXpjUYa97rPEE1l6ppso5BH7Fnk2GsixgJkWKpKgyTedx8/hIhA1x44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780126414; c=relaxed/simple;
	bh=AISYjXnF7iGNxAnGfa3ga2zGxE5Secm8m6FWwNTqcpU=;
	h=To:Subject:From:Message-Id:Date; b=NXIjAK9OWUYgfFM7tgGtctbG/p23aimHZP3TY0zysgUkRTu55RbOE6jJTJ6vUrYy6sBeF92+V74/YZLm/aIOu6EV0GHQ8asIbrDqqSF+cIzrxgthPTg5EtEHOLiFj2KbYAUyy714Xe0fq9pz0uB4ocf1UjS83BmaU+GY+m5syJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smyjSSES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smyjSSES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7234C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780126413;
	bh=AISYjXnF7iGNxAnGfa3ga2zGxE5Secm8m6FWwNTqcpU=;
	h=To:Subject:From:Date:From;
	b=smyjSSESLjc0xRAbPMjXKRNTWqtAMG+JFl9t9Z+MVOUkjEXSrRB8HPq9Gi+Mq5Bx5
	 AxYHWGxNRO5s2AwqMR1oCdeCeXnqAlDP394vpUUrids37zTYH/KTD0lJYmKYwCNqFg
	 H4iHHUGG8Jw+Ko5zovJH8NCH1CxQSVoSQf3EfeP6TJ59vxIemoILRrzuGuF54iLYf4
	 py7wag3uSp5YQFPz6SNtQv4O6zv0gq3sZ9Dd/TS/o1KTpptAkTdPs3d9BJxRnm5wcl
	 noxKEAX7qfuhhZ8fNwofx4w3+sHUtvqUdMtJ8mzWujqIpb+IAH30I78W7P/JsY5j3C
	 LqL6/mbQ+tWSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A795ECD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012641367.5868.14820693405204962945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0146fa1e70584c43069caf26b16dd5d73d49f950c97915afc15f805c1e52ec25
Date: Sat, 30 May 2026 07:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780126413
