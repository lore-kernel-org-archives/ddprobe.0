Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08CB156CA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767905034; cv=none; b=DFZVUMykA9QB2oFerDB1DmxqmBxrfdSGWrFjwMtZFTsY+i30OpuoEgSYRPrTe3vFVFlJofC3YXu6iKatb90/C//C33yjAtLK4rYAbnEsGsASXXJwq4seLG7hoj3jz7L9C7FPECo8ZHBOP5gXHWCmjNf6BXfr6zLLhEqB74PFtWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767905034; c=relaxed/simple;
	bh=w6fR/nz9H5elfBCjsoGQUNxEl7XRZ26r+FjwBxprgeA=;
	h=To:Subject:From:Message-Id:Date; b=NhLGm4kCklsdkgJNmcRgp96LiTREsD5lu7X3r4niN5rDnzfUcuyr4pOrGEdBHY8vySGb6JEh5pcaC6F4Lhx0/SyJKfrsxDf6ewvJGDraGHpK2c5SHPBQSzY+0/A/+Jug1llUVJQqdesRiyLLZRmZRO4C86CSQvKFPnPPF53cbDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIOjCabT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIOjCabT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767905033;
	bh=w6fR/nz9H5elfBCjsoGQUNxEl7XRZ26r+FjwBxprgeA=;
	h=To:Subject:From:Date:From;
	b=JIOjCabTdEQ2tGUQqPUbrcjmPZvMsJaFd4dnQ9eaZwWKoWFX+5wr238sWoVI6WAj7
	 fVY+9Sosx6Hl9uf4vbJl5WXaa/fCZV+wsxEZJsf4DgSwaCCMzO+iZhXC3mbrLgdp/g
	 TLLdnmbDzioFGKym+I96G4XVuQ0xsrB66WXg/RKWwYEFwqC+ILgYFXAJJ+su5UDAAK
	 iNeVCfoohv3GwicGjJS1LIwbDu3G5PjbCf5iNWVzrhTfnMnXlpwfHi3tuw9VOnIxb9
	 jLzgAuSU4HvAGd6euGkMk8QivyCUJSBTckGS7l4s3kOZp3lAD1+btikQoEZ/+ylT4m
	 9m6323fOEhNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91739D1D48A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790503358.3604.2616378631350072257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723c68ff166cedb9873c1925baf7d162facd784cfa4a218abfb28d9c5437c840
Date: Thu, 08 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767905033
