Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9A71DDC11
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752170394; cv=none; b=pzzeTIv/5/K0WTb1h3do/zdBlcTcMCBS5YpxT6H7F6BidEcUhrlQE0IXqZ3X8639tsSPZEdcWmRIe15hSj9bbKcbARbin1h01l/denzIXlTlJpa/zC+1DlVDQVssmt8PPnmYAF2mnqBhCJ8ItSJR/uLvvzE5z96aaoMCbLBD+10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752170394; c=relaxed/simple;
	bh=++4AVh2ZSn6GC4aW3co8IyFFmD3xO8j2o1pJ3ycE0SM=;
	h=To:Subject:From:Message-Id:Date; b=Z4+KtJlESHH+P/sNLvuCHRIKFs6fhTv5vdFYDWYg0O3kVd2S5sbMgUVl/uIoVPLV+Xl07PDnp2pPVPu+Py8vVa+4Phkd2Op49Qau42PI1PB2MEbhgV3SubVvkE3pltqjU+fttWVbMIuGLj220brRiGyJ3VGtJJP+ITNtaJH9F9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0r/pqMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0r/pqMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4FDC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752170393;
	bh=++4AVh2ZSn6GC4aW3co8IyFFmD3xO8j2o1pJ3ycE0SM=;
	h=To:Subject:From:Date:From;
	b=B0r/pqMONTutjhCakzaAMfrCirsSe1N4I1efKGjysb0xRZ0tKHzDQs7T+hdvBquhA
	 IZUGOYQPTmhCCuswgCS73ro6Dsw3xAQ8tYpmi5+AKN+iwSfhDvRGScpjzbsCn1yvi3
	 +Iekis2dk78b+mEKBTSpcnABMjsqRaBH1IszHMIIEBhxUI9I4Y6XN/FNmDpP+qC2xh
	 wv4wUwAIiXJpyC1ZqYBvet5rwfHK1kCvk3no8p4Gh8wc+zjIKmlmSaUC/pwcieGRQn
	 MtQh4FPjkiwrDQAuN4DZrI+TFgcyJORMO7H/AsxbLdQJlkVmuqRVEmDuLvpkWBv5vG
	 isFEu6HjD7VkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F390C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217039357.3349.15042220713966362928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1623cfd482be9c87d1626a30d9f6e9fad3ccf3ae4d64750e69d161f4e059a5ad
Date: Thu, 10 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752170393
