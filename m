Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0851A3BD7
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734821754; cv=none; b=uO3Q+3lWSLa66jpg3p7sbk4HGysMvFjzZEfA8U7Km+KFmJ3afZdFZJQtKTj5nZcxVRuHLOWYbgN2TpNJ2Icmg8VxfLcikzfsm7HpEMcjWKSfey7vnACL9PBkSRhuf8CMvTlynhsjPRrpprKiTBi6UL9xIWk6rRIpNb0aGrD8C4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734821754; c=relaxed/simple;
	bh=BM8BKaEX0tpXYkttHHtHfBDPhKclx8svjFuwTzvtuzA=;
	h=To:Subject:From:Message-Id:Date; b=HceA/anr7nmi3GJJCUeNOG0KEi+S7bXbXBY764ZjIpWEmXAKhLPEd6UpG9bCuQqxdJbJ5E+WotMsTDvJsqrl6DZH/mrmE4v/HxC/tNYbn4ph4ln/rq8pMe/pFn1aL2VdLCRKeVHMmQVWjCP8KTIoA8HeoeADyffaVep2V9xZQLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av8g4/hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av8g4/hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7AEC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734821753;
	bh=BM8BKaEX0tpXYkttHHtHfBDPhKclx8svjFuwTzvtuzA=;
	h=To:Subject:From:Date:From;
	b=Av8g4/hvAoYROECjStz5sKw9avp4V3bNvEgPPu8fWQJlc4FLozSDVa8G9vN0I9uhN
	 QqlbzEgCf64mm+tszYkSDscprTkj4+QTKH3wclxAufSRRldlUnOPnbxUDbgCim9C/2
	 FcaGbYdk8r+IMQ2rbrftpyHANkSVm1+hgSx4G133eTG7hM3YPh/6c8qXI73Z7/q9Xa
	 xdqH8oTxYNvDZXE0C8IXzCyhS2ItuvLI4miV9Rsdnt2Hro63wmFU9JSpHL0Uk0Tke2
	 aKO3mQiqrhVA79guZpKdcy/X3QX/7Mphvin6U9Zxd62onEcsgMNQ0mrpvFhQU4gtAt
	 KKGmZ3j8L3n0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939ACE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482175358.20056.1207937943449549700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9625010540f4124a134889ba5a8297dd4ce78de4ad29a243dac4552f5d4712e7
Date: Sat, 21 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734821753
