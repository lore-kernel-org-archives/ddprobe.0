Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0866417555
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776008854; cv=none; b=SQ72sehGWba711dxXnADAZYQXirE1LOWHTtbE2IcJ64M2cQorcOm/8ET8+ZZsRDiNX1l7BfZwYAotsxTrkpxsZaAqhQpvvf1U1qfkcEThwXgiYW+p0nms4Dvy/T1zmL9Mbpeu5NMM6t3eKfGVBhEsanqv6vsxyF3+OmQTR0oSec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776008854; c=relaxed/simple;
	bh=9Z1Xmgf//yO4TtdcTLJub+sD0FAmTPdyMUn3xclPEB0=;
	h=To:Subject:From:Message-Id:Date; b=liaaMjnZ9EuOT2lHK5Ct8AvFcY2+GzqYoF33J1oua+bneIjHNaMrQe/JP5Kc7ScZLbxitLE+JC9FTx8rHGiLNXk4bYb0UA3Yk4273Fm5F9ebEN+agosVFnUYqKxtbu+9TSpCCPfyK7iYCW8mXzpETEVsqTcCL7ywhP32RTUIFhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpkSLWNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpkSLWNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D66C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776008853;
	bh=9Z1Xmgf//yO4TtdcTLJub+sD0FAmTPdyMUn3xclPEB0=;
	h=To:Subject:From:Date:From;
	b=MpkSLWNmS4BfseR2vFRe7wuKdP6huyZEe47f+npEpCky9Er9j4F/FSlcYL0eNlUaB
	 8Pom3H0Wt37o88pn3jJ8u1EiRQKrVR8HA2hLflzRzPeH9paTpRGJGPV+U8UvAdMM98
	 /jgmKxDSlC2rAcuyajP0ieU68Js5IycusM+omzEVjYtWO8wQv1zNeHQqJzBMQhEk22
	 zgE8BqsxOiNScaJ1ZAk1duEZ+Kw++2utH1QskAciutiv00SXjAHNESR+TYxmu6weUo
	 jcIBHPjCA9KnZbMumxbrhTkaao45xrn5SaQZiV7R7tjyiIzqONlTdE85P6GXUVlqBr
	 H8zfpVbdp/NBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FEE937EA
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600885368.20917.7221865005379286116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482e4860c02269a445ad83ecf57b7566d1a697bd85c05fc27b19c6bfe342a304
Date: Sun, 12 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776008853
