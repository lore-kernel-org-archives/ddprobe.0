Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2047B19DFAB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771680894; cv=none; b=n1/tJivJFfb3ZaqWeL+5gkm5np6tznhwCL6qE0yxxkrPbxkKv3MAMSy70GfHbXCU+kfLG6ulr6LqGrg6qVNiXZ7O/LBvBk6NBObdyqH5Q53/1JSHVqokkipHvVg9JxS99e5YuGRZbIum0JkglGuueXrGKnCJFyACvLCI2dF/87w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771680894; c=relaxed/simple;
	bh=KG3540cs/SXCA/TvKLpRLJrsa2S6IZfbidRAX+1mqGA=;
	h=To:Subject:From:Message-Id:Date; b=RsSulTXc1SITIYQrb2fDsX0IpkNGqyAUmBzOd/d99i24jh+SHPvE3+7jB/PSjb2Pk9xV2iYmYyywb7TgkyBDG3LxsqYZqBgpvwaGSyEwxCp7BhnCGtcQLrLE5YVjGZkN99OSTCgZ3nlMT7zbGy0N3ipHm1GFlut+jfKLHlJzafo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJM1z4M2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJM1z4M2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED22C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771680893;
	bh=KG3540cs/SXCA/TvKLpRLJrsa2S6IZfbidRAX+1mqGA=;
	h=To:Subject:From:Date:From;
	b=EJM1z4M2ix5FRG/VAtwiUqUDiCyWkUO0YkM2bH6+Mce09va9twDuxvLXdbBxxkLA6
	 polZikBcdwSGHkZEI0rd77eeHygY2alzjG8DTQ0L4eCIUNS1TlrUiciM0qaMoVslVj
	 A+oYy1xojJqDLF3PM0qO6Qk4Gi/0oHjyyJpwq2CeLZjZ0CxrfMWfuEQjTJctNIVCQg
	 UqpoD/YTaA7mBlh/IcLdLSA1gNqo3ryLZFLC9cVHwc/7ugEFzSMKhg4C/4O8cFzrYg
	 5SkieSfNEnszVyHL5UIMtentJvMdTjVxdxWmzC5nKlkr/VPLfNK3+xYhewwD1b3gMb
	 hZ6l0uUjFa0Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91897C61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168089358.20255.12934543151600639330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e546c841e666a3b23a8243a2bd333bc6c358dcfe4f213cbf33283fd418fba20
Date: Sat, 21 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771680893
