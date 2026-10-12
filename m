Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A473AF66E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791832234; cv=none; b=fRGj75SCXgpUXqwOQco7wxAr3D9VfxRkwf+YMq3gBY8T+jah/3wOd3gYGo09podOzfAoPwre4OHGXjVJ+f05WqyPHX9l6+JZTbe17f9g0wc7y2alarVxwmzJce+8qP9gfKq+VU43EzpDNhxXJbG0ESknsXPAjCA6iNCKvJDfwlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791832234; c=relaxed/simple;
	bh=Fblg4s+Mkw92WsnhOUK4E145GfHlS6F1PUuxRI4LWEA=;
	h=To:Subject:From:Message-Id:Date; b=ge8Aww7qgvkkffKIzvOZsI6zUIigTMJVM70hfFbetyxePO/sg+P/4qAvDADW6VM5r1c0+2ZPj7pbFD0ClU7VgVBu/KmLvTqL4yXOh9dFy+g1+H8+OhOpAndgUd1GpYmXAGNYcQBp9hhRYl2ZLLFjeGGyy+9dRL05Vl9qIOYfizA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poT8c8+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poT8c8+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D586CC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791832233;
	bh=Fblg4s+Mkw92WsnhOUK4E145GfHlS6F1PUuxRI4LWEA=;
	h=To:Subject:From:Date:From;
	b=poT8c8+9Ui8BQG4cnbnpZ20TTByWXxTWyULJK+qGQkXw6B4DKrA21EBCvBvoy064r
	 LRsGbbtInzezkPdgacthqmAxUjz4yxgYRnXK3fsi6k7ix2FgykeYLRVX2rBUjz4OYb
	 nUyyRnNdLnyNP/zNns/vqObQLiTRMhxu80f6twkymlqav12GAGUeUsJ+7TDElPr5W0
	 8pqauaJo2/IjERyO6wUounu8X6R37t0oMBqZBisJTV1ut+1SgBmtNwOw5qcX5w0KWM
	 HNCuH/cREzcdWjD7XSj6w29xc7IIv57Kf61oANd6zth6QKAhpDe5HeXP68pDIQtPkU
	 yl5A4h9LMlwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25D2CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183223372.20982.10775292315864372459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6befab12686221bdc07f5d8ec386bf24c8155758174a0a5596e3ba57d88ca155
Date: Mon, 12 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791832233
