Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0FD43E490
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781629594; cv=none; b=pVo8vYAq1ufBg1z2GLiDv1919Xkqnh8JB1LzxBbfbZDZ/1xjUoeC3+sEBwXu3Mdajb59FWrmd1bGALhTr0ZB4sx2hNpY/SqLqub0P1hiCOFVz/Yfzn3ONXAVN4CGQlbG9zGyC1bTyqRzzRknvkfbXo1C/oWafA1pA6VomZn1DAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781629594; c=relaxed/simple;
	bh=T7NmJ/eEYNBeMoLN05ojGhJ+CvX8Ta9sg7xQOriO414=;
	h=To:Subject:From:Message-Id:Date; b=LEm7aqwpZZ6rFzrEvlk4jeiRkXlo3fpV9ou90FPNM6L6RB8X5L9R4qvi0+c0y9Zs6h0Qg6LsIek7t6RwZ79xY+MzTPBZNyVJXYKstCXrQlNyadnqPDrhN7l8sNUEOTM4YK9YOyYGa4bQpwzam5sgvcv981rWeNVLuaMxasW9ySo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg5sTbqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg5sTbqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFED5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781629593;
	bh=T7NmJ/eEYNBeMoLN05ojGhJ+CvX8Ta9sg7xQOriO414=;
	h=To:Subject:From:Date:From;
	b=Fg5sTbqzTnAK+J1ru1+oHSZ17bqWUHO0AIVsYOzKRIghHKfbJAPNZopNehw4+vQzj
	 RgYTLUfGs3E4i/sB+KtjVPz6BUNOVY20eF8VTFIIpd/IfM/VyvqPef0hfNunAQ9ev4
	 4Bp8RZT4ymwZnHvkOikvPLUMFzKk+g3pc0ib5G8ffQPpgJd1OixEoWQDHnWZtDLCCh
	 rBpoMHBGuVJU7dc/2T1KuBqI8Xz88VfggmlzCHOugUVUdsLSNNlRuPkvruXCQ1TeHB
	 vWjwH0FPY8flDnYU+t89LWHc6VgiAcuxkOCUeAZ8J7M1uy5BC+IaoGAospQSdqGcBO
	 cXjsitkZTXyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A91CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162959370.20471.12051410690698366060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67837811be7fec1bf6fd041d0909528a349fc2530f3ee67e3eb453e25c6235b3
Date: Tue, 16 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781629593
