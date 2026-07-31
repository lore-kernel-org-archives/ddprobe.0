Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3390B3E9F76
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785498034; cv=none; b=DW8B4dpDLHert0hrXQqqKqmU8pwcmRaFmNqxGbftokYUy/qE9Jc3weqf7VZDx/dA3D+q3fWdE5HVo9bEQakWIs1eTwdzlyCymacIbEC3eA0Gwrn9zunNpzlnTHWSJq1TnjJDLhXPSMg/R7PLJVCXUza2DmVVYOJc0ENr608/aEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785498034; c=relaxed/simple;
	bh=gdNXzaP0TDKJScxd3oaYbA2vucgCx6u8pOPaZBN4lmc=;
	h=To:Subject:From:Message-Id:Date; b=diXdQL3FTXOhn/a5A+nsypmJQmiIx1gqRmlr25AcXqkbmCIW0uhZOTLmn0wsfTlEGcfD4sVgQcjiRWcXV7U5Q38gZCn2NZ7XmdRCXzp2dsqTZf1vxbhKh3cu6I4hI+TXu8os182REkXhP4MiNXgcxqxNd6FHauiSN3sUBCw64iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpYjeTqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpYjeTqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4258C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785498033;
	bh=gdNXzaP0TDKJScxd3oaYbA2vucgCx6u8pOPaZBN4lmc=;
	h=To:Subject:From:Date:From;
	b=qpYjeTqoRWWcIRhxcZFDdxB42Ff+68q9n1zXIYDEK+nXmM08qR3m0ZCjIuRhqsBFI
	 L4mORiyPNMRs5BDXkTAgkRWWsdY5rcRLTa1VUUp+4kTYGXj39hins5NRuS5KhGNNvS
	 7h9Wn0I/Gh6NwnRELQjjx9hh1gahzArd3BAgy+TZVkXwhSRH9gybb7eAOP4s7sIWjx
	 T0UN6u9Vn95QNJOBTGgHMZnWqieqWHbDgjruKejgJLk661IhTOvI8uM9PmTs18svFn
	 +EhBNoTKOYAwvdLXk07Ymqz5k0KX/uWRYawX44JhttEobN43E8HUHMtehDf8r/WiSO
	 Ib9Aceedn1zNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B127AC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549803368.13473.14290728470883665387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1aebacdcf3b4357f01867a0667176938f2b964541613f3ce75826bb34f443f
Date: Fri, 31 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785498033
