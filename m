Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7511519884C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732789554; cv=none; b=uNoNz7WhR+r8YWRkgdSBVeEXX2fFZv9Fc3vCG9cl6nKRF7l0kx5MqG1k5M7Si61/BAY1Hz7hTlzy2st51y5UxOGuYSElJzr+fDJLEhUlLqMcgFZOEg+kO4LeJclMav+RdXdSESNKIs3Lf7f/e9Kzpw+XPLSbZmZ4DJNGyoJJqKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732789554; c=relaxed/simple;
	bh=8ku4Ofb2h4Ft4jb+5MsmVnwxrgUg8zU1CE3Drxb5BnI=;
	h=To:Subject:From:Message-Id:Date; b=eWmKdH2cuPi6RrwV/8aPbZ10wS/2BsiQcfyTaGH3CEG9LChWqYbqzm7ZAlyowsJ8VfdXUkF+t8ubR1CZtsx3C17Q1kjLsCkulEN3WbY9VQfERBIB2F+l8oqOxjixdS4QRer+fqnlwCon3LmjVzxF67PKD7k+pw9vKWfhSch76gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGa+lmUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGa+lmUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D43C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732789553;
	bh=8ku4Ofb2h4Ft4jb+5MsmVnwxrgUg8zU1CE3Drxb5BnI=;
	h=To:Subject:From:Date:From;
	b=cGa+lmUd3Il7BMcIE1GmXME36FqrKMcyx/TVB8/PWVsyYvUpTM3S61R3Zg2CTbFyI
	 XKvRHZk9jsnXu+cMCtieiXHMJWgedE131j5370g8v8+81hyzyyGut3AxxeYN+UVYyh
	 91v20wUxceeaFNWSH+5QR4o/ZN4gcTiDa3F0fYLCggpl11wIJdKyPf3EP6MN3RiGv8
	 HYcLv5bZNPnaleF//SYUTfLpTG8qERNqJYc0QrsvOMXIRVxhMvZFKpnHSUX5cjCxSg
	 aoKWW9a7KOPmKuM5LjTC3wmPTAS+DEtpVN3J8KYHkxFl5Ujh6utmhUBtWAjrAXsSZt
	 VCnSCt2tNziAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DC2D690F2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278955366.6842.5520175961518789994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae05b7d0d81c16871fd0dc04ac55ead47775857616eedb470aa2e799ccae75a
Date: Thu, 28 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732789553
