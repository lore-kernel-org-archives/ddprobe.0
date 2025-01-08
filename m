Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBC211CAF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736315154; cv=none; b=iA2fzD2FDfmBAiJ6cCbNhyzxyfecOePkOCkyDSuxQJgGIwTwoy0AfF+Eb9iegwKHrGfo8O5W9nQizPCzTFswBxbnrgyHWl4POJDo0Kbsaj6yWZdPsv37XCGAQoUV7pWRuEEj6ccrQHVTUqcUi7susQj8rF0fVRIL8V1aJ0gNGM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736315154; c=relaxed/simple;
	bh=vA460udYnc05/fZVJDKa0tHrY8LsvToWiFl2Qwkuk80=;
	h=To:Subject:From:Message-Id:Date; b=pWuCuuw1SnyMoG18LNJmErvol8khSaj7FfYWP7xYpPeYMNZHMEU6o75HomU3HCqgDPVN8LJEAwsR6z/gv1FSwS0JUk38mOKKYzLFr3Zq6Ty50XfIxR5YcrDa73qZgD1Y/R4wswK8I9wa/CrKfrgNxtsLsapM3so6KAEeyNTT60M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsNXjgpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsNXjgpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1267C4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736315153;
	bh=vA460udYnc05/fZVJDKa0tHrY8LsvToWiFl2Qwkuk80=;
	h=To:Subject:From:Date:From;
	b=WsNXjgpHXCLRPIsfqLSdo1U3OotxfFKnc1u19Cy7TJqucqmvQGSSO15JExNeNGkgS
	 BRVSRulKk/UvlNoDKkgWbKo/EsqxdsimfeVTi2t+ZhwpFsPI1LOX5avaZHkUgHY8dy
	 YwL6loX1ni682h0ndLoVX9QszoTkepiQdwp7ZjcyZ5TdY9wBiySXHJk+j3AilrWD94
	 qM6aek5eDVBsS5oQOeh2tOv9ou0PV00vgF7dtFIYSIih1x5FRAgwljgkcmU9kUDGTt
	 B5LMo89Qnr1NWRQAmUFrit0vBhyF0ml/7NfOEiSVhEyizIdXfltR3my8xGhpzIDmrh
	 gggr+q/0D3jVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFFCE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631515363.11675.14330089845044215969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93524fe3e6fb8a3a8584bd18458bc87999036f2746df31a27278827cb23fae57
Date: Wed, 08 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736315153
