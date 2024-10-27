Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C25328382
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730018754; cv=none; b=XF7z41Mj8or7cp8KVH0440IYwzDwQEL8RlKUZP5Zf6Rpv8NK5rZIhde/CsOfv3MckyR4lULtcVwUEp6MChLVMsKtE/J31pEjt2UW5TgVC9YYLyBb1tjLrT2kthzE3iIYKvF/3nWZK3tV438loJ1+bkilRhmL0gyGgsE9QhzIRiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730018754; c=relaxed/simple;
	bh=bDbMqcltvrNof1oFaa/qZBh8ibRwpRRODql7y467au8=;
	h=To:Subject:From:Message-Id:Date; b=iPJWvCLYgc5nbwz6XuJrxWy8SwX5rlsS0AebfeYWPSP6GXC1nEoG/OVIrrXfEOdRgs3/uRKi0hbsNP20Pvg5LUlo9/2BkFfUpo5T4Tn+vQ/Z0VVwI6BNd6VNgejRrYsmxTT06tS8WgoaKB4uqMDA1DLPQwe+jZ/f8uMZkuciTlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc0dxjLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qc0dxjLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA16CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730018753;
	bh=bDbMqcltvrNof1oFaa/qZBh8ibRwpRRODql7y467au8=;
	h=To:Subject:From:Date:From;
	b=Qc0dxjLq7yBIAFs+NTi11jsa2yZ4lC5hT208jZyr/p0AMwFwudZxwT2KwuHQwIk5F
	 gvJG4p/atZgDEavfJU89CQC6atf64tbLKRSl3uAI5/i1vCD7Ah1ZAEQ9n0nX2pIwoB
	 CU/traXnEomgb5zwa4gaGq1ReKTlPdkfuB3IPGb9R08OdvBptvlKS5rGtiAIHQmLSI
	 yN3GknAtd4X56LoiTqEUxBVzi/znLdZsMpSsxuk7dC8py+KJuELu9d6oT7HC3ptA9r
	 aqj3X1tkwppB/UdmcfF4pwLgn17iU5gsrd1BTclurC6VIYpq/NLzWLhJ68h7WYvfnp
	 Ia3Fw6n0JyIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF45D10BFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001875361.16078.5234743793384142616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb40605e1be11d2ff69aad88be50150d4b5badf8782a2cc02bbc4f3813ac982
Date: Sun, 27 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730018753
