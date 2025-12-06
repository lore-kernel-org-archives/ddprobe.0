Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2020C2FFDF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765032174; cv=none; b=aTF2wtH6869TKg75trrLiAtXEGyeTNED54Pftf4dkpLGFuTRWkdAxgotoL/h/O8v5ttALhUCBUTWRMeZTR1mO2kHgBZrkWVrmOx8W84wqs9ozRPD7rC839rump5BKeDzK9JgU6CY2V+YQsRjMndBRlxMseLUSVE+HbHYUq/LiSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765032174; c=relaxed/simple;
	bh=338zjTwTn7j1YNX3kVBOWiv7+56al1+C9o75vXW/GJg=;
	h=To:Subject:From:Message-Id:Date; b=HGNVSaWIGkPkrC+yV2WRdMpnRbhHDfftIl8trb1d4Y9tRhqY3KOntyMR5BpwOEdEWvDKNx5iDIbTgi90GtmgNMRdBEWZbFCjh28Zp1Qr1fseI3eS4B0Qb+JTV9ufxs0L0EShbP7PtJ8A4dAEr4dahTHlfWgKo6Wkbk9DU7vckF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb8EAiJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb8EAiJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765032173;
	bh=338zjTwTn7j1YNX3kVBOWiv7+56al1+C9o75vXW/GJg=;
	h=To:Subject:From:Date:From;
	b=Tb8EAiJxuz/op7Gc16TY4AuBQIcg3qFeR4qtAD+sTbN5AclFgMZ+fVqwWzLLs+cQV
	 /WmexkPLcQDgGM7ej1kZA0nkUnZi6nptD/fVyxAeDoy3gU69t/zZdOTKc0PSocxf1O
	 RigG6wWjtHAZETrY1+8Af0tPNC/DbdzGMQP9A2eW8tvYRcnij+VxRszjDucQIIG4Kv
	 3ZQdcChe59BiHeAiYFeGGQTJhdMmaUEBR29nNs9KRZGGNUAqxcLgBlSp1BWIfbXApz
	 2dy2/nf+Uqj4ThPBfz50zlaoQeeQ3PCw93u3xoBALpiaGpkVNHYrWoA5dyiw2cCBNH
	 PdBu/J4JuobwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D6D3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503217358.11097.18407645550578740406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d38eb47b1b82ae4e8c39e40129adfcd2bace3c4016a09589dae8a67ed86457a
Date: Sat, 06 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765032173
