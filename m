Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20931126C1E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749482995; cv=none; b=X9p6ORVuZ8s97S4CTWqeOQe1hB4udOlsjWQK58a1uLVyx4TCrdj+yGJVysbo+UtPc9aA/n1mWvGb5zVJFb17H27UVz5h5MAqYV1vKlttPqdQmmKgYxpv5F1M3Zm/CV0X883OuQduOxGFJjt8n1/NzAld7DzZfmMoiH9FUrJI8JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749482995; c=relaxed/simple;
	bh=EwTap3EDhwWYkXslg34ngXHs8On/49oLJWWtf3gSXMQ=;
	h=To:Subject:From:Message-Id:Date; b=FZCvoFTvn1N6h7IVI9FEsz1WBB5DAZck3VB1D+6XQ3QacFxez5qLfbNOfQ99xhyJERLDfbEvFaDpe6XWXvkwk7IlsvOugvSGU5uHncToxAZhde0K3hgNUChyEXBy3iruzHSXyfExZuwx8v+TJDJbYKgKWDXKSUxsBaoajfeyAFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuI4uRJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuI4uRJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4426C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749482993;
	bh=EwTap3EDhwWYkXslg34ngXHs8On/49oLJWWtf3gSXMQ=;
	h=To:Subject:From:Date:From;
	b=CuI4uRJ5TBKByCFPVaavmus/cN9oaIYXxxAOam821sZOAZjZT20b5ExY34iUZoT4y
	 YtI++QNwXK/o95TGgA72ulz9FLXsGwPRJIdYq5rNOxz+NE7jIie24zM1oZcavcEaZx
	 Ut2FTNEVVtDvMH8FwCYUzOXR4MS5J3oJ8iRtbgoCzDcxNC23/usZpM36o+dTf/hkCy
	 WRlzm1S6NpGS5C/9t3FoMbpgadoOn5oPRC1pwB/mmIvw+tViJRT652LI4Jv2o/gRIZ
	 Ho8mUM79U//B4X6dc2cYB/KcP2T2SsROMBgt83whHHaDiz+DtUSG4H+cbyOBupAQnB
	 RHI3YNF4a1E4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C8C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948299357.14175.13775376856429409843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d788d5554f4a25869aa52c61c74acd66e1e7f54545361a26d784841593da1f1
Date: Mon, 09 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749482993
