Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE6E2E8E16
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802394; cv=none; b=nUayzDfD13QlWi8GStjOwGDPeBJgHfhlihA8n4+wK0IEiykXDTeQAgVjiB++WIeHTMErnzYYkO39IuEdMkTHPIyXlKOif6bVwhgMW0smrTqqtByhLusv7a1B5L7OO2DpFlqexan4unlDyB3j6kvDYJzVaEwFLtzXAceGBuNCt48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802394; c=relaxed/simple;
	bh=d36m3mmzCdbxZCnjWeEbXef33txVCQNMGuYztCPcLWk=;
	h=To:Subject:From:Message-Id:Date; b=hQROeYqO+ehQ9kIHYiS39jD68qI4EQcI3vbsP6KVAseEnOA7IfFecQ/NBbAv68u4vlnSlxeKIzstkgB8OMb7hF1Pf7hZJkHM8Qci0XAtdlbEsvnS5kWR1hc0VkSJjNf9Vh0Myj2jEJ/132EZEvT6RGyH5Xcio3aczEwk57AvdEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUd/gIxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUd/gIxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB8C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762802393;
	bh=d36m3mmzCdbxZCnjWeEbXef33txVCQNMGuYztCPcLWk=;
	h=To:Subject:From:Date:From;
	b=KUd/gIxMfvkb5t0r6zn+62Cjr2FUp72foIjpe43nd9Bs8NRSxSV6FJphEljWUfynG
	 0YKgUe1SecOo8iLIKdEP+P+YSzYiqOMkjCuA+V0hb1KMu27qGz5nz9J5su4KHSpJ2m
	 iNRAIxg1w+2VxFfIisP44LXzZiufTmeAecvrysW3Dgx0M1rUWURxF/xe2Uh4CPHC8K
	 v9GfyFkZWGSlvv2HHSjcoxw9cJmN6TrpxicxuyrKgmPjeQKvwG09v/8BEuvMRShyDd
	 ppsrHjVV+nzPX93OFdgH4CJcNfGUXWg4taTIB+vJW76MuKPihY2igh1y9GBqs0cEPe
	 QklLVXDladd4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DFACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280239358.10090.16948429228904235410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbaf51ad2f02cf4ada67b211e85ad8b4641e9c1cc6da07d4a932a16a7ae33c0
Date: Mon, 10 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762802393
