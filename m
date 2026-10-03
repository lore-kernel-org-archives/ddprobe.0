Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500D4311C1B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791058234; cv=none; b=kyPFPXMNfEPQh5nwBrQQ/IXa8DvHDWykbhjy2tI7f4UGvQMBis7e3uOFyER3hHXhAr1G9URrMeuMEfYn9LCQnBcaq+mdoyqACXLwTfABdJ/OGzTOKEBXZpBh7nJ/7eHS2wcofafcihV8QsDFsJ7kWImzy+wl7yRDutjNzi5UaSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791058234; c=relaxed/simple;
	bh=/QJkVFjihfV9dzjOj8zxAYlFUyXfCZ0gT4cq19sstk4=;
	h=To:Subject:From:Message-Id:Date; b=cP5yumqEEfTbMLL2EOk9/8GDGbNqXPa/1TDkHVvgRhKHLEhA1Blca3SbiLW3Y2/or750AvE7ItQKig7cNqInFzoBoHoj77V/d3w1SW8FxrRuPWaTA6eNSSSg5vWrUHs0uvw61SPSLK4c4vgii96uviSA/o/pXuBFpyqhHNCXExA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgNXwA5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgNXwA5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEA9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791058233;
	bh=/QJkVFjihfV9dzjOj8zxAYlFUyXfCZ0gT4cq19sstk4=;
	h=To:Subject:From:Date:From;
	b=dgNXwA5iSbs2E3R1W1jL4946Cln0KhD+kjzoKhkC3ND5XDLgdI6M36/6AipqA3KTN
	 /v37xP+4MMH4zwLApTFM2UVQ/8BqVF/hnnH/NNznaGl0SHXvAZzK6fR5rsaChFcCzO
	 L506VHgFv4Fu9C1yY6FFMZT2+2TC6XOLCJDIgqMAnJi7Cz01iGtzWcRlumU1uxwrL0
	 36z3pin8Fl0FYBtyF4YqwjP/2dWwipMQHFHqf+UGZPUor2fcUAnqYchmKX1uSdGCMS
	 1xN7H1llfE/Z1DYRtytJmpDDkJsXQipez0CXA0g6p3kHDp/caloesyq9VpjfgwwS+u
	 kjwrwsoDP7RQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD435CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105823369.11580.4770614785259601772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774c9fb1c69dee339e87a8efe75285c5b036338a9001e7294e0e64c63eb7e94c
Date: Sat, 03 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791058233
