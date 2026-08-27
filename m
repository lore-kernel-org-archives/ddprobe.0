Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE603932EE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787863234; cv=none; b=q0NcLucuNX4PmFw8Vfr4Uns59Cyyc7AVhSqf5coBuVFKV1OuuIsCtKjKQwG45FCOMRA/v+WDoVs8D/awENdIAUsBAhqb4h9N3wanJ4qvXJZ9o4WEKn/MTzPa0h8Vz2rtVDHLryuWjLzOiq/ycQth/TObCRtkGTavNGO4GvsHWak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787863234; c=relaxed/simple;
	bh=Ob67FHVKbw9lZ/gNWCtcHBQp6e080+O6y6qKAR4Fmwg=;
	h=To:Subject:From:Message-Id:Date; b=LKEgEPjq6JVerwKj9jgHARbIryabAjqrG0T5se5Mlw/+BFjJ6LTdSjoEHKCLbDX7xWm+mg6f+gPzrlqbSJE1wSF+3elrDvgc+949CaSZGWrrsGX8h22uarfT1jtacSH7C4zTr/POmkXflPfWnBE4z9r/gUaJg3AeySjewSo0Z9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7j+Ipmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7j+Ipmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3D3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787863233;
	bh=Ob67FHVKbw9lZ/gNWCtcHBQp6e080+O6y6qKAR4Fmwg=;
	h=To:Subject:From:Date:From;
	b=q7j+IpmrwPINaYDMhSSA3R/40FR2lEjQoL6QzepzgqCqDzSAIYhSUHkjWUE7Xyxlb
	 rjO47wpUTSHt84QDFH975gYWqSTdMsr3KLPDrG+GQUkgaXekCrdDNO95KFM8hQTeQK
	 Hdst4JO6dJRld82vUet9iViV5T5zkrMqYNDXbg/Fw5xJ8xNaq4GKPIKYr0PygVbB/V
	 D8OKf9MlUpA88K5i5C/Mg4xINMFwlZKp9LhDyIwq78lC/nX0fvC+NGW95nvRnxvWFE
	 CpVML5DtkHjCnn97U/pwlWQ7xFZXVuwIlw4al9w0q6OZYIV6m5LegcaJjZ9T1BLJnQ
	 Abo9XttkfSODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB658C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786323369.4482.17171747131999294594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0677d3883c0c70fbdea21129d2cecefd60218cf65a1cf501a250dea086a2ded7
Date: Thu, 27 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787863233
