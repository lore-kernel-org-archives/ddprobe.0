Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194C132938D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389314; cv=none; b=tztT+JB51AUqyO20FC+NEpm91d6zDbQpIMJGANh1XSCDfAmzxv9QKbRAu4nuDCQjXhCeDOZz1atbdYsS3NPKc6GSJCIQpQGMq/pY4Y/aOc3LprtsAdgjeCS13kBGSfgbu/OVHLWbqNvpblz3FjdpaMQ8IrG6frNYNZuUjSwS+Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389314; c=relaxed/simple;
	bh=zZdGC14wHKiIZ6/SG0DkPsDIPgBhPFyTqYeP3dMaHAI=;
	h=To:Subject:From:Message-Id:Date; b=lGQNes8Q8YL/Qfyw8CwFH92oh2XMBOuw3vsZUGW8OF3c/DEkhud4McPd1Ii5ybbPVwQsfwZnV7FPGbbXgCwzaMcnoRIZLtyYZ5eZxpcBQltMfC72L274h+9uzFjEcnBGb8XQovoArjjFq/8NL2SRSa5KROCvwZomweUptCiLfHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwhOOqGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwhOOqGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC0C19425
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389313;
	bh=zZdGC14wHKiIZ6/SG0DkPsDIPgBhPFyTqYeP3dMaHAI=;
	h=To:Subject:From:Date:From;
	b=nwhOOqGeOoHx7G8oXl/QJukvbR8B+esY2N6iGIYD9iwnbRttE+f8zmeWmFJB6VN3U
	 FwFZL4Dm/ZAPfcaCe/l1+NQZ9AoFuS1vLgHUDKIQydP2kIdptuw9u1XmICi7DnIEIx
	 pdENbdB2XYG5dHpnun2STNaA7phwRXw8gYksc6UX3wM/whgX29uWiGUGCyjNp/yXu3
	 TuHnrDxw5x5hI80nOai4sqTRwj0BWJO9wthXSaH4sUBtDFGtRjiL86DcHBqkEGxIpo
	 vvGj+hJ8sUCE56coAOR7Y0eswu7Z6qQagCU22Iav2UFjeTPq+J5KhdEO9ofSxuwpc3
	 gW7NSo7hMCa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E36CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338931358.11759.15978485054885562909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b6fd795dfd905f9910b08ca0528c12377ed97048d3d1180edd423b8f583a31
Date: Mon, 17 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763389313
