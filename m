Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00002364AA
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707421697; cv=none; b=iY+Yvndf/opinHDy7Has7Vd88jRKa2b2bMAA3mf9GABRuYkP0kDaN0UrIaG5BIZ/GCT7FzqYm4vPt3ZbLwgCAyreG8YwgPb7Emzp32dwTxbdUd5lqFP9viq7euYxPa9ht9tuUQSVTYHjckSF9Pz05TefGzDb7qlGmenb8ZpHIIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707421697; c=relaxed/simple;
	bh=IaUTkxINqj3XkvUW+jNYRY9z2QfZFf+KnJB/OfiTOdo=;
	h=To:Subject:From:Message-Id:Date; b=V6neVV4+tAW8KyYIKWUO8PB8JZHQq3TJgaKizpPIwI9GNgTpTie7b9j9VAhZRsdsQprAHSLX4Q1BM71/iVxUxnp7FK+B/Hv1KUAfTGjZ6VYWqvGtWCY26LZ/4jItX8A9H/augxt7qma85qKhVjKlcUyaVLQOFJ1xW07uyefMEf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEdLiP9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEdLiP9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E87C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707421696;
	bh=IaUTkxINqj3XkvUW+jNYRY9z2QfZFf+KnJB/OfiTOdo=;
	h=To:Subject:From:Date:From;
	b=aEdLiP9LQ4xnUueIo9AnKojfqpY7Ntu7pEo83f/OBYQg+tCS9caEdZ6/sekH0zcBk
	 fbZ/fIvDWOeIx2jd+KAefSBc/p4PSgTwybVo3+5c1hTW3+wc7w3vWYnfkHixVDIuiH
	 n0WwsG/5VAy9zyn2Zt8CuoPSSAo/GzxKpxMZTD1AQKz+j4Aw1igUR2w4ammMw+Jor7
	 V3xk5IrNE68+m7lFkMBxb99wVcQ04JbzAEV6vghWx+q49MCqa2DgTXw+14iCSke/y9
	 XekVmlk1Hk5FKuv5G5rLjsdyLyVEFcX8b6A4v8W+aR57FBZ7ejMTsYwbEsk6B4tFNY
	 TmjZ3yLFugJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CD5C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170742169639.12867.12450083557149823549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ebc158d928866f628c2276f9c7c0ff541e0d02ef1a9f90cedfa9e0f7d0392d
Date: Thu, 08 Feb 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707421696
