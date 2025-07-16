Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB92149C6F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752647394; cv=none; b=fXDZMi/wNkFsmIJAqWty9gi5hJIPhkVZQvSOQXnOwHMOQgq5LFGa/8/daPomrRZ4PxGCG7dhK8OLoM4b7GGvESfHmGnq0FDmmaZ6mZj7GT1w4vJZbqTF8cl31Pzkf2hipmr144qcv0fHJunDFrMwRXxJmQDc8V9GMWeiG5gOZzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752647394; c=relaxed/simple;
	bh=TD86TsTDZNoQQfjKx4RMT1Q3/smhjKu+GQSWnomzqac=;
	h=To:Subject:From:Message-Id:Date; b=RUNNJ+3kkVLk5Nfwz3Vd/7UbhusjTDzmo2L+HFKrBtAOYh3ndrbN/48UM9LqD7bML9uEl0RTvH09JyqOcxrsKNGv0WU+Cr9SVoH+UHM6/TJHrDZPxg3xCCUn+yRYBhhnAWBdP2nkawSj5bMJHb9sYbisbacpSzzGHpOX4pSLN6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJIFNT3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJIFNT3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B94C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752647393;
	bh=TD86TsTDZNoQQfjKx4RMT1Q3/smhjKu+GQSWnomzqac=;
	h=To:Subject:From:Date:From;
	b=eJIFNT3V+L3tlY4Q9+X8LDAGV8vim0ap1U7JoMh4CFi6kWH3h66EvzmDq7bl/iwTK
	 BkxUUIYQe2klz6puLUFXMNmvlxW9sxzLQa/yoXstlEw+8h0Am6WE0/bkGYlVNElarZ
	 S+9Gw434bMqDDVNxAYHJnP+lX67xhKtnt4//bsLEAzyK163XVq6qRAhARm0YTbxpp+
	 vAWwssT5QR+9UqEJMSEt5yFpIHjyvN/diBAl7wQK+T66hJgur+gTfa0VPpMgCU98gx
	 zfcFN3WEvCW3rWB0fYWg1cRVb8RDwkrfxBrkND/+Rgtu83bWFzeLkoXum8SEYDwuY/
	 aUA8nh6K8McSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A9C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264739358.13812.6328961504988842819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270d84859a9142d330fea26be68db55d6f01f8a91e4cf58216b25bf31f5fbe4c
Date: Wed, 16 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752647393
