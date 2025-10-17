Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192CB332EA3
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760707794; cv=none; b=demxoVOLAzRhmvF1wiHvZYHp0wbNxM4Bko4T1S3sYScooTrJ3SmrCM6xQz6ZOmZlQkMBeJhdJ94Cyx7qgGCn+mhaHqNOhmbOJz/kXOuLDMPzPcD6YfS7znPYCxbX6vErqnnbXjMZvAiCQ1dfuU7u3CoIFHAb4kp6K2UnWxicqH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760707794; c=relaxed/simple;
	bh=GTIH2PAxzP6xpl4gOMDE7nct2dhfsOLkKlWz01OFis0=;
	h=To:Subject:From:Message-Id:Date; b=ORtG+zEv1vRBPHtXLWCiGU+K0QueJLFsh0DcCllc4cgYYvoFUuSNZaAO1aXCQfSMOmKDAaZocfZdzxaW54ohIy//UW1U3YIIzH4Lg/23YcdT98rV6wiPZ/epn71spdK4Xs6/4UXFbExMNcK2crmJV4K7+EfpMmYgcuefaI3tDe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utF2azzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utF2azzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2160C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760707793;
	bh=GTIH2PAxzP6xpl4gOMDE7nct2dhfsOLkKlWz01OFis0=;
	h=To:Subject:From:Date:From;
	b=utF2azzccMFgHmOmXJhpemQPUbZerhE0dYCB9XITzbYUiRN8XTg6rlvmdN4541eYV
	 tou7cws2GE8pMmBjo04Gula1FEzrtJerTxNn8iu52okuEx5LsXWGk9DXOeFjZPkvQG
	 T+cUGIj42uHtx3+LfsXuHUKQl0iZskhFiTgVKXgZy8jvPsxamRCOMo8k+QUdLNXNjU
	 qA/vEOnCS//CoKXHanehngtdIov5xb/IfZvQuTICBWCYXhNiLwJsBVQjXDnN7DY8PS
	 AGmhWeB+bJ3suS755uCukYY83BF7wzxKVh4J4u5bCCRsy1t2cRFG+Y4aupHaHkJH5u
	 oJWI3j2qfWeCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF58CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070779358.27835.15011855810126990165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4162aa3607527bfae85e3f7689c37563ae235b909d7d0f9a38ae1827c0c5204
Date: Fri, 17 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760707793
