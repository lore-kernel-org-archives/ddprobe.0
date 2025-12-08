Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21647234964
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765200774; cv=none; b=FJm1FtuJkDECBplicWb+uTAYwcMfsVtNw5MQgq3OU0cyV51OfbJxmRykR+P4ivjSnHlg6c7/46sHnY1KfdjPCHw5H6anUXDOUJgRftfCnVcWQGJZXfiSxiqz6RGATNNL9aUHSJdQfmXnsKVN3hOuJlE2bRenxEvK3qEPW/4q+W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765200774; c=relaxed/simple;
	bh=YfSmJ5ZbDIPl0S0L6v4T8nqZyZXfoZA+YiVL8H3rFOA=;
	h=To:Subject:From:Message-Id:Date; b=Yl2eDFctuP2N9OIoOSvHXJP1h830B+7lsDKhAtjol2V2oyurlQ1/uVcI7HvvoZA5PlSXIrOa3fTzvI6tthjN7tn+GRoKcUcBDUpnwlZW8exuxLtwrV83Sg7SpJ0ogmCl70kyoXijAsLoYOFYt+qM+j/4ISfuxRPUZ3iV0ujj9j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utN12XDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utN12XDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F84C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765200773;
	bh=YfSmJ5ZbDIPl0S0L6v4T8nqZyZXfoZA+YiVL8H3rFOA=;
	h=To:Subject:From:Date:From;
	b=utN12XDDG1rwU3NhhTWfeHmfmbduThsX4AqY6Qzp7Ig9Jh1E41tLcau0+RsgkHOWE
	 cTqOHPv0GN0daEtCDw7Cgzm4ebErmYULT512EnPDQM6DTDqfs6SwpEzfsqa4pPLvns
	 XWEVMGqtWLWGfDH1UCL9LTHeTOvIkVbPFIBypV2crlprYh3cHIi2NqNVHIqLt1uYo1
	 xbaY/PVi9SkBGk6A4gp/Kd7ZCnTktJ4AtEjFwvd/tA5SXltglsOMQ9qiW2hfneEOdT
	 l4GIAHntSK5k+BJyFGMprFs6r5079sblz3pkUwTVgR6egRTbKECGfWDDJdPQjMNZlB
	 Mi19TrnNA2x9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B78D3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520077360.8029.2984052314586097087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0988a4c1af3bde94a99d25dcb530f5df903eb24ac877013738bbf95960b9d6f3
Date: Mon, 08 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765200773
