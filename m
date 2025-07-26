Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BA31A83FB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753550994; cv=none; b=lavQ/wA3vvcmkVolOYU3W64bUNrQ99rsnQ3XwHv9oeCcog3/W4ovmBhOGOoeua6rVHPC5Zs4iM6eSfOplu10DIRbr6Jys1elH9nRXoEohqmsu1oarIFQYXXIPN0QEdH5J7WaelR5stI631ioNwFYBCZ30Rhz2oVHZfDL24d5f+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753550994; c=relaxed/simple;
	bh=/kRBnyfFckp+h07S/kmv4WL/O5IaSzF6C9bVWvZPKTA=;
	h=To:Subject:From:Message-Id:Date; b=cXWne26qytsmDrvLeb/VjXoDoeMOVlDPSCdGcCIkTdUPwNfw9gU/lTiHlU1gGu23t3qL1Ig9VFCYmG8S5qHf/HAstlX3lsb4feOzrzMxJckKejb55oAZ7y7TCI74O2OpJdwAXEfKAnYSMCnD8cuuF8w4MEZrFgsJPtIKaq5hLfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uj68PgHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uj68PgHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B8C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753550993;
	bh=/kRBnyfFckp+h07S/kmv4WL/O5IaSzF6C9bVWvZPKTA=;
	h=To:Subject:From:Date:From;
	b=Uj68PgHP2S9pKrdwUmyRrT1VeB153Z6NxFzPUKM6IrkmOouq6JqoITzbQJXfhL3Ip
	 YX8rpwzpYtJRtqzUIEdz6YaKV1Dl9PIa2UYZofKgsPrqTbG9jW0Gm2gzMXx9R3g4N5
	 qL/4T1v4b48vKA5v0THIMxaQEYRRGKPI0jTJycDXNBBT6GP79Z9D+q/HcqdPE+8mtX
	 Kc7duAlO4pehdNupFQzmhioWQbaZH6ObCL8bW6UUz5ZuU+OH0eBiyQFJ732AWS9oAz
	 H1An8NkFCfAGN/dSx6dJbaaSWM+IWCVZa0GTWOunlwYyIEBJE9SpX/oYiCvdGEHLrj
	 ruFDHLOZX3cfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FAC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355099358.19395.15426422445989157544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059f5347cc481cfa2553137823bbb175e1d55ca40839a3aeb4ff01db0cb6e938
Date: Sat, 26 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753550993
