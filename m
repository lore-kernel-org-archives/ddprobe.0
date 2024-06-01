Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D7F17BD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717256063; cv=none; b=bLvholKccQeeywy2cBza9evom7nTHgw8ZW9h28yPMo3fBj6Eukfdxqc8D0/YuBCae+lfcKJpWhyKT6wLcyYJ837zzdfoOT4mLEa8cmL5jj9s4chBhEcRFXaew98AGoWXL0D7biDoEWb3IZJ0cZKDJC/1Nmc3xw+VZVgyn8yXU1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717256063; c=relaxed/simple;
	bh=i5OcOZrmCIllhT4l7llTLgqWo+CicIoXkmEUfG+/yr0=;
	h=To:Subject:From:Message-Id:Date; b=koeN3lBOtexsh0N8Ftwco0TpKyfJqIRYHj5yrSufW2wQbNjAxnIyWuMkPBYp/N7EelYKofPFPktLmcp8YELRUxt5Fh9t+VPycuwATDeSTw7+IvnNbY1+iPPHzv4Y/FZRHODJXAy5SGt9j2IalzKWkRfJthqd5AVRfgU0fOLTVl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVtkUBCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVtkUBCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB83C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717256062;
	bh=i5OcOZrmCIllhT4l7llTLgqWo+CicIoXkmEUfG+/yr0=;
	h=To:Subject:From:Date:From;
	b=RVtkUBCy1L4uAkXzZcPogtlDWdEwtygqs7iG/uqkRE+XuZGHH1hKO9MSZaI+1F4qL
	 HmnLfOsfZHBhNqMg1mMpVbghCpUlASz1vwg94gEf+eP7Gjg0SzhD4MWaXJwhIbg7RG
	 MTS9BbXKxv919KPtF7GJmroPy0zQOoQ+6UW5qNzHP0Eb8kZNOMTKwsdkcObNWLF97r
	 JqZYxJveGPJ+KyjiTegu5rJx9Z7oD3+nLHt8fnoD54m5hutaS3a3TpHSkyPJQodie3
	 FlGowoTabNw+R4crYe1XBSu3bXjXDL5x52Nn5NRekx4ioxQTnfUsEx5INli1LC6ClA
	 veo39vhQvJJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6A9C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725606276.8510.9942096300798779976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d65fcbb1f5220dae165b009f695aadfb72211bf8758dbc35a1dcf7faad274d
Date: Sat, 01 Jun 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717256062
