Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432793A1E7A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766718834; cv=none; b=ldmTj0ycXgEWVavL3quEKEfaxmhstZjCHNen4mjRc8G+aqBEomyFawXzgKisqCdffxgCFlhlVs3sp0UBmWJAl99qQxAokG4PVwvBDYWi2R+1pNj59Kr7y3Kxkpm2l0dtC28xL90YfLHnSEhmP3LFk9yASihKX1GLydTH2wstVj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766718834; c=relaxed/simple;
	bh=01n3ueFiIFpW5ewI7M3cWXfQFfhQm37RXiKKhEo/WXs=;
	h=To:Subject:From:Message-Id:Date; b=T0c4k06bv0aMPuA8MNp918kBPSdvQmUkHXg32tzaB2Cwu/OqLbgjxiO8axpOetAAA6fm6wGFZ1Z2zxF4/R2BrMnsYpv36g4u0DNZ6nezziLK5yJM/0xZR/8QjA0sFCQncFAwcpSja7Qbp4wsekutHrAOy6N/w+++dYgHJFpLnCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6kbYZZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6kbYZZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA00C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766718833;
	bh=01n3ueFiIFpW5ewI7M3cWXfQFfhQm37RXiKKhEo/WXs=;
	h=To:Subject:From:Date:From;
	b=P6kbYZZzKQFu+BiVtCu/X+LKPv0TU71gace1mPuBiDAgY7fiz+TZauo2bv9Z8+z4H
	 5FRgvSrYC1c8ipa/Wm4A9SWifwqo68UaCEzLi5bPg2zBxObaLIknxXXh5mIVzshQ6u
	 Ys+fVexn6s6KDyFx0fyU8J+rdz3/9AiiJtNlGEBAuqxrYEo3yllUHwxyPe/+TKGyoz
	 /MbS+JTBy/+YNw7WjqVmjuvYySQpkcw4M34+cayj4zWbUYV6mbCDObp13HYuEGgcq5
	 o5vJ3ZpIMNM7o40J9eDNTrKq/A8VPAwPZqjOqrmdUFnASPNC+GE+13UpoDwqL/CBp8
	 +218Sh2+R9c/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FC5E7AD77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671883358.19616.7201612539226619663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c4a2ec615d49cd8c8372a0866f9ec6be719930320b49f59713de3b401cdc3c
Date: Fri, 26 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766718833
