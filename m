Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAEC1C3F2C
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733476554; cv=none; b=U3BaT+C7b69mfDqJE+/AmpP5SWCvkjeoYZHjQXrQUqSdWgpgn/Sk3Puvp6ZJhM71MnRbSePKDTycYdniCgp9POv8EjqshAGhgnSJxbNNv8K96PfhvrUD+oCHqvV+GQl1GubPYvAChfMAOoIKHKKgbHLvsKQMcK9GQKpxAI+5n7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733476554; c=relaxed/simple;
	bh=FAJ9+oHd5V6/3gj04kEXllTJ5tzWooQH9xXYxQf0a3Y=;
	h=To:Subject:From:Message-Id:Date; b=KX6fXBeppzi7eALw7Q1LHthM1I6pWrFoSFpyB2T/19mAG+vKBTY+L4Z8HRPN9zCm1Y1JpDbCYT/AM6UNufmaAGhHfxofWArLdx1rWZaWdGzwhOxcJ2UJJMU79Hk3yTrKM7PWg417B8syFqacMHIXCAASTOIWIWZtuPqH+NMdgWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFXCYcRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFXCYcRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49BBC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733476553;
	bh=FAJ9+oHd5V6/3gj04kEXllTJ5tzWooQH9xXYxQf0a3Y=;
	h=To:Subject:From:Date:From;
	b=IFXCYcRKUfwlRhqJF2tZmNW6zOkV1hx8k2oNIXFIUozhgaZ6+sFyRlf0SZO/xqQBq
	 689u67pT7Rs2CXfCM5BD5ZcTLLU5ocbkZDFCgn4zY31MM3B/H2lUXIWD9JCoWmgWah
	 DWDcvH1oIoJvJeIc/TQl4RTKae/C0fOkkLIqYi6y5i5wNCFwes/Vt80oi/NGncoHUW
	 C431Qz7xKMdmPd/9451RnsN5+K8gZ7a+Ce5C7aesnG7zIO4VOoHcfE1MekHnkNnK8X
	 lLvn9hOa4ZsS93oA7y/j5AEt45EIWRnoPMe52VP9mRGEWOGZmSSzM5H1RIDaqFvplY
	 tGg8HSQvicdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98847E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347655361.6856.12114482238746569693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7e09772649d3952f64190feb6396b8e2ac2c2cd00a1d857597c24bf6170d11
Date: Fri, 06 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733476553
