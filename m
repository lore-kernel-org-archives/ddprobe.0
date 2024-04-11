Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0DC45BEF
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712860763; cv=none; b=SmcgJpqAxSW2JKLRZ9klX9uMvMZBoSbahR24RU/U04cMxILwJ81lePL6Ja8FaW5GOv5o/Fr5ADoXbly/bGK0PeX51s36qLL2DTyJyivfhEMRBSujh7Aul3KJkjQuWMTnlwdu5eK/4rGK4VBpF+0nvFtz0KQPuBn68RuVg4nytAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712860763; c=relaxed/simple;
	bh=Jc2XwQoLgxSKA6T5QRvq1fzqWhfTF1i0r0owqm2lKro=;
	h=To:Subject:From:Message-Id:Date; b=ab0xy8AU1dlNS9mQ5vPMSgU6zHHim5OYMldXUcDXMdweGta3sE/ePYfAOBWVm+uc2oV5NErvBxzi5yA3P/vYwepxabfgmINhirqPszyYbcs7Rqr+x7Np+6gGr7V/qoq2Wxs668cbXmRYwRzl0zJxiD8vAx6GMmfCJp8dJy0nUqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiVapqNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiVapqNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37C2C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712860762;
	bh=Jc2XwQoLgxSKA6T5QRvq1fzqWhfTF1i0r0owqm2lKro=;
	h=To:Subject:From:Date:From;
	b=KiVapqNofv/lZzVfjl3tqllghUCK8W6Qx36sJ7l6Q7zjNFHwe7hqff7iCEeHqHxd5
	 f3QmWDpwtNVlrlbh++G6jj3qdsRDkBFJkIv5lXrt/6Q5hHTqgxaQbup2FrcSE5gPZJ
	 LstlmVKWjQhW4gZpNtk1N+N9m3he/xbhsvApsZneOq288TJ+0jb2nxdc0IHjAEHozY
	 c0y22Q62MHBiRtqhs2vlKWltxOu1VylzRweoBSQV4f0YlrOU5e6Cw5qbmKNxJyZZRb
	 KiRgCPEZ5NCx/N8zVeo4Atu45ttabg9fvloRdUiMaAzc3309YZ8EAn4flEpygX37Vp
	 Vg6C3oEMOvIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8E8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286076276.20135.1862834335528345748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e76987816574e83d71ca327535c06339c7892e4d5dff5b2ca00acbfb2bb8f4f
Date: Thu, 11 Apr 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712860762
