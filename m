Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC40B665
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742449794; cv=none; b=Q5uq3rV73/TJRNmuqbGe7rB6NSlHOqsR6igxHrtv1Kdcmr1ciai5lFSXUKKg90mk5fmk413q4Bd0yhU+7lOehlnQvhJv+Y8xqtKTdCeEDR3p93lFrdSDjel6Dlo9cd8Czsudb3ucfqh/lwOmuaKzZ0uCmBr2s4Tj13jJDIC9xPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742449794; c=relaxed/simple;
	bh=EJr1p2BT5MBVwfBfezsy5/jBKEfsV8BdEFq72Rj3gFo=;
	h=To:Subject:From:Message-Id:Date; b=siqgKY7HVnkWwgXFPOSlls/5IIE4OQ4ioSjxnoK8t9V5vQq/E7Dir/hD0ozsRPPTd9wXfPTHQZZydydKGobE0XAePOenA9FxRGCojZkLZWtvM3Qu5NXBtbB8KHVDxB+OES9sGLPSZA+cZaSXADb2j8NGs611MNAVVXK9R007f9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z97L4lu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z97L4lu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1B8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742449793;
	bh=EJr1p2BT5MBVwfBfezsy5/jBKEfsV8BdEFq72Rj3gFo=;
	h=To:Subject:From:Date:From;
	b=Z97L4lu/66FChDlZ1r2/Dz08XTm7sFks9FqAXjLm6oOryekeynPa4JK70hLauYRkI
	 LpC2YL9+NvCnrVkCAPhPspg8lyGMK9ipumg2g+k5cwHBGhMePGiuFmlej0W2P5/PKu
	 ng0+T1WMEHxAifCv3XAbJaZshbI28FycELg6rXQIKgKYIDKEs+g9vvnWI22HV47CWg
	 HdYdFAWTTGM0O934mJwg6oI0XxzQ5EoRUvB9G/leov/Gd5BrgAM504a+BBuv5MaEMm
	 NoMqAOmMoVYi/sjK93tbwblT9ywT6yIASAAGycBnLf5bO66NbNikwpYobINIy6KtEo
	 0Db3xEe6z3A5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BAC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244979361.25589.13405664244053376861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63176a4518a2780a6154026faa6f1e2feb7651f76a4474f10cedead7a84eacfc
Date: Thu, 20 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742449793
