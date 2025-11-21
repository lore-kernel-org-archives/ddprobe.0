Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4337A21B192
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763736114; cv=none; b=XLXEatfKeWNSmd1sO2h5RD/KbOaNzhvo8CMOQdMrcr8PJYl8BGYXDiJ9K+m/Z/K3B0XLHTc3Gvbz/EB96vWsQvg5KOMPCRsVwMvX/8Orvafq4dtnCz3bC/Lm+QO+NlvQHxRisad2XewlUG9fqB2QXOeqEkIOcXb99eIo02G1xVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763736114; c=relaxed/simple;
	bh=4cKJlBZEmpCaLmaOGGleW48kLlKS9j11YfoanEaJEYY=;
	h=To:Subject:From:Message-Id:Date; b=u+6AHaRZ4Gw+i6mlzmZc2Ns5nsgqAMcugeRmTH17FMWsWwVKYbFRcF0WQ420MUiqPA1StGbw1ujnG9YYlzCUIfwPas40F2BMiBpiwyuZ12DR6vwHLkccvHuRVNcO79lfb7L/4TfujKx4SnrzyA3G8r7/j/wPfRSGqPaikvxq+tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVeU4rDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVeU4rDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4190C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763736113;
	bh=4cKJlBZEmpCaLmaOGGleW48kLlKS9j11YfoanEaJEYY=;
	h=To:Subject:From:Date:From;
	b=ZVeU4rDSGy4DMm1MRxV3HHcItr/guRrl0Kzg6UEEpK16x6cY93RFFtj+eMjw7nq4h
	 rCxyPjbDcDdTOjpICEj68xvoTktEPHBxplkvjG5E6t0/c0oTfJL4Tu2f+VFJ8Sb2qq
	 Hnkmni+zER9AyWbSsT6vZeBF9Quev++KFKlR6lXivKrvzwxPatT7LIZdlKcDIC63dj
	 QNonGngGcv/8h4Xb968aozxsAYZJh/N2wI5FPOWc1RZxvCKIWHbhqMRkPJmEf+MymG
	 COUrJGOYra5ave5qj9S7dj/fiijKdcL+OzdsMr3/ayd+Kpqv02KLU5HDSGzoWMKqVT
	 UCI9YMzYrF2zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA3CFC279
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373611358.31420.7115927794084760380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8589fe058d3b4feae56af58616cecddd88692406526cf3bd77796349be9dfc8c
Date: Fri, 21 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763736113
