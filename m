Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926B13AA32
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716806663; cv=none; b=HvVoxJNTAkGzbFMxI0eR2qPgHbt21M9G/RbvKkfKe4lkTh7J6F6rID9XreQahnxMgpWiNy1DWocZ3OzHJAJtYWAfL6Z4Ca8eL/KvTYFouPXZJ8q9+zTMjYzhxvUkDyjBJQ2rZxUL5WFBmaeP/al0R3boHvIAKNs/o7Lc/ks6qPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716806663; c=relaxed/simple;
	bh=By6d1JCNQiFbY95j+d0ucG66dNSXOURYg37v2Uji30o=;
	h=To:Subject:From:Message-Id:Date; b=YcmwHgLoGFYcwTX1AwZcrFxuM69D91TD7lxGPz2BzMHwkik1ShxezEouKZA9NImu4mJ4CCu/s6irV1YRNGqVMcJHpNz6hOOMeNeDXoi/tpavgK13EADF7sxsytUFCgWAEBBQ69oYp2jNC/GRfH1Vq0W0O+7NdONa8csFp3Ibnjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXU9BCXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXU9BCXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D998FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716806662;
	bh=By6d1JCNQiFbY95j+d0ucG66dNSXOURYg37v2Uji30o=;
	h=To:Subject:From:Date:From;
	b=DXU9BCXiSfyspmsWLA/Yc5qqphF6oDTyjaAJCwr3S7Ovg2gJyRkIW9NbfE8XsMfqy
	 Y2Lf/y/w75mP/sXQgOPS7j/pFYOvQ3/RDcuitPCVH0rXaiJfuAxVdkD2I1CMOub91i
	 Cpdot+wiJmvZJsCuIwKlOziu6nEAqngOmoPy/6bjQXBf+TPMLf/SEsTtGpnsXtZftP
	 9DUmZ0YuBbc/S6T84FXskptg4A6mncn/YGhmjcAMha0aF9e7cn3/sqM9kZA4DqNJQP
	 4fRXCgO2xanDXC8hmyN8vvyw9rMDcfElWRVsMCttFux+Vm/8FbOezkG7iq9hh9uNgQ
	 44WPeQnneibsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6E4C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680666277.7502.7642281849915579282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0177f16da673d758b366d90658d3f214569956a97155093244627539eccecc9
Date: Mon, 27 May 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716806662
