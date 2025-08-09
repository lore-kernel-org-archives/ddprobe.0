Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289511E2606
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754783395; cv=none; b=hTJXPCY3gF3GtuZVJnm+OoV2VWF5NZX/jExG5PvzdssoFHxc4eVIWKFy1daZMj0Hm/HjzePgeY+uRDFFOtzYqlu4PYpaW2+oCaZTxB1k5H3yRvpQU45vR1xdfWteVfYdZjGYYHrFvpvwrYbUP0JCWkmBHrQT7zHY1LhxDZLuC0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754783395; c=relaxed/simple;
	bh=71O28UeLe9NkwMZ9FiIP4Js807d9Z3C81zNhW+iQ4BM=;
	h=To:Subject:From:Message-Id:Date; b=LfY6kX2QNXZ3GHSKEnQOZaXD+RcZUEbihxEs4o/5pfsbn9ZhrI/rYU1PtH1Oqj47CJawMFkrX9GmEP3f9QqhTBiuPl0KFRXsgL0IkALsINpDsM3TJUEcC2XAK+zeXLiOMZjY3qmSyAhI768sJiW1RNkCmaEf1IJYpvowItFisGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufF4PbdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufF4PbdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4347C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754783393;
	bh=71O28UeLe9NkwMZ9FiIP4Js807d9Z3C81zNhW+iQ4BM=;
	h=To:Subject:From:Date:From;
	b=ufF4PbdRksylikaP0cSkxM/HjhqbbU0FifZ3NwIjiEpS3KlOMZnQjsBgIraZieayi
	 5RlvM/jdu2DDKch8e1SeQYYhF9czFDxOPPzeK48sdvWpjGqk3XIXvRtYyPYSHtFzdi
	 zW3A9zqdMxcSL3pc+vSP0KvzHpaLF6io/JmRswie0ZKU6vQLHWMf9j0iEY/eShRsIf
	 qKKhB61FYD4uD4czfxi76FgxadjPFe0vhqQpeO6SaOQG1sOIXT7J58EK1aijdcyx29
	 ktWrrybsiHuHLDSohv7GgGTLgW2XTAsbnsyA1qUV00gUWFMeoc6qwdJVwG6E7BQ57I
	 wPKvgTxUSbhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCCC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478339357.31687.3405988029806562867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f4edfd2f84e085aee91721d1c181d3716540852de173b462c601682727092f
Date: Sat, 09 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754783393
