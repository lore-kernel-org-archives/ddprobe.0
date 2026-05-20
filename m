Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E7623C39A
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779285034; cv=none; b=HhjzKfzuVeoxasNxepGQduHvf1EhShhArR4mT5dxz0cICa/eG5tBKLqcgdCNVuPW6lR9sd6Mq22jUdDbRd4SkQycjM6JlghtNLoP9CIc+NV3KSw1UKyTU2j+XkvqaBZ0GRacguTPAB2xZoKhxkRhZzYVfEz2JBtONOUENDt+R5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779285034; c=relaxed/simple;
	bh=Boqt/xsrJxqbFqzC2dUhI07YyMmaQasIlq7NxkRImrc=;
	h=To:Subject:From:Message-Id:Date; b=BsVzFZZUV8UHMo8JsPcXNtewzEogW4zANJ9BRE28gyq7gwnKgf7eTsEg4vDETbCNMmpyxihqVv6NwvPnapO8NZl65eJaRjbQzNHd5dkvrr9KDiJnHGwDzTEtLj0ZNv7mmYu7irczk+YUWi7BV+OSuqcJTm79ZO3+bj6pDIVplwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEq2w0t+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEq2w0t+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C04C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779285033;
	bh=Boqt/xsrJxqbFqzC2dUhI07YyMmaQasIlq7NxkRImrc=;
	h=To:Subject:From:Date:From;
	b=QEq2w0t+bn2awwR3BV3sgQVZheUqsreTY6gmUlUeYi5y9sWw1BmdWCD69v2qp7u8Z
	 CWAKF4NWFBc/85f9rFKvM/00pUXRUb+6pngMKNFZXY50AIkDRohUoSEnumfYEx4ly1
	 3LWR6fP7z8xEDD6bt60yi9e/TPo5ZRJHao1XmAxfdQZ+yRFzv5I08uyiU32sUDGXih
	 5AhB/Q8jd/92UF04sVVc5FaQcvW1k+Atc4mQM594q/jEaG6h3yEm42IFFAqqGR7PvZ
	 DXRxolSNFWoCcSSzFuQFawpryu0MoHmrZQ4GpSRlW/qI5UcU+/TVUdGQVajMg69DKq
	 lN9u0iAw9u8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A3CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928503369.24559.3631128015736560390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b044efb27636335ef6c56728c53c8ec1bf24c8c5940f8f656a201056423920
Date: Wed, 20 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779285033
