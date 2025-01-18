Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436292F5A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737170754; cv=none; b=BCqkx/l1a05A3xFk1eQWCI5XO70/0WRFqKDJggYobHvpdHkQr2aNTIbvpBQYXGrMSFv0I4vxUckyGGh/q5z9Q5QinyjTL5ji+vlBqFyDKcW7BsFoSYqI+l4RmUv09F78xXX1n6v1Iz/kbp2A2zE5nz5UmSyapAve59cmZaOvQ2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737170754; c=relaxed/simple;
	bh=lgBdtyf8VulilBN/zy4T9dTDVLU7BYpBUo2hY3VWZuA=;
	h=To:Subject:From:Message-Id:Date; b=TRRb8tR5Ksvtv8+6ebrl6oue/MbGo2lhwLtKXiMcWHXuZ5gspd9mHCUCI6A8s33YafzkAF2fq20H85hxlsC/L2vlO15Lga4Z1iQzPoeHDGzvr6qmQxUDDCupWNwlfvvMl+JZyDC8A1Xi5lFMcrec6+QThprqKNtEn/2fEW4zK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im6S4UpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im6S4UpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE654C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737170753;
	bh=lgBdtyf8VulilBN/zy4T9dTDVLU7BYpBUo2hY3VWZuA=;
	h=To:Subject:From:Date:From;
	b=im6S4UpAQk7802TotUTfmwCm+vD1tKhz+oZToqbdEvM4o1SkBoJG9r2nmlqlX/DYt
	 Hkwr30whqpZt0gYmDroeFIN3co8wiDqecYne0yCbIHHWBomTIP4oS8E5LPl4LXc682
	 uDppNAE1vuTx1PO8PN1nlQrBMSDnBUmaXV5uOHTBMhKzDflWrP0OwPw8wGbWEDNPp/
	 39TldReLdwCY8EfdavJ+LbosyE17B4eGHBr7J7VSgk2n3NYkPehsiqhWf6AW0Hfjc3
	 pfaAAY1FWeABddqMYjnW0AYuEm7WmwGDW/pgnD5ANQJpe6/3Ob1DpSNMI2U+hJG8gj
	 cXxVaOC7z1SyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95613C02187
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717075360.15667.9595813059973810227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd2da9fa3209b8e6c5ea9f3d7d11242fdff610cfaca82e2648581a3fc9883c0
Date: Sat, 18 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737170753
