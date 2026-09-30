Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7ED35CB91
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790738434; cv=none; b=ZHb/ak0Lc2BpI2UOneuBHGgwlmEXQXGb1a5J3EQ7iNXY9pkmM/CUh8jUTHBrrEG8jP+W94frOR/aKaDUHlmmnOR/pjgf9KkD8xsTrfOtysCTN9cpQj3dQWA0q4g++UgBLXtHMR4TOV4d6rN8a2N4hnwStSWNzwCdlETACq1ICHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790738434; c=relaxed/simple;
	bh=svgdvP6PTJwWdUTFpuZHyDplTfmD5yPHywLUZXah+1s=;
	h=To:Subject:From:Message-Id:Date; b=sGKV75exUGDcyc4iA+gsyVk3yjvMm1/NKx2NmKQcOfLQ/w0O+mn3cRmKQnUIPs/00Fu0j7x+BCBqW7jY5qjRv8H/Jab11o0Jfq1XVgZqLUCfDUOXgMZE9MrX+6wIJJqdfAFFODde4VUVpzANJE7m1G6S/Aoh7igjtVFw1/PKv0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn34fyOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn34fyOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD02C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790738433;
	bh=svgdvP6PTJwWdUTFpuZHyDplTfmD5yPHywLUZXah+1s=;
	h=To:Subject:From:Date:From;
	b=Zn34fyOBlWKNOX9Cc3vqzVTf4ITtv+lCUpfPabvOyenIMhK9+bEqM6v1G0adMI7fZ
	 8wwJlI3+s6sBdeQP5rE02uk2nIZoCFagMnhtqHBkiBSApvhewdcprOdFH25DY8r+wc
	 rEzfc17/NCpbBZEtlwbb1sc+9uWAe/wWtmJAzWyxeHxCHHRJ92/VUfU1G4EObT1Q2N
	 bj3Uk1YFrprfz8av3VClPLbk3/ZNnAcIfYzYs/CSAldzXsA848xCVfugBnnwxoLlZO
	 NezjBsdY40W6lxF5C2J9oDahr4ra2IphlnABl3Gmx8QyjYzP/x0CmXj6ED14ko4hkM
	 jIlm1jvtu3sjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EA4C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073843371.4353.11557193710813439982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8f6c9e45595e23026bfca3096a674a3548c548bb0f7db86580da4dd2eaae40
Date: Wed, 30 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790738433
