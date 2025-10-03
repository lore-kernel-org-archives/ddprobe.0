Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FB02D46AF
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759510794; cv=none; b=JXyHkPSEcAeiKfmWmsRPDfL2+po/ZvvoXZawflSJc9KnTqHTkAMAvnv0sIvUB8iar4uesaVhGarHa7og2ctRNzHbXJWmSg7/GAYort+fgS5gTe6Dm1Ln7KUPyjKpvjWz5FdlezRsnOqu31TBHbi8Wg+xUvlRzzF7Avuwi0DT8Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759510794; c=relaxed/simple;
	bh=IS378nJ/aATLS1T3bJIcSk3E4JTzV5d7y8IjXFdnntg=;
	h=To:Subject:From:Message-Id:Date; b=VSb6u0tu5+dclqdokEHJYd/oHXWNPtJ9fMW96wAPztnhdOqd78jf3vFBBW700yi+Fpfpjw17n13//H0ud15w6k6ulwns+ewz3DTFZhKzrYLZBTWKQQJmDFDbRcloyL1aZlXe1oM682Y73IcWyb4TDEXTvYu7Llk5umjRXEzRyfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWzcm4Ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWzcm4Ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E8C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759510793;
	bh=IS378nJ/aATLS1T3bJIcSk3E4JTzV5d7y8IjXFdnntg=;
	h=To:Subject:From:Date:From;
	b=gWzcm4OxjdPOo3eF6bv+oKMBegLW8Rlpdn2XUXbKN13MPZTl+RVMlXOev8nU/CPCR
	 q4g4Fv7zv72N7wJaeT+obirnlOpDGAuipsclrysJBzzUEI9dQoAMn5DlyHGUOhwLxr
	 Gi8azPOlyMVbXwv16jXFviaxtb5zm4bPd2eYoaqjV7Nk5H3y+pagSiokxTYU6lHzPq
	 8Rk+4V8Sv4H16SyCu/w9FGh00UhXI1i5PkaXat+CaK1AVc34C9eMiOqjHKDqg6jMeL
	 S951zoAukE+QjJWS3qiwRaGZJuzZ3iQoXIRQyYUuAtAvf/suADS050THawjEE4cqhj
	 l2dTi4RPOs5jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F439CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951079357.11137.13036721811960158906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2436179a3e1ef897732b9814c15b376da46b59c78ce61bf463f6ee1203c9ff1
Date: Fri, 03 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759510793
