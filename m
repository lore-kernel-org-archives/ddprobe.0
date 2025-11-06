Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEC72E06EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762462194; cv=none; b=JF1j4dvMoDuavzq5h0Oo86rVEMMbqRk4a7ULMGWHnQYZc9wm1gPSMqWrOfF5kw+XtIVm9f8nWLqFCfJZL3opQCDhUrDR2mURlmVjKYxfxxeN+T2c2yyTkpu0Q3aT5hv7UP99pDYTs+Ha82EyDzsZ4HVT4lcHe5wqOD6f5jQ+dQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762462194; c=relaxed/simple;
	bh=75kWkSi8Dt0NcVGj0HeC25jxX+e/gfLFAPYAUGX1wYk=;
	h=To:Subject:From:Message-Id:Date; b=Y8pNJdWBYEIqCypiCcOVczvQ5CiMVWPbAAY4NUcll4EQ7gkWD0zN+2jMzzCBz5Laq4bR5gb/d/2x+SYknBouUDnWTmK/JEIKJ140xqoYcFAkaS4DLLBV/vvjjOP9knufF+S0/OEiLzXF4u6wmHsF04G4Btnd9e78zPfxkdZYXTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4efyTtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4efyTtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466EC19422
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762462193;
	bh=75kWkSi8Dt0NcVGj0HeC25jxX+e/gfLFAPYAUGX1wYk=;
	h=To:Subject:From:Date:From;
	b=X4efyTtn7+Lm5qvnQoFKkxlUSIJOyIMEuApUrXM6f5YY0ZtTAxy4U1YcVB+euhLrm
	 PCvssdZEUIOJmrPNTLFETs8BUnj7BMl8i6H0YR91El644a7TK2mpAMjNRiTOvIpMLw
	 oOGr7xBfgMO3HxJaayTZEC3Osa4oxBq6CBvCKRYenD7/kq5jby4ENcKdOjaVlteyJO
	 qszVC0RjE+k/ubfOkGxckYl9inSf2gsYfHtDZQh3huTJwra5E7EWZaxm3ES1y2/GBe
	 fQOvpqLJZQQ5/vV2n5x3/9ZCeANIHdd123PtHJlPAhRZDmlP4nl+YV4oiaQEtSQGY7
	 uBV9Clks8bd2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9212FCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246219359.11466.10432711418459348504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e039ecfbc8b07b8bbeedcf9ee98b41e4bf024114cbd2848c3852b9ca885195ac
Date: Thu, 06 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762462193
