Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C3E18B1A
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717119863; cv=none; b=XjUDdTzXyFoWeClPv3mr9mGbjdb9itQ3fSrap72kTqDXXVdXOqC+Py8pIn78mWTSohx/k8VlC2raMq/uRRQiDY9t5ylXu1PqineJ0Bna+X9PEQS4KwxCNIe1yHdZgVEQqgBshfpXUzoj4c1U4xUZfvA4b7QkjoDk3AlegaLm+ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717119863; c=relaxed/simple;
	bh=AX2LheaQJWswXWHpvZAot5xOI94QLS/SH9yzLcak7Eg=;
	h=To:Subject:From:Message-Id:Date; b=d+eOnJ6CuLg5auAlz8WeVXKOlL2uJFW61CYUgS38lNOxDHxMKJB2i/dVeshOtoirW6+ClAOkLhfWNgv7sJdAI1+uHx+rT+et3M/D833o/L0ZHYUg/heglzfNBw3kDP42GYhea+pB9PqvIkodevtf4mzr8b3WeMs08ID8CzwgBFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffuhERRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffuhERRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD951C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717119862;
	bh=AX2LheaQJWswXWHpvZAot5xOI94QLS/SH9yzLcak7Eg=;
	h=To:Subject:From:Date:From;
	b=ffuhERRxkBCnCtyjL9cHHiCcaDM7eutBQr7ncqhjESE0cD3eNpLw6X3oFP5wczuE9
	 QzcXCR6xfqbrubHalPlLby7bHjAMKOY/KARnEanZYoI8rxV1f80eIbU6Tq93SIoGbq
	 A4sM/z1onzEsJarsxMVntq5DDw0VE+jiU+4mql9ZZ2ZPutVcJEu8/SYqtdGa5Xcemn
	 3I5JuHLBWj9a3KBYWP2hEMHKHrA6wXCfngA3AM1mVtKA+H1w9kQM/pbRN8jl8wE7VD
	 f9EfVcw16G0ZD8Smy3X5PMiElM2NqUy7FpzDwwyNgbY2DqBsLh00tgK0Ug1YLsun5G
	 JaoHlYtJZqSMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA49CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711986281.4910.12627698877339843483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733fd2f31392c01b020bbc9bab32c158bdf50e3874e8cb104686c1e1a521904e
Date: Fri, 31 May 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717119862
