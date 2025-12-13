Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E8D3FFD
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765638774; cv=none; b=uqnYIYG5zdb3wUvpmhyQEvTkrWItKBW5cr1xivdHd2u+GCsQYSvzodBXgiSVVcYA7h7u5ZFyUyOWDydN9FEqBDo39bQ+UpRp6bWjkYBlatO/2YzL8Eq+vFPFJ58sm0ZsRGsEU0/CjdqU/ZrnU7AwPUhWdlDWqpA0jVpRl/lcuBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765638774; c=relaxed/simple;
	bh=1ep5Cqn4ujtBTkKUk4/I7DBg4lZ1qONVYmXSzdwvGho=;
	h=To:Subject:From:Message-Id:Date; b=Bq+zSxN9MBThupZ/oizIqzuA5Mf10p7hGVJShdyKO8Fl0TBU63gMRHXD48iOLO77q98Joz/IPJmjf4N4cYqN0MPHn4aih9NnFeiDXo3665RRkl67shK9Opxmmo1shfNvEexiP5A8Ta2hg03v6vWeKVvxAD4G/Z/tcVb28c+Ze8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIIjxGQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIIjxGQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC212C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765638773;
	bh=1ep5Cqn4ujtBTkKUk4/I7DBg4lZ1qONVYmXSzdwvGho=;
	h=To:Subject:From:Date:From;
	b=LIIjxGQ2bAapXnAH7w/G+WOYuR3dYEeRdEvEl4bkWaq9kEYq3dclY3LWAj0bVLLip
	 ONhYURisPztqYzDqVTOPxtOXRMoAnneNjsXao2tbTcrxnOlHvAwm25ddSadU+hZl16
	 lS9DltOeaSxFcMOOAQnvawrg3x68jkHH7JySthz42eKMmld6OFS65ktGVfzUhJuDQm
	 YERcCc2zfghuwjZoZQ7y499YnGFnt06puq2/h9e2ghJZPijpqa675u5SfFclJsO1Ot
	 3BMbjRsQnM1Au6Fa63iuvsrpOUD1juOsMPh9QmYh1D8rkW35mUeBf0vdnWa2w9vXUb
	 vqqX0Vxz1wwQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BED5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563877359.11972.3473019632492730887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cdab3c4b01253d325d101e3279edc7e978d63e41569f5953fed1a380b37df3
Date: Sat, 13 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765638773
