Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4490123BCF7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783848514; cv=none; b=IpUYcvwa6020293ZtvuSl5o3GXEWF0UEkrTOYeH+rPOf5yWYdQ6fjBwuA6Zp4qloBXlzMGL9Zr3GOimQ2Y80gZHSHMXeY3fnKmpctZy7pXJGvU8xqMvh8+KSMc8H1Vms6yqZ9XJWGzFiFDOeKuF91f0iE8Y/IbBO2bMJXTQwZjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783848514; c=relaxed/simple;
	bh=4gpt0nY+W/49anwCKkHBxDzxbfU2m8dgDpx8e18dXyE=;
	h=To:Subject:From:Message-Id:Date; b=rPwF55Ag/ue3y4AnvuuMy70+LdEOvgG7tMzVf2f53940VI1pUu1mmBXlpinKfYYFThDWuIGELa/GoyiVD5hGH92PPebqAQvYDr+aqpw/iKn9QnlTPsVJmSig9wHEmSBR372It/l09im3/eipJqdzifl2AYLBlwDgQevbI+JqbFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyJsP3Ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyJsP3Ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA9FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783848513;
	bh=4gpt0nY+W/49anwCKkHBxDzxbfU2m8dgDpx8e18dXyE=;
	h=To:Subject:From:Date:From;
	b=ZyJsP3QlST7aZ/m3VzRhkvtvmqqyGC4eZ88R0gya4gMrikkEnG/kpR9uNg+XOor94
	 /Cy9Y6hbX0URkMgydb2g53gTjLS0fewN/HB+zhl970tGmBGCtVEDmMKII4+rZbYlrN
	 jAFz8ZWOWxxFiXHrg4B8BhUvE22W46H7ubt56q4k3bRGQkEiLB0am08yb0XRyz2Fpp
	 H+I3zFBuM+GWaKBOQHZgi4HhWSrREJC6MpnrO/1Kb+OwSSZS9lgWLnzuUB5nDFbJao
	 NI/qzTq9e8NUl3a3g71YU7J5IC5HJiofYGKF0MFVlFliWSP+QMWfot98iMRrRzBYc8
	 757ypvxUpSw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9072C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384851368.10581.14211388304500550116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36800250abcdbf7bae5cd3991a291e240d3bdbaa8fc2ac5d83aec062dc05dd24
Date: Sun, 12 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783848513
