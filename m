Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438191DC98C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745088594; cv=none; b=UdbssPO9VWo5baM14di0HQjlcrKdovno6IDoQF0z+pHAIOBhZ/v+tr/aPrjatOqgv0RcwmNbPSGx3Dk9gPkKtg0F6tfvrqY54Md6QmMNGkthUych2Rwv6YOlMndtJirrNX7btB81AbUjGbFjesL+fNnUXFzL2yyc2jy5v+G7WPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745088594; c=relaxed/simple;
	bh=QTRtkmlGHQO90grmZquvXxB6LEJHOqyhJmIQXw+3zHc=;
	h=To:Subject:From:Message-Id:Date; b=VuasD0/EvfVjjVveoLU3FRn6tJk8sjjMvCUUwkqKruj21AOCmAcGmhCANLGm2KU68Do5470si2FKemWrhjm0BBydmz09+zdyE1/I/5joE/HWxuAqIMI+P1N9aaYhtpQaD0MVUU8GCWJbGx1CbzEiZ1IOen3oH8uS8yJtqMcgY2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psSVqStD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psSVqStD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745088593;
	bh=QTRtkmlGHQO90grmZquvXxB6LEJHOqyhJmIQXw+3zHc=;
	h=To:Subject:From:Date:From;
	b=psSVqStD51MFUpKOufSllf2L+2Nw5+pWmPAiW59zc0oqKApp3pksqR2gFmdjkbEO5
	 7HB3/MbcniFuE1op2Iis7c6N5MoixAD7GiLMahOqyt7iI4gc91r7qvfAr6qzH9RqOF
	 jvoVKt/5zz2vzTU3Fh8WuDuFUO5QM950lDyf3vFE8fJdSsjnCcSYEbw5dlzOtfdMI3
	 gjlDf+P6DZHZt8JbTeo6HxRkeWyuGawZxjTR287bg37gO5rIuDWCKRMhEj4YQYl5pe
	 9v0STrSv8Lxn9OKNkSvE6EjObTVULWzy8tI/ieXUC10tI3J6YS+gfJ/8Pz36vhYO6h
	 eL7Vi8nS4Dv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91613C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508859358.26245.14331766723759749142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d719b0157c52d0a895656a412ca9c7a7e5eef002849234fa987525bebed6cb17
Date: Sat, 19 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745088593
