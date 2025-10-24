Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1328F169AE6
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761329394; cv=none; b=PP4mCTitWzOeUVvqgkjZpEjsXxOLdw3+sHvq9uElZDqMjEETSt2osJY3aTUg4xEwme0s7iJzrP6LIvsFruFvNSEWGM0eViGPRqxEUZjLFOcmuEiVhO2Zlm56VaTTfJAgYqVZ2pCOHFF4fvz9HITfJSFblr4TsvHS7u5/4uJzBI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761329394; c=relaxed/simple;
	bh=t6cIHWA2wBzxQP9znxikoVA4dhh4tRzZ/eKAPxrcY80=;
	h=To:Subject:From:Message-Id:Date; b=RWMRKRnRZYEtRpyrrkfcxKpko2/ucFhv7x49mM00E9os13sw+521E/e07JPLZA8gerx+471dM91JmgTUqNtVJMbgncYKfaqLbs7Pb2V+Fb3UmSs5xGhVjX47NFuOUBruokalD+kduK+xlXlqNr7irC3x7H7GCk7cHPDv2vdn6IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5FsvtRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5FsvtRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761329393;
	bh=t6cIHWA2wBzxQP9znxikoVA4dhh4tRzZ/eKAPxrcY80=;
	h=To:Subject:From:Date:From;
	b=j5FsvtRh/zxZRKXBcNl/YJ/yXUgAl7IoAYe2CmFmmLsjoVdKbgm1BiVTYyBNX11nP
	 sScHoM2XsjxVQfEUAsrsFMhr4C/l+X5WCFgKi5BQSG2KhpubCi/r/8chhaavXRlywT
	 Uzoh8D+Og8H8z4zIzO7f1iKU2QKmedlUUiMVoVnm+sZpuBGkfzXb8sx7D+GQcSpvdE
	 0lu/PjErhj6ynpG2rgg/fa0zTecVN51DInwsyU4O0HIsBkA/yWoDAlxDprRajp7FiT
	 T6RpQbs71on+PC6yEHdNFsV+MdhjUbSxANewcUOci4n7pksg2XGQy/NZvc7nYEe0mD
	 02YnO5FNnKJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE1CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132939358.12479.1229724554574941752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ecde08f440bd4938e65ed5a9236ba5b5df994ab2ba0bf90c94a5a4f8c35edf
Date: Fri, 24 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761329393
