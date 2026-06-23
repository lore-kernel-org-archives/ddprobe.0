Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4053539A07B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782246394; cv=none; b=e4IBxEb7A5OLXnK+IGEKo17OjaRI6ak+16ZZGnBEbG+QGHRmVZfP2XaSz6/Y3wgT//zxWP6UGSj7hx3vpaJVFXk7N3ZN0kY5kR5zYMWUOs0AvV5Ry64umwhxDpjTxo8Q+DwsTyZPvfsXux7NHrJEYXZ8Czbhk8B53VtB9frzkS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782246394; c=relaxed/simple;
	bh=HCx7utsLlpB4byUSTIe7Lrr22u0JPV/HuAMz87DIp7k=;
	h=To:Subject:From:Message-Id:Date; b=FDj1NWBEc6uZVhpjcmzpMjDhqdihR8b6rNeGx6/Y9FVh+Jvjdh+LncjUpfD6mLb1G71kG90A+/luxQVUcXHp3cSkbap1oCKV12vvQPeLYComnm3b63C9ZPKIAC8f+h+0TYXB4+3tE4b3DjVa6EO3npPPmrgtK43sk3aDt3jUKww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTc+Z+mY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTc+Z+mY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FBAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782246393;
	bh=HCx7utsLlpB4byUSTIe7Lrr22u0JPV/HuAMz87DIp7k=;
	h=To:Subject:From:Date:From;
	b=cTc+Z+mYTHWqezo9ljkaXDQszU5eoFV5B4rDpHGf0ZueKbZiYEiwO52vN7HjtJvqt
	 Rd7hPygKBnOPmcNV2z4IXekpgIBrWIXjf7Ezu2Nkd3PNJQNiozXUs+5VLNME0dmC8+
	 1vpMLST+Nor5CLPKRPcvAKx0UORcTSdUkUdhVAAt1pRHHXf3KEPxxJtODBzblDWQmz
	 oYzJPtuqBhkgOHmC/fCPAjv9nbJDhTOZ/YxBq4BQI01zHo7QCGp4po91312zZX/IRF
	 q9BkmWXCw+CgJTXapRMRCStLd1ps5zLgsIJFl5n3ekaXzS+PnY7v56H5GROsIjkc6b
	 ICGHo0q2SAkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6857CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224639373.28159.11740394936134210509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1616d3b9391b88da09c0a9c6d522732eebec772bd7641d19bfff31b889be3f0d
Date: Tue, 23 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782246393
