Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002A538BF8E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774523694; cv=none; b=gf2symwjg2Z5/iZVBkN+nMNHPGVLMM9OOeIhtO2jdyLcV8AA4AwBexgOfJ5YNAirA3k86Qvu8XSpzXpwhjPHUqyP9xcvYjC0Q2hWs2Bwh+0Ch0firTqqguWXk346UFHLKQVO9+9NMrvQsa5A7YZtD/3LkxH6PJVu8fd3bSRhrpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774523694; c=relaxed/simple;
	bh=8VS6R/fZMcJttbmIBLqFSGSUX9H2x68mB9A+hlZIiZg=;
	h=To:Subject:From:Message-Id:Date; b=bAdtz0W2sBkU3WJAmzoPrhNUacK1CqoqUPXMDoU7SgN03ESJVwDz1zmnXBcNvy4gksa/w4hSkiiO/NayA/G4m3pQ2TFlaP/b5eHhkxG4vwfb2fW2icjMdbQWlGspArMG2r+IiH6z5c0jQb90+lR0EkVFiAQVGOz4VGZ0nSUKTv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy/+jqSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy/+jqSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E464C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774523693;
	bh=8VS6R/fZMcJttbmIBLqFSGSUX9H2x68mB9A+hlZIiZg=;
	h=To:Subject:From:Date:From;
	b=Dy/+jqSEhGj8HA5J8Gn60eH7DPmM6B5J9DutPi3Yy8PNrr1rFBW+EMTCh3bGwjVQ3
	 x5iBeXe+wambhgOjCjHrTFZRhPyXCOFLjuyjdi+7571XNP/IHoOjfn+ixBoVDpCCxC
	 MmDTywF0bfbkp7QTtR1i6LYpljzPtWpVa3W78MpgSO3LfbicnP4DnIRv8/YH1G3SzM
	 b2AFPYmasFe7GuA/BtwT8DbzcGJLqcjLYqtTRnMVKnOZCPJR6EBzxWYYOTxgcmVgw6
	 15HAlnMqhzFHOAv/kciQTtZCx++ArmnrPaEqxnDJo3QZf7z5LA6YrfdQ0qKpckEM/D
	 zNBMONbjEW8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026810A1E77
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452369358.13069.6432941912611551365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042ca714ce1f773ab85cc32f3acfcd899a1a392dde18f98387f0e986750e9048
Date: Thu, 26 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774523693
