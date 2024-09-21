Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA023D7
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726888554; cv=none; b=VZWbk/4z1NbcIwpboUAgLThV5uZWVcX0iGp0tRKeNiEZpOiKU2RsYfnH2bswPNNhx6ykmLmmBpQ05pu+QmU//AzMOIArJoITKw8zwMjggnASxoE3sYp/3dLEgp/WBsPuF7RdqYmNzp06i7CzXHWF1PysCAeyPcVOnKnik3mElO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726888554; c=relaxed/simple;
	bh=xFGZLnElPoh5XLplqu8cIr9FIC5mLW1rMxz506sp1QQ=;
	h=To:Subject:From:Message-Id:Date; b=kRvGv6W/nCQm8r5EckODt77elTONTQxz2XAjbkhrr1OrvgSuglqKC8obCathhml00Ab4nas2gKzBF5i/3hVimMpelLyqj15jBlb90mA854+xaQZxpULYNrg/wJTEEBz5V8nqeyFEa570mvjB5iKZg2/0BrcLRix4Djgc52md3dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC8hj2ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC8hj2ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE94C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726888553;
	bh=xFGZLnElPoh5XLplqu8cIr9FIC5mLW1rMxz506sp1QQ=;
	h=To:Subject:From:Date:From;
	b=IC8hj2llX/+lEI+3AGRX95hVayiS/oxSxB0yAQzeKqBTSCCp99y0OWXJEt0IrL4Pf
	 OcR4L2T+Ylkm5otN1usEs7ltO4sZCFZ9kgLB651HPa4GiWZJqvmvUMd2t34qCWOGM+
	 pXeNb8gp5qUmFTjuOqktKwIUPYwe+mGxa98clWwzM6NVlPwo40wSs/aYg0txpi3x5h
	 w354kq4AORyv28DsbnpZ6Wf7s+9GiUb+yZPdSQUa9TxjfOqTBEwoOpt+eYoriUbWZt
	 RUvItnP6LPHHJPLoPqOwQJwMY0g80KUsIkK9/boAtaujDfSV5+V+Qm4KapvJSyOp6Q
	 s+35IJybv8cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9945BCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688855359.27789.7969335357003297576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b603cef45c8ef01aec2843a52ebaf977a192b2f0bb2c93545674af9b6221ffba
Date: Sat, 21 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726888553
