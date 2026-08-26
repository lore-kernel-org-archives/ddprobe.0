Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E1244CADC
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787764235; cv=none; b=bMHLcLfc2HD+PKZ1D/ze0CKm2meSpaL36mKuPv5DMKlf8++t9rwv8I/5Q/Cm4JvP8LAT825CPthbP0jL0zFH5JGPBVuKd5GOJfUDKveVT+WJxWWnx2ooypml79wt9R3VuEtEt6ODxgPmAD02EX4JfYCYfJuYhUc6c5Gy923vHEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787764235; c=relaxed/simple;
	bh=1IXX7TZnB+PK/bWiaVo/XZNn7OJr+y48rDG242qGnVg=;
	h=To:Subject:From:Message-Id:Date; b=MuId5qEJ/v67bJ0W8HVRHjkbrYKjs1FDaTgr/4IPPc6suXA4aKVejl8NixTHMwepl4x7tdWEBghqTk0ARUzlWuC+KQVSe0tQQ/4Zk7MBie6ka7JIiiD3Eg93QLtv4FFDH+BmbcH/JiE/As/ZSQwpsaqUrBq/QuKQa4vmkeg/rgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFuwUE0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFuwUE0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD21C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787764233;
	bh=1IXX7TZnB+PK/bWiaVo/XZNn7OJr+y48rDG242qGnVg=;
	h=To:Subject:From:Date:From;
	b=gFuwUE0nCD0ppa3K+xBR2G7BhrZ19JTFqyrudejB+zxurAK7Yi9optLczM/aUNFHm
	 9/B9gvAQsG1vHeWpUJnWmQgXati6Wu19ckghLYunUE8VLbIDPIHcsM1z4RzXyh2eJA
	 t8O/yX5kgJ475Uy4p165NcS+c/0Z4rFAYZTBDJ4Sxm+FrgZqnOZ37H+cPnA+qDT3ao
	 5cNCqHoLzYCC7rOCge/Z1lG5Y6PhKz3DiAkvvEXAlds7U2wSlw7/dCj3n9+8DuDnf2
	 Q7mqlcakXjBVfll99eQ5wbtjVNPy9xykQFcqvgc/DraBve51S6yuUjULcHrP1suma1
	 HObBpwdXfs72A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0BC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776423369.3831.14560800112528447418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fab3c01df61cbd60d328d5c8b91f5080bd178a37270c35ddd9601f604e93c9
Date: Wed, 26 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787764233
