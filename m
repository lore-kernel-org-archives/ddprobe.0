Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6875D4FC8C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792080634; cv=none; b=cLKue6+EpSGOr7XwrqYkwD6SYVN0uYKPZYIAGJCz3cllTO17L5jqJkQ11TDlp8o2FnEsIBEL6ciH9fwqFd0jluac7CRW2/xDUpFzlbvuoA43aW1kWRTHXyJ5Xo0bZf9M2KAMwOJlRQhR3ZlqH2fOctOHpwHWd5k77dWkMB/lv1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792080634; c=relaxed/simple;
	bh=oRDCfpAI+qkXiWCvWVIsqBWaXxlKwziAr5ORVRlXMa8=;
	h=To:Subject:From:Message-Id:Date; b=VYCA+9TB1WyteF1XbY/Yy0sloVY7T9ncvzV1BcSviUrX4hFqSuZq6tgKtqcBZA/JuKsRfHVc3zWUUXdSxPre/zwv2kHz2tKajpdeaymBKO9ikcRDgEtLebACim/rUMfhmw9KByxSxBq1KAQ6B7ERvd0U47DAOHG5qKSEk1f31/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo14K3Eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo14K3Eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25BCC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792080633;
	bh=oRDCfpAI+qkXiWCvWVIsqBWaXxlKwziAr5ORVRlXMa8=;
	h=To:Subject:From:Date:From;
	b=bo14K3EqhMykxsJD6LzAGXnUjP3694VNaho2mt/YTs76FyYHm/vx2+luMLBCtb+UF
	 U1Jmm4duV7ZROLymbKj8rNH9tDQ9wVRZrv6Xw4d+YrApc42eqWckkINX/xax8u2IC/
	 WfTEZmSvnrp9QXxaPxjHyWNOBEVNmrXsGQI1ZY3vqPSoQa5BCPThU+KWBoWM7yHrwX
	 wu4Mr5sywryEOc0k1EMAfn/X/HGxJy9xmbqQgyc6uVL2oujSnJVk8LJnujQaCXToC/
	 AAYPXNw/QOUiT+2ODsCffnZuCDEBKdQHgYYzxuttGg6zR3zKrG6b5nZqo2cQLKWj2m
	 ng8QMItahDFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1081CC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208063371.7851.7435399286516720132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af99c5386e926772b521730ef9040d59568358582fd8c6970d3d05805eebb450
Date: Thu, 15 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792080633
