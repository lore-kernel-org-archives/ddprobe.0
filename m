Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4649D6AB9
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717117463; cv=none; b=NQyxKuYjB5+wTMSeNrj6iQo9wDvdvUqFtryrf4NRJOJ2LPNqwHyLcKkxmGJB+JC4XJJt8xbE8QwOFxHHcH67xl8cXUQ5SKKz6w0S/3zhjOB427FJsEfHSWlZ5tBJOPkpH9a24XrcsZrgdoLYm9CYzjMroaDqHVA4urMdg5JY4nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717117463; c=relaxed/simple;
	bh=+xT3sZYvsiuuoYF6E52JQ713GkYRa1wYRRK63vG9FNg=;
	h=To:Subject:From:Message-Id:Date; b=jD5uwNXjajIWsqQA+pD7GvOG2fc1CwvmLIgZSOGZ3m/EbUgs5XSzh8B/pYXkUBN1NvvDhJYeIhd0fCTUC0t51zZ5LiFmkpRNbytTXQiYxeluiJqLJEkyhxv63VCBIoEywdGyl3R0qVK8y5kS2zdiL0hXF6XxwpB8YZF6jwPLO58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxV47a63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxV47a63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA86BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717117462;
	bh=+xT3sZYvsiuuoYF6E52JQ713GkYRa1wYRRK63vG9FNg=;
	h=To:Subject:From:Date:From;
	b=CxV47a63HH+n8xjaKGmBMMssuy2D0P2/1rPcInrjPjNNfHDXkFVmDcMHL6+LEBIFe
	 JKpCNuZP/zc0GdmlVnCs18cGjr24Q30LpjVrI/UBrWyIUvOR1IJaPLOW+UsOBtaKQ4
	 t1EbWCccfrOna/SW9A65pr9wFI0peiET1csHZvahCUyTl/rjCjEEmCuAQfW9dB+Stq
	 1zi1g9RPUWrPnX3aAAKdQaCN8UHalnk0m2SlxdioOTLlhbxrv4LFYXcOwNrmtFHy8k
	 Yrc2a+4Fz+qjvyuY1sh9E//k6ELCzr02/mhqX2xCCfbTtJ2SNDZ73M5haGYkRJrszR
	 7dUgnbyTJ0stA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8CDC25B76
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711746276.28766.15373558118095656704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4f1b23414a3433cc6b5db09a645b85e9e928e6f113ccb7a62a91a3739e9dcc
Date: Fri, 31 May 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717117462
