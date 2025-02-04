Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477EF3D76
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738680954; cv=none; b=cTHZffQCTdJve4izhP2u6Vhppnad4U21F3hyNEdyZp/ebJV85kZMiBBmHa6bFzfUtJn4yewuLQQF4jI2PZoeWE9BDFJoB4X2MbAKZt/bxsju1Nqs8xfX3zJWBKgCkFMTOO8HLPQL1eJyjHTSlj5KjWelUeZ433Czn8jO/BjgaDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738680954; c=relaxed/simple;
	bh=1isVVim6nFOj4s/pVdkV9Wxmzg/ZY3O8FSwKcO9rzu8=;
	h=To:Subject:From:Message-Id:Date; b=KhmeMm48HCPbboGJbSA/hKhRrnBjiiy2d154lb4ynPmHikunrmwpQtp3p+OwXjtz9YQnvcEgb9M108Vb/cKWAAKIgEAxPGi+8WQSuBtcPB+sv0oPJdd8/Cf2B3S0bGFHTOji7a/oXRXmVDFa4neF3ykxdHRf1NPgfRauygHd9ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDgVEX1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDgVEX1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA01C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738680953;
	bh=1isVVim6nFOj4s/pVdkV9Wxmzg/ZY3O8FSwKcO9rzu8=;
	h=To:Subject:From:Date:From;
	b=RDgVEX1LhLUjiVX/uJhIAPxbOig/199DnpSfsmRlnkZ+7+VPPbc/tsYhGoJcCIBV3
	 z67P4JKCF6+qKMxh3dO8JqmdYOYL5X5afnhpMtgiWiQjV0bx74d5/CBU2tHWq90c19
	 WeCo580gGwQ690XxdTCPoOtfW2opLo6YqGwmdLn8zTAVbR8IElm4WVG88A+VWIPPuy
	 5493a4rSThrpaeGElCL/u1z5XUT6dcrCZ8PS8qUWLQ6rHOkFI8EKMpUUumrv8Gnp9P
	 Cr0OmkL9WEJ6cPj1Ja6xQxlUlw8GpemMQ3n/05CQekWanms3UNXI0B8hQs5TtAalFs
	 KBNmHrT9DTh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A00C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868095361.30424.12941517304687794838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d88d8ab1d35522cfb8ca1c56f303382334a64182912595d5f69904fd21a3a6d
Date: Tue, 04 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738680953
