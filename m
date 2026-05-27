Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8643C8700
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779868354; cv=none; b=T8T2Mn8/T+ETYkbzrrQplSZ1bvK9LhFKO+P7YKrCKpzHt3q4jxR2sldxzDxdx8i8ZW7JCNCPxqLi+p/o22ceHrwKntPwIp98IhFvrSyooQCWKlNUHOLAMimIaahVMaR7ZIMU48O+fzSMUxw2mEhFu5r37SwtPuTKoN6yXxn0V+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779868354; c=relaxed/simple;
	bh=zI2QfsoPQgKxiIogdjwt3998FgnANqqjzfMTJhJ3x7c=;
	h=To:Subject:From:Message-Id:Date; b=TirqbVGbwM4Gr9hkuDWhUz6EfdfSGacGa4jgjMxDhtW0Zv8n5oSujDOIbCSBow7Leeb98cq9JTWsRfL3uyjG3ifht8pxuXaXjVl9JYXMEqKkboClOwtM//QlpbPcTpXWdNu2g5L/tNX7DzFzorqgO0ZlRGEcgJH5g7nfKP/dARM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7fneYKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7fneYKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A4FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779868353;
	bh=zI2QfsoPQgKxiIogdjwt3998FgnANqqjzfMTJhJ3x7c=;
	h=To:Subject:From:Date:From;
	b=d7fneYKSEJXcpW81lcqf49MkE6kdn6WkHMYP3DpD6eGXJCcg/fffYJ8k/TnvXdpOE
	 UIwyOZUtjgnE6QLuJb4toCmehCoAEb6f0phgbeE2nsYHYPI6U/aBTNf1xsDk3ew1es
	 rK8CyQ3zAgFQkvDnbkGuSHUm38U6NfRJv0K0BHQow7t28e/EJ5U65YQmww5g88ltQF
	 jA0o+Zr2JCbyP0vSwP+epAavuPlEGgCU6GX3Vj5uRqWbXIooolN39v5F3sg4guEANi
	 sZ6/8s1ccoYdbCl9JkPejheK9iJYwzJUuH3gv0AX/l3xUe0hPFQu7Iz8mCmT8dA46r
	 sq2QP7nVMtPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA4CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986835368.13298.17696447388111505166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6985008e7706b0cf8f7f51960828f5f981cca1fe1e5c44519f324c19b7842ea2
Date: Wed, 27 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779868353
