Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461A3372B57
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780685674; cv=none; b=RtbCQwWfcwqCyUkJjO2U1YPUXukWOOWTnlktn6eTP4QlnlBfplXqu2YHZhpsfxCZw+d7IAxfAjwVIqQMi2JrGHlqmYUvT1x3wHP+hK7M8ZHWUIvsF0kgVkwiJ7zgG9Z4LQbEd7DvP2vJG53qQQOrcuc/Gyqt4cCRhVZZUfMpNfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780685674; c=relaxed/simple;
	bh=iBZ/AWc7uVD/kzFrJjRuuq6ao0E1Ph5VELI3YCD6/ts=;
	h=To:Subject:From:Message-Id:Date; b=abG+Rz5hFHlaDhOrD7eaCwF5mRw2WSCCJyE6K0UF9osK4sCXApyTKpja6oZK3G/SzhvRV5ri2VI+HXWCgjIvsAthKnrm0FdpwWXukYjEP0RpfH6Dtdpgvu6Aa7L5FF64CJlvQsHxNaV7vI/Xg32xHEinA0YNuiL56KQiU5J5IDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG9KPjy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG9KPjy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FF4C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780685673;
	bh=iBZ/AWc7uVD/kzFrJjRuuq6ao0E1Ph5VELI3YCD6/ts=;
	h=To:Subject:From:Date:From;
	b=PG9KPjy1FtQBnckQco0C5jCKOewf6gJ172AuaeNgVdZS2KXZJsaUDCOWlPkJz+YsU
	 jAVyoG5SlXNA4+MQKmw0IRoLm+5IXshceVYbrSicHjRP0MFoFhXBuPPLnelZhl8I3l
	 oi1ryLLDLCC2vfDuOzYLIMb/iccklIp3NSyagtkc0f3JGpRuq8xVtgwgAuUs6xZCTS
	 fJNVyKfVye5sgNNm9v9voGerCpUZ+Q5OGiCDr7DWFgzoPvpzqTLVHQZUukwFjmgAcq
	 B0dP1/VZ7u9DdK2pfnUbF/+JkoPBMNhidgw8urU4EYPyznFqKY85ZRbAkDq4ncSiyy
	 htCXX+IHWOcrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B623ACD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068567373.21054.1492044078265355564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2280e1a9f8cefb52ceba9f933a434c8c6b3381d559146ce19d6a524b9b59f914
Date: Fri, 05 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780685673
