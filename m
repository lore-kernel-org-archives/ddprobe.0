Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFE2625
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749517194; cv=none; b=XFOp24xg9MHjE/fDR+6PDs95/D7Du+EnQ5EFVTIyZ2Ifr2FQPNZW/RsZVd8vbFg8/0i5D0VZuM+sEGCoWLyiZ0eCICzI51Ldv0TgK+4ysVcJ6GsiLyhp0m6fSCsvGEAFMUm7BqP9DezWzVUouERaQ5UmNvVlf7jjOzZp2Yx36GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749517194; c=relaxed/simple;
	bh=Kc9rRd4ZoRvOvAelyQdNtYz4hGdTg0W432RDGah2Lrk=;
	h=To:Subject:From:Message-Id:Date; b=rhomOABtGT3dNbPaYV/Q2WrAbI2yLKmZ2+KYFqr6LWeXVB8VAUElg7xaI+9rfkba4DznZZtY8lh29bqiP4crATXBbxuGCcMOvdlp7HXk9Bs9qkGQ6s8uh4faebD2RPxZWKeNAGpRWEwjsIg4AETn3yGGIR6NA21oCaHeOYcZPyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLszF9q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLszF9q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749517193;
	bh=Kc9rRd4ZoRvOvAelyQdNtYz4hGdTg0W432RDGah2Lrk=;
	h=To:Subject:From:Date:From;
	b=cLszF9q7aFkj6x1pWVY+ApjvjqjEASd29UxrIHx4CbpYkY/HOGa5c07aLj/Zt516U
	 oEKnCWnhIYwlpcq8ltYzI/nh/Xiya/tMiO2kJO/95z8qE6koN9y8jWc/1cqYhX4D9t
	 mjvZotamC7gIhqjt4CuKbZ0mAMJbvk7mHYNAEVu5Ozxeg0XKThsM4WCNcFcFzGgW/7
	 D7JQTGO5wj21SMqNIBAf1210bvvmRei4bGG3AfsE3lO1ZYM7fsBKYKLIPOLFyYhtzI
	 rz7/Y012IxRsvvDZ9eHxLlSqtMSPNZhIPc/YPAfhrmFeSQgV0jkzNzvBEAd4dUFWIk
	 NZYLZxWCX2OLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91740C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951719357.25205.17987060265951540267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9677cc7151b2f628bee8444492cc37da3e9dbbb462bc6f612f1e90266ac986
Date: Tue, 10 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749517193
