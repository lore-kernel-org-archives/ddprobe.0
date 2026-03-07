Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D525344DA0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772878494; cv=none; b=h7Jx0y9TL3WND1zq+NlQMgIvamoTTvzB9dFmREe31F/esG/ky5cz9UvLHKWCYWAXbdVD4Thx4TTgJDboNfgaBo38Q1A++ipa2YxCFucVrEkuIOa39wvgPwJUe5Lxm/IXL/7jn7F2IFKomMxv30V2dADsqz5EKvhkL6hIzPWpHI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772878494; c=relaxed/simple;
	bh=AI6Bs1XNsgPkYmqm4EzAXiOsoxZhJ+n6xe65GIaK9QU=;
	h=To:Subject:From:Message-Id:Date; b=RMemXYKnb/kwk9n8ftbe/xTugJ/uXDFEyrwsZ/W28jxSFoBEW27Xro9bLhHlxKgdRQqbsobAn82ZrkbQEATFkd1CfRTofU2YGfM/+in7bGfOXylKwoWWkstF9poIn1SnoCS1rmZUYZJfDgtv3IkRVF1/rzFTM7EEhDsYEkreflo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0P771LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0P771LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BAFC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772878493;
	bh=AI6Bs1XNsgPkYmqm4EzAXiOsoxZhJ+n6xe65GIaK9QU=;
	h=To:Subject:From:Date:From;
	b=R0P771LDX+jJiyJqpOiVtlAuTbgJ7QJLOb1WgjhTxvA6D1YGJoIzadsrZ463hyeLM
	 JoYMbNdzXsje3wLHWiCvXjp7FMbXWhZRu4n7lFqP0FoLTp6P2FOVg3SpT7SNHSOF5p
	 cq/CeQvf+I6G52nttWGXHfHZjn/R2EwE8lD9ShoGxyTKRJCDULj9L08UQUSpIixZ2a
	 iO7M8ZtL+335sIfwSl9rje8MUWz7A93qzTrGrz9fjxbHR587TgEYdIGY+xZ0gXoBOb
	 oG2bUHh6NBI+0Ao1kXfwvoiCpmX02Bd8otjyP0/1xqFecft8uaLPU8ievN2qEMWtwm
	 E+gZpPUzT0JCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94871FC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287849359.8813.10345988406252164792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31506b4c963b06604c77597048be2386f91d4e6bdbb4c474f2fa5977c964c8fe
Date: Sat, 07 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772878493
