Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57ACA3502A7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785055834; cv=none; b=RaGt9wAaAP5VZ4hTsFXQL3mfz3eGQrePn5JTVniC1X1PTtX+OlRt4sspkjle4efExlpq2GKfgIckCxD0aNbi3zzBXzLZdTzlL80mBkAYaDnCioMzxWBaHULTtYT+VFscGbRNMb7K2bXQWuIPwi4RyNAnUu1bpszAWVADg8gjdTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785055834; c=relaxed/simple;
	bh=Zf3dMgrVVTYeuiJ72OfGvlELFMUsDXszJfayQFQP0A4=;
	h=To:Subject:From:Message-Id:Date; b=GVg9E7lOHSx7H8MFOfy3CRkwtrGaVvFJfmAvGkAdVi2kdQTUF66Tk+2wnGdOgPhsWZDO2VrZq0CdjKxJY5MMMYL+Lci9+Rp/vlGefadtqMNlVFTpH7je0rMSth826SbgAbPtUZjWmQROWM8SqsBVs5Zn+IkXBJPtaqWlqID00V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM7DaLVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM7DaLVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EA2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785055833;
	bh=Zf3dMgrVVTYeuiJ72OfGvlELFMUsDXszJfayQFQP0A4=;
	h=To:Subject:From:Date:From;
	b=qM7DaLVZnNu15VJsZB9PJZ9Z0b0kSYO9s0ZBCtPnuvfIxtx41HY8iZPF0byjEVs8B
	 D/bfsJQqrfXBmEAijazJFqhHLZGUyu6qpMmtqWZTOf7WiEXkL7VEZJHI78qZV2ToDv
	 aY+MoIuoOVY+uXEw6/qVmRxl0AjwrcdPg7hdxA2P3cdvbDJZaUGgz4r2TCJwG7LwH5
	 DPAYtVcKCuiO0JqWMpou8/7dwOZW5FOpxA+SHNHPNF74in44hd56v8+SK/KQ6fC1bC
	 OMiHPuyqIobrPuW7yihkQs5O++a42SQVJs/8UzOBe1mKQpbSFau1qq9Ks2rZ66u6uf
	 cTPSDCGHiMjKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD85EC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505583368.30951.3149226375018510204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f0ffeac85ed7d4d8a1d010028cb3af5b03a6b535ff7408c2cc5a833ce60528
Date: Sun, 26 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785055833
