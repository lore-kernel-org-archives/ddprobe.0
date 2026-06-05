Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6D2472B6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780658674; cv=none; b=QxsSFfqK+9n7cUewijEvJLdeAQDRhTbsqpFMX0czQRju3CEsco4SyX5d+MZFKTaFOL83j1vHUJl3xdVbg44xnhdsK67qsOgl/WKuNtWjOkxv8dkqLmbeVbP7yNj82Tht1BbsYkHb2hlEgZfkAWeCMys8AUX555GgNi2U8jwxRHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780658674; c=relaxed/simple;
	bh=bNeijaKS3SF103yrr9ehh99Z7+ilGPw2m7p9/nkiElk=;
	h=To:Subject:From:Message-Id:Date; b=OSfvNT68uU5lhRIU6pCAPYMVR6uaZ6aTkZp2GFJo0tV+SV80dRKetyR8mKVkFeQBM+KadUZNXFwAhaBmGgF11ru23zPaE1tTXi0STUna4ivQYi0CsQtGjZPmFhQF/gZniIuJiwP/ATgYBfBKg3So53rBqqK1ChSwFIP0pM3ILfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSg84fy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSg84fy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3B6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780658673;
	bh=bNeijaKS3SF103yrr9ehh99Z7+ilGPw2m7p9/nkiElk=;
	h=To:Subject:From:Date:From;
	b=pSg84fy18XE7Oj9LP+WOyf5QzIzPOSNVl3mybkfKwcWzlWEyvVQyxB65MOGSiRfGy
	 7I3KoAdLVVi/5U6sNx+iv3K/XxNj/fNvaUKY9mo3Js+bhux5ZRgWjeENHSxzN8bLCC
	 gLd1TAC29k25VzsCZL1R8fwAr10wGW7ioVnrQP8Itp2T1HBgBvJOkcO9UDT8a4S2zp
	 ihv7JDeqgua307zM9Hu/QDzEDthx11rYSdZSkrcSucj+EVRdF3DV9PnFrC09uQBDw7
	 qfmOkBANNygTxEDWNRxD8xGgrBPT8PKvjg3Z52vkLh4cpggDE8NCKafEZNkNpN9s8/
	 Va2RtDdHmza2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5FCCD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065867369.3326.17164561782652343869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6fb4391e8d23fbd58cac0d75946d90a775ea14ff7c116d8e9fec56b5b8dbb1
Date: Fri, 05 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780658673
