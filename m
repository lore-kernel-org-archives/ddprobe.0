Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28782346E46
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782833914; cv=none; b=RiJTQH61v5ickgNv9RPt7n1GPeI1b6R2GO/J3MkF/z09tXcdIIZcFOR93eTCNAM8fgUAaNtnjparntKV5mxS1YK4sXd1/VyW2Q6QCRWdJT4fH2iJA6Cq06mppCX2V4yjQETE/3hHv0LTcxxAR8fklqscVeo5LO/VnbSxh6rfZ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782833914; c=relaxed/simple;
	bh=6u60loEkrA7J1enjvvqxx4n0OUGVoKRJsrj7OnyYvIk=;
	h=To:Subject:From:Message-Id:Date; b=hGhtAVWaA42Pkhi9oefGWx9PgWDPCWcf0T/1Ztpc/NrRAMXM6yujAy4tADYL9IxFplme0y2Wq/D31K9ynT4Ge0S3yn6ViDRhFPd3pZ05uhVBnrb5I8nJgWFzhqaBCYX42Srge8tzA0TNfWCjcHM9qAaB6AxBNnZ43ZPeQcjcrGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kd04W/VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kd04W/VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B89C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782833913;
	bh=6u60loEkrA7J1enjvvqxx4n0OUGVoKRJsrj7OnyYvIk=;
	h=To:Subject:From:Date:From;
	b=Kd04W/VR6kv/ixBQEyH+Xu6B0nYjTqFRlZ1VMObU7v2iXlaXWWw/0Myko/IHPHAGC
	 s2Pc9Gy3Q5QdcpRmXub382FpDRCZtWPLpBWrrTiNsXcXqHxTWbadkdYD8MH5QhKXbl
	 ZxyVWgCcrb/SXs8TtREhtcGtwxvh58uzqMNUcNvvA73rhVnffyiSIHjJxOqxqIPs9l
	 AGo/2xAORgkOqHset9cI0ntstYq7uYD4Ui7WGGEkjVVW51ISygFv1fX1ObUKJ+og5Q
	 Arw05NSIsL78OCzLsMQBCe9f7pFh727Yl8ZXCn4Gjkw9VEYoHI54EVxLrhGzAlhAfv
	 hvOSv39PGcxlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BBC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283391368.992.2926793199318220106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c009269673584ab37b6fa9696b4ee1cd6a1b0c9d0a31342616b3450e7c68092
Date: Tue, 30 Jun 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782833913
