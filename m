Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035491DE3A4
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760499594; cv=none; b=lWsp/84pIVtHQZs0vlkZeHkTAP33t/EGzZT9ntP6OR2aW67T5pswxUSdaf7nUI6TqMeyZM3rPIi6NgX5nRgPsC1X/DCBGwpa7gEaIkD0fUZdUcijtFAQdXB1bcPsCIRRCEJZwG6tmVWTvqtU0k3nZd8hbYAULLImVzIMFHzL2po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760499594; c=relaxed/simple;
	bh=2DYEEJnKYDJO0jsgYCxsl6mm1aNaOT6oWekmIHJq4nI=;
	h=To:Subject:From:Message-Id:Date; b=QD9s1i682iXLg0KRB2JC0Hg0ufQu0CKyVXLYpM5La3w573MaqPfiWW6rIVHe9LdGMgSGNb5Isx3Udx3GcRcjK0Ux3/knM/Hxw2S7EVtOClnkWj5n6Q+fZGaAj+KkucwbiBxyCwYTL67fs6irZtRIWp1SAXYtKr/Wub8XKg+dgHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kL7l71CY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL7l71CY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2051C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760499593;
	bh=2DYEEJnKYDJO0jsgYCxsl6mm1aNaOT6oWekmIHJq4nI=;
	h=To:Subject:From:Date:From;
	b=kL7l71CYdq5fycl5qk1r48+ZsddP3PPIT3RCJZVwWTqonbg716vjwUJwZsBz9jNqe
	 ATV8Ejuw/yIX1tbyydpZOD4mhYasUZHE6VMBQhn7o0iqKaCVreXY7rFamuOG0rpk43
	 LzH5d2NhjRFQQ7beoy9AhMtygCim4c6QaHvqZH810EMj4DJxPkYqL6qpeD80NvvLez
	 kkdH/wNKlSBElAwtDqqFlWc0nShg/G7O42rXaeONHt6CJs+BEHeym7YWmgXrYuvSzi
	 iYqhzM/XUqJPRE0TwYqR+FPxYi3+KHv0OCBRAvd89ubS9X4KV40Iow9JiEupQtsAso
	 /rmMLseYhkxCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7FCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049959357.24077.14326644774358074009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2226634c9dd56f5fb2eae186677cb79a1f292fe69fe7e99c6423ae6cff3b60b6
Date: Wed, 15 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760499593
