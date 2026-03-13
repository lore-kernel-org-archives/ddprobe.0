Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067FD1A681F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773369894; cv=none; b=SOZFpEjjAUgDkD2noexsr+t+uar+UzWYXnNd70zKe1oAGgvxmQs3YY7nTQeS8+Ej2kIPByjDetECGycK3/wwHS6rasokOI16Ulc4sI5cRSS8PvKarRAx9NVPRBxl6iZSnKAEEhLbXRLwCBxdrYSQUq/GJMSC6pqSngslQ9S739U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773369894; c=relaxed/simple;
	bh=Zme1sc2/GVcjc4Q77tM8d/vzqIdCri5dTeL6K0KWU/8=;
	h=To:Subject:From:Message-Id:Date; b=kDRjFZWkXvx4vOxodFAM1zsfxEpeiLejrrgdoU5wqShL3z5q7jtuYqggG9Uikpdv/Q+Nmgwbp3Qrgn26VLfoQ4GHTYG42HSQfaLUfYLTngdGxpEaJCdBZ9cWO/OMUGhBeo0vRGTAsBb8RfwJYszUZQFgBO8G/Lc9wSmhSn7yfWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdu8jySp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdu8jySp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E05DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773369893;
	bh=Zme1sc2/GVcjc4Q77tM8d/vzqIdCri5dTeL6K0KWU/8=;
	h=To:Subject:From:Date:From;
	b=fdu8jySpPxGKnHlDgu+TsbIWuB2Or+qj1k7ncQekz4u8sszTv5pOsirDgfpgqUlZs
	 qcR/O7SIbVM6dfZ7EQNM/84EumUYC08KY3IvW3PCyQrl83/RYsDcLHMarEHktawwhw
	 kcd5lymrTsJ+nWRHawXFvw018Tm+BB0YkYR3qwPhsa/seN4u4gehTzuVbG+GPWpU44
	 kRHuH4NaokmkcI/RNrP3ZKUMtY5jghfEfck9Y1vypQma3U1dtwDUcg25jqpu1OeP7J
	 xCp7nyPd54bBD0nKrqcEHeJC0FhPFolzRz0pQvg9j0uOadief5udPI+O1FDVjs88rL
	 J40B4KVJp+91w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F602106FD66
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336989357.10590.13525277098025221287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8357f1f6b45aac9d0adbbb9e33eef594ddb3974f61c586250a5d0bcfd2183f
Date: Fri, 13 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773369893
