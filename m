Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3012235BDAA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781857594; cv=none; b=TqAxq4usk1Y7wjcYtFrWMvK6k/ii9qhu+uLVtpYYpxaNHn7ljt4nqlVUW2645+jAZ6JEO8F0ntWoP8yOj026BbaIk9jSlGJCap6btlmBBtx0a9trK8XU1zyDxSX/wcML40Z7J+7ixrKmHksidum4qRhLFPwWvSterVlqkac1Bw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781857594; c=relaxed/simple;
	bh=BL+I20WmQptNNDJf9HGIdxfWUiJ/C7WQy6E4g9JMlOU=;
	h=To:Subject:From:Message-Id:Date; b=W11BsWJKzk+FtRMzAERMereRRWOWWRTdRDwpTubUUNWXcgBcMbirZg+RMIQeSfWtBzjXK1AuCXTslpf1IXNajLCdGeLYF3gTTMCS6JMWLZzEITu3MiMQ3tGauTsgV2m6x0e6VqZnLdN99dQZW9oNv1VHv6+wtwfPwAS+r37H3M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaITanUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaITanUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D283FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781857593;
	bh=BL+I20WmQptNNDJf9HGIdxfWUiJ/C7WQy6E4g9JMlOU=;
	h=To:Subject:From:Date:From;
	b=GaITanUXDe1S/6KiadYGLS7CaEX7dJo094Z8u5d57tcE5LherK+Snf2kqLscVIey5
	 bq1TY4Gdw8TRo+8A2prglpMDCgLThsEvcBfcuwB6WTPsYzUCTZrcyM4J3XaWaHu8g1
	 8eixWA9Vu88g/bBjuYliaggYNc471MKMNBe4pSkOvztPbO+RaUkHA4yE4n0Hd7NN6T
	 LtEvUxLj4qu/4f7oRaf3+tyurALqVjZHbtFpIPvCc5OGNRaVJj3ickmrCkh8IebGRn
	 IXrQvdDSDN1Moe7BH+/etxJyDhLoXpO27qopb9pTELmRZBEyfCDUII8+rGNlUl/WdM
	 QVD/HuhFDnr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB2CD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185759370.24749.18377234078980345217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa91e3439252080ab90478382e5526280b6744e6b2742b7d5e18fde659a9e4d
Date: Fri, 19 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781857593
