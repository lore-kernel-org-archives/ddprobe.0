Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDC02BAE8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708620497; cv=none; b=LTjUFS32WjWsQMTEDpACOBOOhYRz8otx4s9I+qWK/TWbRtDrTEHzxAXZfgVAKTqFqTs+SI/MXrptchncAD3U86igDrIQ9xLmeOKfIzvNCTL/t9G4ea5elWAwzKgw37f1NBhp6f5Xmt7u0kMr/qAJhiMeoNkfQDdoI9hE1I9J9xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708620497; c=relaxed/simple;
	bh=K/okS4Ji2OdeIHK9Re9ePpUJPSsq+bsJeyLJPvckSr0=;
	h=To:Subject:From:Message-Id:Date; b=e9UbhgpF/8gKJIp+qg8H+Otg8WowkIHTqDfJOPtkM8uygEyN8B4rVyqyIWzmO3eaAKa73lYGxB5MJdXizecb27qreqT84Od8OhHsVzkVlcuypm9Xa+a1I5BrRWEjbfgSuNTdRiFdYEuRpxpjLJAFXQ/FtD0xFebBUDLAtAZrOl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq2/aKpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq2/aKpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F87C433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708620496;
	bh=K/okS4Ji2OdeIHK9Re9ePpUJPSsq+bsJeyLJPvckSr0=;
	h=To:Subject:From:Date:From;
	b=oq2/aKpL0CCX9VQHZaDGH0Woa7wZ4j+WizOf9XaMkYNEzAzKYkNC68bDy2HYZMMhl
	 ktK1mwrM8dyNxZWWaNePjCKAKI22u1XUmkklOU9CKep2lI1e+3IogBeiB38pWdo6lK
	 CrO6IhedM0jsHaNmfnwKR+ZigkFDnzo+eBlr6G3qrSqTBKcH4IfcZJUFO0G5D/mwBI
	 dPvPHBrB85hU12N7u3Cq2z5DucnB56HlIk5gjn9/wZW1jnUJqp+zLMee9lFJyodDOq
	 rMVUrr/yPc7a+j1tkhwr8YfkAySmuiPkks0nos3WDR7i7KGvV8iBi7q0Kq+jmdve7w
	 zLGRctzdw9g0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F853C48BF8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170862049638.9369.12747044203203925050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db51d158f7e0c3074f7796715b031f98e62fa69ccd6154b856fae504c4841ec
Date: Thu, 22 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708620496
