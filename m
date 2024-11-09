Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B819E988
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731180954; cv=none; b=pc50b88Z9JnWRAocWgnsY38yihYHmPmu8l5fJYYgovdahNXiH6ISPzRWQyr2ZvFaekbAhMXktqAqJjWey10hc1i/Xc3ANqOd3pP8Lu7lmE4HBtWD4M3IxCMTJVX1h3NJAN4r0ww8mOt8eqE4ZJrjpf87E5O1hTrlfRzzgEH+KDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731180954; c=relaxed/simple;
	bh=U+X3URBS0T47p2Q+xanfK0ZIlSXCzYCpsFrRIOPzYD0=;
	h=To:Subject:From:Message-Id:Date; b=Wok4RxDILrrp97qrrLxUm9+//h2ogV7nNtdSXFsD6G1TFl/GbiWyw3xLHW/gXkSOWDKUu5+6qJAesE7Imq/XyUA20GxqsyXyVMTV81Iu1QzvHP7u6jEDPkfI1ZQdc0kG4TLJv9798lbyzKmsafTNNwyEnZ65qdNP++ZM/MC4Jh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4rp+pOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4rp+pOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695FC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731180953;
	bh=U+X3URBS0T47p2Q+xanfK0ZIlSXCzYCpsFrRIOPzYD0=;
	h=To:Subject:From:Date:From;
	b=E4rp+pOxTHREzJmrnHY76uFlSbS5DU+/scfkAk+8qYYwk2odyN/mdadSeVzW6Py8E
	 mf2wfed0kaNu6Zah68vAr/MgkSUPWh2YjvoCE5R3ktEoE7xPOZ49ehjk9kFSJ2jEsd
	 UyyzxFWX/LSvebaehWenCh+r+w5tVbhvnaufAX8yxjZUImPCDUbcLuCwi0m/epqVuG
	 Bq13dASMPCD6/4MUQlXtfDh+W1hkzr5s882AgQTL/Y00/rY9DU0uz4LuhNzdRbnMFV
	 eklnUv9i/dhqNgM5Lo0Ot9qIibeB4kxvLenTqA8gGk5u9XOyrbRPsntHqNMEgheXO5
	 vUFH5ZUlz4BaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A48D5E37E
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173118095360.15868.4692232059033699204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1196786a2633a5014f5d74623ab381849a4ad6e49c99e0a9f1bcd439a21ec38b
Date: Sat, 09 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731180953
