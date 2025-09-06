Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4292E7BB5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757151594; cv=none; b=jQkAUyruPVB5ZQHIwMmbGvOEutmrMEP8/sbXtBW+jsK5pM+W9+pREuPEpTSZkSLXocaB3Vx5wYV8uA/YKf3DrZkVQvFyfjuoHRkYMet8/uHpE97jXcf5tIeWqc7fNOmNviASa+/I9TRls2SY1v65t52s57XHoCfwHfdVsjhgR7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757151594; c=relaxed/simple;
	bh=v5eeCPF0mQbTLe/9Vo1Dn9JbX6ntBqwbYl8z4hwrRhk=;
	h=To:Subject:From:Message-Id:Date; b=LG8+S3i0/f+CGkZZI2YvJQJupIhJRAZDrEQBBMrMStueGYQViulLWVvcZN/vuy3pZz0gXCRKg+FDA7nY8mzG4pdC3g/1yJC3YPth848rpSpCmdOcOVYQMylIrXbUhBW94s9wRvRfoojoS9mihGqQNzVce1xavBZ0xhfmH7D4eb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5j+CNVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5j+CNVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757151593;
	bh=v5eeCPF0mQbTLe/9Vo1Dn9JbX6ntBqwbYl8z4hwrRhk=;
	h=To:Subject:From:Date:From;
	b=H5j+CNVnREQK7r46LkkG7dpr65lSMXfZHqGp/YIyvxKyyRooRHJPF/dP+JPtI2uj0
	 ySe2+AfHytVORzH6xmnpcNs6Bpm9jb8fKOYXRvET2xx/yJijo4Abuom/MyZyKTP/Nh
	 2MKYXKfcQRmHYAbDyEDIBa0jmgt5tPn+9/xEXhB3EqM3INbJdLhhC2Zr3evGwvUbHO
	 sPslzLnjm9CTL6qIupxf5oRjSrFk2SMgSIxDs/cV1QvhBCP2bitQYoggdKt5PPxTun
	 sQjSC1DsJqylKE4xfgkeWs7MK1+lh6Qm21bJrXoR0Vgsx5s7QhovCCmfToBMovgGNr
	 eP06u2W4jCGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE1CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715159358.20216.16580756453515856697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ba2276393078e72eeadb67e520f71bda4a65b543ab6f4f91c34b1882293e77
Date: Sat, 06 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757151593
