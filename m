Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313F384D02
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727685954; cv=none; b=jZYHqx7vCyGPneKGiXq9gb432geY375WOXJ3AE12RbN3u/RbjHDWxdYm6Z2Z4sqPEIohzWYoqw6PKlxrJZXWG7kebIYK/AfJRdsnHw3Gu/+iw2oBCT4B5MK8rZ32MPFzWq42C+5P9Z/hnsK9FOtDnJFFaYl7POTax2hK5bYp+cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727685954; c=relaxed/simple;
	bh=LMU4LWcYqgC9Syl8XRmM+iM0aG6OFpMDbNfIrIOMBKg=;
	h=To:Subject:From:Message-Id:Date; b=HNZaM7B0AKiPoATvsjpWqeggKHFD1z9y71QyX0YRdK+xNfZyPEEd7gWS/2EnWmlrNKj8VJC5dPcMtYn9oJV5pkJh+F47qyMEq8qo6qiCEfR+IE2W21ldmwSwLasz4hfWL+XhWyMsQBnkwhgr9CNXGEwovb4WiAoTssRKTLaBeuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGjbI9+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGjbI9+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC379C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727685953;
	bh=LMU4LWcYqgC9Syl8XRmM+iM0aG6OFpMDbNfIrIOMBKg=;
	h=To:Subject:From:Date:From;
	b=bGjbI9+nKL7rsxs32rBnF64a3MsL5h7ZiNKO0IEdWpUnHxMUoacmWoPk/lRvAW/BZ
	 EqneWyuRt7VWE1fuJMvFVlkWrsMRUxoUtnBtkGbSjCcLlCY9BrLTvfCv7KyL8cvTw5
	 FzFVN1mllV2lvviXEV4Auq01McShRPp3v6sPUg/VU7iTyQnZE6Cn1nPjgoPTSDFXM7
	 sGJxD0CIIsKYkzTdqF00Zr9MrZ2y3dazLyUFOH9GuGzS02Jcp4qm47z5uewEdLeXdl
	 nkYxYOOWGRGSJtgtxm5+1QxmmXhWasXeF8gN9a921hIurAFMgSZWwCHoEhsiEr7Dnd
	 JjF0oLNG+DTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D34DCF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768595363.19477.8184258389955599614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f190fbb07125ede7ee76a476089190a82f695b75b35d5b9336242a4f8fdb4569
Date: Mon, 30 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727685953
