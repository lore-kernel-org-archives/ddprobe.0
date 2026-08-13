Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508AD37F314
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786621234; cv=none; b=inKaXkhTuA5j5abvXFgQ4bpDKbI1LnTKUGNOOJg4W6fG7OpoAi5kCWHgYloMxqoIs/Zf/USKfTrfBzRwRDBUHzyspW6KNFwXEtM9vlXlZXe1iD9KKLL11gHWRXgeNIFkoaTdeqP4C7O++sk+Xxrec1WqdbIbW+UVVP53koOkQ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786621234; c=relaxed/simple;
	bh=b/nHYscUbpRbWp2BWABZ5P6l7mj0CIyMJk67gd8XXrg=;
	h=To:Subject:From:Message-Id:Date; b=mhnhENpACjRWvALTd3k82pBIWq5Ln203DWfUBpMXucJRdiiNT8kG1E0XqomeDnesDnTkvcbSmgMco8BUVvdR2kNxbXEnNAUfWR7HhjgChjEDaLXhPlOB7pAC9syf+GhCk8v5tDa9eyfMWhELql81WLSbHipq72rjgTkqsQcPqiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sn3Bk5Pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sn3Bk5Pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB544C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786621233;
	bh=b/nHYscUbpRbWp2BWABZ5P6l7mj0CIyMJk67gd8XXrg=;
	h=To:Subject:From:Date:From;
	b=sn3Bk5PkifHKkkurEZjKB2N54oncMrOURYKPAEp6fzqeFJ0/oSL6Bcod5Y9g33ESi
	 XViytVZEsAA00zBvSBczwh0mRL1JV6YIKwYlq04uymSSVAGdauXlHkGbn/E2xnUclL
	 dpaSGQsvo5HJrtg6tBTgfjFnvqyONBVKquiDWzN2Jblv1q+B3qFea0jvx4IBuTSLQK
	 Vp2Fl7HfkhNBRPez57zXSRk9SMxhRQir2MzK7XZmoN3DMsW0HA2TR1w1EKfen3uxcQ
	 k/1xcY/X+VhuxXJYbj3MmOiVydCXgxbBVe4u6PZMI8fs1UXdCmFMsNQHS0bPezGp4U
	 yThvqRl15AUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8752C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662123368.18162.12384505147715757109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6988024e199e82a59303120078b442dadf9f46f5f20ec2e5dee6636d91b78e
Date: Thu, 13 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786621233
