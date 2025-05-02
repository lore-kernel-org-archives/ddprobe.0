Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1838F91
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746161394; cv=none; b=UGBdEEEVCv6ui6nUdX+mbBbKK6w6jos5wCtGJm4SZLbOHyJX5Go76wOnTabg+A10C9lGL5tTBzP1SnG3F6YqqxPZFDQHoqOiAGVWeVKenqn9wrJ7eCE6GJuIlLbp0bH/vAkoFxWtSqYPZjZO7qHFKPu3NkWxbspVvJUaMUe7zqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746161394; c=relaxed/simple;
	bh=25aRpc6S67EoeYDBzVST33u7ETjKUiB2hZW5dpF3pd4=;
	h=To:Subject:From:Message-Id:Date; b=jwzqdbSkhECvAZz/jSCgbkrs7I70K4JBAhs1YCj+rWgfeN2bGJCUWEmn3hweCbxBBQhYKUznzYkIjdX9rbk7uxIeNlUHJTj0jMqadw6ReIwnLbfHX2hhlq7P8oaCEw6ORhBy92EQSboQ+PFLTKrvzi4PRGc+V5B0rmjQwjiD6gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSdbvcGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSdbvcGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746161393;
	bh=25aRpc6S67EoeYDBzVST33u7ETjKUiB2hZW5dpF3pd4=;
	h=To:Subject:From:Date:From;
	b=BSdbvcGkAIoh7JzC1dAEeqmTRxDJwQSeIlhsBFZlnvgPYBF2+SbpW6hRrTPyTxuY1
	 99n5agMyj2wchcYdPk+gkaKtqvk2h+tVTKU6avoolGnzhl6HdswCs1S9TjntO1WsNe
	 nHNC3887Faf5IxHEISYxJz+m92YOLd/FHsDGshRhXL02NiRoIv4b2GnvPKoWO+bMO0
	 laTaCyp+0Vew2zqKlsPh2b80RHneZYmsbxIdROnCdtZSrxNABMJ0UkvS+Cn+jEfH1r
	 SZnTtvkAiKfa88ri015Usu7mCgFyzroeH19gEY7PtkpiPli6SClla4QQjXLPWiWVU4
	 NbPLUnhYwncnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0CC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616139357.7310.9361500442233184406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ad9e1989d1bce3a47b10b61dc9f01a41ca91f0838fb201d6bd8cf476dfdab1
Date: Fri, 02 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746161393
