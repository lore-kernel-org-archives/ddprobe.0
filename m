Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35238213E8E
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743433194; cv=none; b=U0O5roOFlDk9qbKdRROJrtQQui7kUEzftt+CwGN4RC4nppW5rnppOHtO6IeclAWTGv25oXaKy5Uf+le6FC8FIU8/R0bN9FUl8yyooGeHlL9ESJc44P/WpzFNc0mSWbqdwV9AnDhWDXb2ivqSuy0p3IzjT0XWtk+quwhJHlLHS3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743433194; c=relaxed/simple;
	bh=17cUQJK2o5729rGHFHz08QZ7jJCJkoKl236D3LdEUz0=;
	h=To:Subject:From:Message-Id:Date; b=fneQ5s21qoCZrR3vyca2Y5aVs55DhSWXSmsbDAgvME5pDgg861w9IzHaJb2+GP0o2C7cesn9c6t6I38r/Xx3GxvrccsqxAxeJvio9bmLUoXuNhTTbp/XruisNHR2wUro0q69tR3NzSB9us3IKAN2jQt7lCi+SkdtU6nVss4aQUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe93PChh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qe93PChh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC853C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743433193;
	bh=17cUQJK2o5729rGHFHz08QZ7jJCJkoKl236D3LdEUz0=;
	h=To:Subject:From:Date:From;
	b=Qe93PChhdQ8T4BOnuofmKeDHiTfyeeq7F8OIavyv6NOx+adkraLGadE3JR4Na1HO4
	 VllZdC13xoQyqEZ7LP13z/1CA4leXnRkN2kqhUXfBz+eUcJAJpB6gHox4abIAGTmWn
	 vAPM4K3xqbpjL1J01//AarLWrktt9PIRWjHSYsJttvNu+xj1udSPbHp3DC5q0nqGNG
	 08Y6MuXxI8mpHPFIa93XCnNet5Wll2ePOLFkxRjmroiWjwBrZleropAgWKior0H470
	 oQ2Kd53XjFcmhAABMDmKgTWmDybc6e0OiXds5ZkqY4KNhNQutHjEGgu44NfO1GwRH1
	 Wo340ne9FNUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95558C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343319360.18679.18080315440139004087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1098a321671d1e4488ef7e621a4b393f8c9448e2dfe288808644537087c026
Date: Mon, 31 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743433193
