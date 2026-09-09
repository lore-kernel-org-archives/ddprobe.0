Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5717D3DD849
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788960634; cv=none; b=OURZYhJuTD9OQV4dToy2iaIDHHMwF3lQPGx5C2BFuvTpK6yfSaqSlVArmdnxLKdaZh9MLoaqKjKgOEqFm4ZkoaNXmEUX5ie/0NHKCARg9MGHPhNEpcwHT3B83jEZjVjGHtvQmk2Zr27xIU1/d0+GVQ1UIGuV0MvB4Idne+Yp3SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788960634; c=relaxed/simple;
	bh=yEJVSKe7+MOoZFZXvuz8quxzeGmHbGKHHoP6PPbQGVY=;
	h=To:Subject:From:Message-Id:Date; b=g/DB4r+oPo2l+YOOn+7xONONmTLUuD3cM6bYDjkWtfa9JqDBFAdnBQWqNhiStqTykCzgmeU9OGqInmqRSVjAa+QC/8doXNKDKM4IlutbtBeYewfrayXyWe6yiN/DVldmsCtY9paruxTU9hX1eOdPT62aNKx2WdbgibGIoj6v4k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p70iQjBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p70iQjBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF5CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788960633;
	bh=yEJVSKe7+MOoZFZXvuz8quxzeGmHbGKHHoP6PPbQGVY=;
	h=To:Subject:From:Date:From;
	b=p70iQjBay917d+Xs2UpOWw6HCtIOMG2QEliiDEQxbdKh8ccZ08X2qalAd2psxlgYs
	 Ufi/1lj3e/oLEAwkJ5ffrJx34Ij3fAaQBvOniAi0ARxnt5RUmFoAtoB2PvueD5aL3E
	 chJpK8HnjfANmsUux3461o4uj5EntHcr6HfjQpX2B1cc9ue6k4s7+7aZZt8IHGWvSQ
	 w8nmf8dakDOZq6RjBzHC6kIHeJ1/FGNvBh483gZnP+XDhWH0/A16ZfxhReZFCpUFi8
	 MDrynoX/9UPOTL2TQIeoDzSce0I5cRdc0o+quc3umrs0VhZjb81jtGemLFWeSH2J2j
	 EaVVfevEuKOLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EAEC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896063373.4616.12226091415537587199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ed62070092c6b5c2f1aafc9cd8fe6307843a4f10ba74564fc30fa7ac9c85f9
Date: Wed, 09 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788960633
