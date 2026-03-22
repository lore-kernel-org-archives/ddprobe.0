Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1766879CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774221294; cv=none; b=C1tLK7LmMlCDE6e9e0wJNpxV2OMKRC/NRLUjhN+yb4HxxQbRmaUsmhqrE14lms17E3NROwbfUOspOkMo+UmyRAsUpSKXLu2exl0fRGVVTDzvUIVu1YeC2j+hEgt6ecZ+WhCBBPIzDc7B4yOzWzM7VMmFtYZraCu+3c/nq5chaPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774221294; c=relaxed/simple;
	bh=z0gUbcvGfdf+tTfDktp80Pm0KT0qvd08rayw5TwSe50=;
	h=To:Subject:From:Message-Id:Date; b=f3Q7WjM22Twg2sN+qstJoYAZA/PJa3R8XfYPIgdhbGeePiP4Uho1SFpvznBcu0li4Sn5GIG5vXVOCGz4H35nYkoQ92FH5u9jhro6tFxUQ/mV2BE1sdiuz9yNxnYBiqS3M/O9tzh7hqiWp825MvAsIh9G3dZzAQwIHM56HlxFl28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDFc+Pj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDFc+Pj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8668C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774221293;
	bh=z0gUbcvGfdf+tTfDktp80Pm0KT0qvd08rayw5TwSe50=;
	h=To:Subject:From:Date:From;
	b=UDFc+Pj0VFOEntXaXf7WyMnLADEgJS0+fcshBKpxStIaeRc9Af2TBDg1kQ1A0O3ML
	 JVXSKuXWab48ywqXjP3sYAtZmD9EM0J+nHGap3b16595AKs7QnTv6vAVIZs1jqjnU8
	 uDrnSkDdEBdKNdrp8YGr8CHzZiwHlN4PZyxG9MMjDBz8uu5T6MH/iA4SzA+aCdKFL0
	 0fBuIngQr4Ali0XJ2wT8jo2nJZIIaR1x986ntkgjpf3E3FyhQyHbU53ejnDfAfHzrg
	 SAWwXAoypqEvWBPAQrmZDU4MOMrwl53TasXAFwNJv4fj7uiaYEWtHiK1gEC0RWfj9O
	 WmS5UKRBr8Atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96562D58CB0
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422129358.22684.7928399377418082698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d80ea8e1d40a5494eb307ab319c43b110b8a5d5ea20e878f6ea50f560119ae
Date: Sun, 22 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774221293
