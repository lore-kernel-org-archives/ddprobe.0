Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14118250C06
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753772994; cv=none; b=og36FmMEx++FjP4riXPnv74MJraDZg2HFWABNK5+5THPq6Qp0iJCi5kE1efRSQoS2Y4RXYu7gL0YzXwurP5llNZj+qFfvJPT/7QCA45oqwCJ7rfKhLM49RW2ba7gTI7gGi4imnANVCjHLmfu0N2opmFN3BMQopel+58ULI3Gjhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753772994; c=relaxed/simple;
	bh=LcdCx86/t0b48dpgdpWB3wMuUpa/WkNbyMiWp/tPR0A=;
	h=To:Subject:From:Message-Id:Date; b=JOj2sL9c8JHs0mt3jABmNSuWtwvy2ziBbDi5+mjmHVgTYXjJpd5PgwSkTOOXFfrsnRDfiWaEbA4Ny9Cma9SjQSRA/swIIvaiu8BC/yW5WrEZ/PRefgd9fdm6hTYm3FaWoZlfb5aL8d+KnE9zuR+lHHEsTcZ9FSNe7G5JFMehD9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sth0BgcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sth0BgcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF51C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753772993;
	bh=LcdCx86/t0b48dpgdpWB3wMuUpa/WkNbyMiWp/tPR0A=;
	h=To:Subject:From:Date:From;
	b=sth0BgcEf6EcErILrCCm6h5zdf8aVCmEvHqmKJXJ1bNFrdNHGC61PUjsHH7T2okys
	 w5YnnLNN7eQCk5To1byD2q5oX0+rV+TK9gE7IFp/oCq0X5RtRZLarQT5d8xWgDuG3F
	 gw9Aczq0I6aLiVGeoPVyLyZd3Qio505rocT3tEBjfwiIZ0KSOBjznT6rYS8Tbvw3KU
	 uOIpNg2X/IrtIJ/DPcHAkaFGJk+g+AwWc43n65y53wMijiVgm4qG5YAtJk1quHf31S
	 in2I9qKajQVf2s6kmfP8O6Khta+6QcQ7l6bU+dR8YHDvoaRrp6pGdBd+f4Cb6IZHof
	 XyqQHZ1MEE/hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B5C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377299359.21883.17846885025827482647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af71325a62cb05eaf17b6553f783281ac47c35a23e2942622e1e19150cb59c6
Date: Tue, 29 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753772993
