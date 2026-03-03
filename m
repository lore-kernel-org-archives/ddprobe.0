Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178B038C2D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772529895; cv=none; b=nfl6NaS55cauv66QsuAaQMSavEFFgj3AQgv56DO/xLedtAt6+PnVa5gnYUNzJOmVSZP7qht5jd+rNlA3+RjXEXOT7UMHYoel+2r7/yYuqqrJmh9pcoWtiPs1UqP7Ej51u/cILXojLm86jgEuY6LFoG48oiY6baF3lCqLmjxiiu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772529895; c=relaxed/simple;
	bh=RL2FyYvrEGV2PKILyD4OEnPDh2Noaf3IhYikwdVHZ/E=;
	h=To:Subject:From:Message-Id:Date; b=kxLAHUT2Pb9X3jeWiay/VOZ+Gld4labGOFbxKm+gF5UhGthz1y9wlaFkLT9XUGf6PuA7MP+5iphK4F2+HxRSD95AAjcsTeVOYkaDXaLWTsCki8EmGIZWakyjickShr5eGLAS/D2UnxUhuyXInNSGuITFZ4b1e1A6Hf7rGj9BQJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwCFlR0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwCFlR0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C316AC19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772529894;
	bh=RL2FyYvrEGV2PKILyD4OEnPDh2Noaf3IhYikwdVHZ/E=;
	h=To:Subject:From:Date:From;
	b=pwCFlR0abUo71n2otjOflExORCEfYiRoq4zgWqoOf0k9ExxqMRMCtSQAgGh7vIZl9
	 Dbwpcn7Tvg0/EifChzm8ywHGHsRgFSQU0YEhGqdT6wrc2KfyfB/lhxdkTHk30z6vt0
	 1Y+J0cDQd5QIlbkeGHhR9Dm6XMjGmYNq3stefTj5wOr00aYUyOEE94l6rAijALwMjh
	 A30lRlhYcJ4GV8G7waEjLXBrpKW/5rs4gFor5mUSKK3fC9PoWV7aNtM5anGTPc7sjX
	 uYb89OQ1ypOrVpKL1OIvPM9ZMqmh8eNSZBJMDpuSzRz5tuOS17iAfoh48OgIlZAgGG
	 n0V3TK3qlO2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FC3EC0479
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252989365.22331.10659223979572119146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f00f5de6167b3d55bf4758cd75d3c1967c2802255a0b527d508f00719695b7a
Date: Tue, 03 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772529893
