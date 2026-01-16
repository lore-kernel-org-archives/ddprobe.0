Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1395128B40E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768573434; cv=none; b=dhNU9f0V9Of/i+nWggUeuZvTmlUEgP+eCoXh7ttiQIt6HNeEUO0DX4pA2ZB+v08DlduEwmAri+gA0vTzYm2okueB70QlbV7uj8RU+a0WJhigR+fh8J1NoOk8zHv2my6NmgOGoJhFyg74DVyFlQBBXZbjhUngyJKIpd8jV2NKJwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768573434; c=relaxed/simple;
	bh=qyId7Cy6TmA/vSlQNvF7RIA0b9BDnEafXsOxDORs9VE=;
	h=To:Subject:From:Message-Id:Date; b=uAA728G/Hw0Wq5uR4zyrPmfmpvs6WFBM662aoo/8IZ48HlkPxtxRUgyEtPKwxorhbb7FV0uGwwFOVZ3phw6dunIXlqKCUT6NQUuChwp4sBJ4/9ksGBmUmtaktsY6thtfMoVlqXMnmVPy+vj1r//0jt2dT/UrOkjKtmEEBTjhr2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3gnnn0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3gnnn0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06ACC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768573433;
	bh=qyId7Cy6TmA/vSlQNvF7RIA0b9BDnEafXsOxDORs9VE=;
	h=To:Subject:From:Date:From;
	b=b3gnnn0T5VSc14fbtiMi9tyCuzU1PeXMkCrurgEv4FI447PTYQZtYdLhVg8Am30Kd
	 CTB6Sy3YDo3SvWMkpOwkS4Ov/4VQ7NeWg+B0grGmOAHzSup1A2xNO+rAlV033Fm5Dg
	 5IYpGXLL4VM3UqLNaMU3sBkDxjVlBdohqMi2dxP/12eEWmLxGFyv0jX5Y4w2W5j8HN
	 zt+BCR8Q90LJPNnvmhRJaT2JLuKp304CVije2Ty2GPMi3jv2tfZQpLCxDQXNb89pQh
	 pd5u1XW3kye6VDW3PyQx4f5lKa1IfTOkppQ9UxmC7B97cOvK6ina733xq9bW4CGa/V
	 Ep0odXn3GUOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DEC79FBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857343358.5382.3553493693588130907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236c686152b1a1b28b4503a964283176dbf288a7a7da883694032ec73d56e08f
Date: Fri, 16 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768573433
