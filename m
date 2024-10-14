Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457BA19D8B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728906354; cv=none; b=Czh8iz+AfqgENHgaglZDg2HE+SsmfH2RjsWkoAi637u7Tvp95EXmoSrDY/1FGIq5ZSmIcfiagkfzMJe3TA8LOPZ4Bhs4TGCrqYHrw7ta2qmWJUoB4zwsXSwij1x3g59976lkCdVX8tsYz8zC5c16j/UEcl9JZaPfc3m9uNsZAdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728906354; c=relaxed/simple;
	bh=Y6UBoXFeJ83k9q1ChWNAxCJhyrbbiGGSRA8hmsEzqgg=;
	h=To:Subject:From:Message-Id:Date; b=lbwAfUXBTqsDs+iLNjpJkXeR6Zgo0/Ek1NuEwGEgvtaneQr/rrh6WldQplTfzY3oQhyBLLPYrtmhLb3xkIPIdyc8WOI/ebZZvDCMU9mZjlSVOiDKFOWLt/4NztTeFQ3fxGrukmOrKJBXK5maSBXHgwzJeWXa/yvag8hXPPWgB0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWWVtyjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWWVtyjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECBCC4CED9
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728906353;
	bh=Y6UBoXFeJ83k9q1ChWNAxCJhyrbbiGGSRA8hmsEzqgg=;
	h=To:Subject:From:Date:From;
	b=mWWVtyjyvv0+8BMyvccUBcklsDRNaenOCm2uxc+JdyfhQOhat7oPkSLKIl1jG03k5
	 o3VatOoT1TDGWwrx/RhYlMefr5TOjPdH4RH2mxmxLwL3rK9OUNvA27qhBb1FJQScmF
	 7Mh6nq4XVdr+XkEXN2Z+AzDJpRi/7X1P5kH+sU6+tc3sG0kjyNBBDpyRg9FekbyXXm
	 fLVqL+J6JqZiMokxNxehyktTT4NEfkFoAmRkkHNL2bC9UzxxA9sOb2rGGfhr0RwmFR
	 zPup1mIHEuTJwIZP1RwuWwYREBHMQyFLNHJrlMVrNtxJyJU7BsEQbOrdByqbuZTTlN
	 zQpDaY9UoT6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C7D1624D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890635365.6506.9192891865624000934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cac69c8c79b5eef98ae751251f308b6895b848600d642040376d9db6619842
Date: Mon, 14 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728906353
