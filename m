Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3156E3D79F9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781649394; cv=none; b=RtpWR4/K12B7k6Pbz2lYijqYUypYVR5zPGywAnoTAhu8nQEOfOJzjCRIbuJJMSgQUYL/4HAMpTJYMAd7AQeOhiTBurQT6KAT9STIFFUXTEl1hmK1gjAUEItDLALBJYI2JczkJt2N59QbDWcdj2lWwxkZPZDFW2xoTz9sX8a8cP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781649394; c=relaxed/simple;
	bh=foH8QqF7Q1eu0QhXUzxDKp68uC/RLa33uyzEbyeNi1I=;
	h=To:Subject:From:Message-Id:Date; b=ukRNXitrTtN8oHl9b7X6kUHyYOssda/Piq7UPbsQIrLjBdCPhUzVxwVW7dcB8r4UoU4TnbUPDHhUmQULam59vc16tM3Kpk5VLxBC06k/xB/yYLfaDupAJQycy8dizhMjVXbB/PQN2LepJ3HsK8EpleV065vNUUSJ6V5WnLS93JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af3JgjXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af3JgjXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0298C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781649393;
	bh=foH8QqF7Q1eu0QhXUzxDKp68uC/RLa33uyzEbyeNi1I=;
	h=To:Subject:From:Date:From;
	b=af3JgjXX0zqDswn1ZCBliU+zOObzrEf7tzksSNgKywESPcvpTJM6wKkeze/G0z6CD
	 l/e3+aaSzfJla7h7jXrloX+oDWFIVxLIFP6pHCzM114ZBE26UgY5I7N7oMSzJvff1s
	 xdx1+5BD7ap3mg5yDG5k57EJKBvlDk/6amdRghC64SQHHzHLs2mgP/dBoN65nDaUVR
	 +xQJxOBkmxQ22ximkei9NtTcvL5znMu/PJ3IuTb/K6kexmXz6Jq//htobZnfe8RgqZ
	 W00++0l0ohVwtcTnK3YTebXvxpgBaG0YlvmbVpsP7MGGVp2re94Sc6HXa6IN4mNChx
	 5/1pNOj0XGAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D17CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164939371.26549.15344415520993913758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ed5f9f78e528c607515dffad413b10f7354e6ecdeb20e0887a24f272bff788
Date: Tue, 16 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781649393
