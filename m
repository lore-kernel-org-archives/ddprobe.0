Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264A2221D92
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734600354; cv=none; b=B8I3ACteIVhe92svEfcUMV8Nc0qb4mrxMtEhbwfmo1GLkF58CS1zNlDhld5DVkBH1avyD8F9gOFVnGXJ46RfBJDV2jCw1YaIFrst+lnYbrmkWiczdZybXKeE8stvyxYTbS44ZqEzNjhDuGL6t4MTVafQSWQ1zsM/BggSMdQyfaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734600354; c=relaxed/simple;
	bh=I2zOSloWBY3mCNkrYOS9wEQ5GRMb/blvwiV+2EV1cSA=;
	h=To:Subject:From:Message-Id:Date; b=qiXWpZ1CtOpmuxInGyE5LustFmGInTi/DyEKsoZUyTfCCk+1a0TDFSKR4ZWe5IM6hRro70IWJswMVNPpddJFFTCYf1aVFktSGk0ihOuyMcud8IL7Kv7K25Ipv4qtZciXhMCHnPux9Q8nMGzjVxsm9jYHP4/kb98eBhO2a4l7Rxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/Ht6T4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/Ht6T4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA83AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734600353;
	bh=I2zOSloWBY3mCNkrYOS9wEQ5GRMb/blvwiV+2EV1cSA=;
	h=To:Subject:From:Date:From;
	b=Q/Ht6T4zNVSqIqa4ioS5IvIAg3J/8Nce2+8R38JCMtMxMTXzGbRJsnzkmGI2v7wRU
	 0erRbkK/0El2RNzkiBp2ZwG7umOLvWbP+GknKI+OLxMyDGF/4xqUToN3P5zdL0nb9r
	 az+zpfUtCw1JPS5v3L6U9mjC25V+fXoGFdXfmMRij9+jFOv1V8DT/W+RLF8LCvyFkK
	 s7SAzkG0nlGe5VMiiKdNUCSwgpE3vSwu/wDDe/mOSn8pJInZu6YEP7elooH20N4hhf
	 UngXj1mEOS/Xx1wzF+7fUu79Bn/ZUgk4ciPgj1BThtxGbrWD3SwyfV/GH9dBWtL60W
	 FKZX/fMkwabag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A47CE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173460035362.3806.12715134133840290696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c5db9ae4bed3093c914eed48f3d81c738d07d8be4bb729922ab6f77f0ee2a9
Date: Thu, 19 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734600353
