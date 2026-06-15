Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284251F4CB3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781490994; cv=none; b=VKqDuxFZj2+OPtmeMLoFrwfQVNEk/fN7L8tN7H8YS/4W1nMXJHGRYf8c4AOKXZjM/j4wJmUuLzeAHAlzyMCeSTrTaYniqv7FlHrYm1bGTYpm0GsVQTeArhGpzNRfHHeHNn/h1BuaIF2hO8L3Sgv397yTKjsRNZPp2bpQVo57TZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781490994; c=relaxed/simple;
	bh=XisUhLvSjg7fowprHr+IsuoMOpxVjjTT+H6ufNHc/18=;
	h=To:Subject:From:Message-Id:Date; b=d93CnJlA4iFBo4wLcUtv0zjvBmgYHNTkw+pCau4T3z7oJDrsT1MwyhYjp/m18vK+IhSVA88M2wlgDnc4O9wfLd2V6sDvG9lgujWKew5AD7D2K9QSEJyE2MG3Lfop17ASxXGcNM7fh9tA2CmbJEQ9A9nteYaRf9m31/j9l5DXpH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY+xYZ/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY+xYZ/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F3EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781490993;
	bh=XisUhLvSjg7fowprHr+IsuoMOpxVjjTT+H6ufNHc/18=;
	h=To:Subject:From:Date:From;
	b=lY+xYZ/8tG6zV2bMrHxQuivRH71mxbuSN133QzqxBQHD5DdULkcSmuVCyihpybg1U
	 d8VPIuQvFQv+dJSqbPECi9V7DwSvwoxVghMdSkmO9uptBS9JYiPg3BBhgWL+/J785J
	 dmXQ8iQdQS31pIaBSENclJrVSaz5bhyq7d1MgR2b5GZGTip/dWw7QtxkuSSvq6fNIj
	 fv88lszDd2ypHpGuY/lsXnQvFogA48OrJr4fw3e5rdHCuoSExdxIPDCAGbFPSMc/uV
	 Jp0qJJBgpqnYi103iNIJUe8xHcoA/eAPqDyon3bN2oa1ICOhjjjdqaxPGGxKA9/ofo
	 2hfIFrw2wmmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F19CD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149099373.15482.18372767786633621961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf714d3561e12a4bbd15ef020c309e36eec5341e7be6738943491831e5f2b03
Date: Mon, 15 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781490993
