Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324023B2D17
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779828754; cv=none; b=RllybJtcWtCTAh2l5jL/DBAO7NANe9Oby2pLjtc0HOxb2Y2Pu3orsPVqPUYYxpeBgtdb+m14lBZfOS02Eh4AbZP2KaBjoevhUIC4CPQBGDbnIy5FjTXekyZeYiJvRtlRxjblMAqAsR6e2j/0S7nD9KY26+27MkjJc8GRyi0O+us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779828754; c=relaxed/simple;
	bh=cugVVFqPRLGpw+frceOYLmQxMeQXeIoGiQfeXO7x5SA=;
	h=To:Subject:From:Message-Id:Date; b=OTKUzbgbYYFDIS1G2GmgLRPKolChprN2qeupUnM3XxTFTaYt4EAu9wJ9MZQFtPINbPmVxX1ImQJJICze+lrCN4i6UmPlnskaH3j9FRNd0K+aurfTEIfekWaqrwka6mtrZnNjfaH2LhmmH0NkSMzfuvfkNhFKd7uMxErVtDg6Evw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBJxuXD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBJxuXD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E92C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779828753;
	bh=cugVVFqPRLGpw+frceOYLmQxMeQXeIoGiQfeXO7x5SA=;
	h=To:Subject:From:Date:From;
	b=dBJxuXD6YLYtW4kXwZXMUqv/ViYeNTMSUrs6ZZ9yW9zpuFms/eD5ABIQexkhPwOmE
	 yTv5mg0dgKfsE++uUb0eNUlbCo6RDJwQqBIrH3f2JCNaHxV+Nxb5HVXD7Wzon33udg
	 oNpnhJgG148m8Nt2AH7luz95oYa/1nyvRzmKgOAc2eSkXkprmI7xZNPvtkeZDoS29U
	 Y53oqj09FdSwDg9IYM67SzCdo6qQG3qAO4uQgmoPIiL1yeDD0aco4VttkkbDJy+pd5
	 CZoCNInm5zpmMukCaakHY7jaZ/HoZVrQjkqM4CZMvoLIn3FYY2HEVZ7erMUDm069Xf
	 djIIh4/p9uM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA418CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982875368.31834.350293589566015712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43c3e0d9a708bb15123a5fdb28cdd0be0c6c513ad4a8d5f7501c07e37da233d
Date: Tue, 26 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779828753
