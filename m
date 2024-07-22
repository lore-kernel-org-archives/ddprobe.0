Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CF0134B6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721663153; cv=none; b=KEe/HCqMs9JqKv7YGReOyE2qH3sh969pR6gN1I1KVmUiDzS22p0k5s4c2idgVTp6s3dmCP8jFjCNlTZdS0OAqb0nx7ktRbh5XR26hLjy4Co9btVip5ItmeKBh6N6rguDFBfne1FjgWyiUg6L4SScdoO1vfmZdcJ7H2mWokdnti8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721663153; c=relaxed/simple;
	bh=k0SYCKFyqS6wuYBstRwRzH1Ajr2hroCwakrXCusHRoU=;
	h=To:Subject:From:Message-Id:Date; b=raNWMianHtVo57P2YLsHiR4sE37mF7noNLWV0P8rNWKhhHla10rm90yokkdf80BQFAJphd52qWhyGffBaqaIA29fd1Bm/4fGmFdzZ9/h7b8Q8f+Oljao1VXp+fvCeU63tywEZFs0oPijkSKC7t04grlgD4zj3CxOsTn/qoEOmkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djeiR+fO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djeiR+fO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7CC4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721663153;
	bh=k0SYCKFyqS6wuYBstRwRzH1Ajr2hroCwakrXCusHRoU=;
	h=To:Subject:From:Date:From;
	b=djeiR+fOgdPcXrnMlMk/RSPo31vqsTnc29r7g9wC0tEm9cdy8IrEgfo+C/zRmjZQK
	 9xJiS5R+Q5ph/yAJ4h66DFORfL5ZtqDUIrXEfPIcCOzYhWAVlH8z3/8oLU1jeMdvKj
	 QuMZIU4P4PpBfjaYGIRmDajVYvlYaN1e+0byORnNbAQrf1THw1gPh9OBiAPePmgfJR
	 yG9XqUp4Mn0y3IQDznxOpRUgbd+03GCa6B7SVFFk3qWZayLYDq/7LkBeUCfhVbwsKC
	 ZwLgZgO+zbBJd62gCQs8UNqdVyU1TCnY1myh3yhlSqACEKm4vVjFk0wp5/ukZCY9dx
	 V/IKjn3SoGjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EBC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166315359.6247.8140110631936361455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206f1359a6eae155b92fb673fc2c6f6b03b489233bb90d28dc73c1c47bab877e
Date: Mon, 22 Jul 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721663153
