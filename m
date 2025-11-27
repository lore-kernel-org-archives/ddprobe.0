Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110AD27B34E
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764284574; cv=none; b=onrMo6eXMKMdWj+QlL78SyhsT0lV4MbtGa4NzorrOEH9vuOD/fkOYNgPMf23cf8o3/LEdZrFh7VPuDLKgKMkfEMOlEOUTMTGvcOxbP86kt3uv89sUNjkcG76DopEfmFgxsLkQ5jNaTy1jQoY1Zl8V+KoZFuFCITvCJe6zsyz49k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764284574; c=relaxed/simple;
	bh=kRSoztjiLo7EBmlNQzrtimAM5RGEdEErapkmVM9ReOQ=;
	h=To:Subject:From:Message-Id:Date; b=cqUMK5BsU5maGJkaEwRvaHMjlxTVemLADPat9OkrTvHvnMrcN/g0znI4JbzJC5GCdgBeE5B+b7EuieE/AHW0fIYZ3KAquYd2ARwr9U7I1FJ56gE4f6E963kQpBROLU5eM0w5bRiy36hhISE6D0qIiksHELly1C+DgM3DX8xUdWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7flP05t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7flP05t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A923CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764284573;
	bh=kRSoztjiLo7EBmlNQzrtimAM5RGEdEErapkmVM9ReOQ=;
	h=To:Subject:From:Date:From;
	b=b7flP05tjel9Yrso079Q1zg4PJW7qyY11jjb5NqZYisWLIiQTOmYBEY0TcNYcah41
	 EIjOxKQ2h8wgM/8kdbFL6PXTkN42JByPqDkTFxSonUfUt9UDCxBlqBo0+U1oWftH1o
	 dOWSC6akOhFVS4GEYinamKYEHdhb7iH7BKqyNtTwP9CHWolCh4QaVZ2VfXM9Z4DqB4
	 sLWe0LDyte9ok76IpVUkHBGL42SqchmSh6amMr4axg1s2YoGgYSpwnGZu9CZYkix/B
	 I9sg/Upae+N3z+K169rQvPpTpVCDfCOrZT29Qtd0v7T+58BsmCnAMOPJqee6EnqVNP
	 qU2peqVMA2sSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97538CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428457358.30486.3659917376502943462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf746f03522444267ea15d47d11ddcd5e7f6843682304e3f1a62e564da6823b
Date: Thu, 27 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764284573
