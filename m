Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6341DFF8
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734845754; cv=none; b=RwR5rIrxsTW6vKCreEo9091ipMzL1EH+JVm8rWGLYuksF2lRsQOtT0MiX23nKjcteCZqG5dIy/4mc37WnkGXx3o2idV071jp75IHwWP/no1bkDTGl6h5Mu4OLyZuvqawTOeg0CW1NRRNp2mlCJbEwlMXawlil+wX9YhYkr1mrzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734845754; c=relaxed/simple;
	bh=IdD0y4h6QUP0U69CHV9excK0X0QF2L9AXCo9xXljzoI=;
	h=To:Subject:From:Message-Id:Date; b=YEfhSRYQcf9fw2H210ZweK/QthFp4Cyj8SrmJDjptWpapk+NyxTjBXzfEpiX3UwuqbWyjWF0h1EgZlEDU8QjVNO6nje/93DbCcyfyL5KDJyCWRSijgMltAxq6uLk47aU8/OokakG4z/YgBJ0PTMqpDNizrhdccd7ZAruk4L5bIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAAnVDZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAAnVDZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAACDC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734845753;
	bh=IdD0y4h6QUP0U69CHV9excK0X0QF2L9AXCo9xXljzoI=;
	h=To:Subject:From:Date:From;
	b=ZAAnVDZfL6wCGooFe8hqelZzeHYZ7vRuqshqJiRqQCdBYkSzxizDDkrltncS4lbZo
	 wEW+eqWEDKTpP1iCu+w7Af2s1615+yHKbiYf+LxBvv6dnRWWZ2SWopiG+abPvbrflt
	 Xw8Zs51UTHC7wyJnzHT8MbEsn6FnFY6hkIkGyLFUV8Z4+jQKnqH0G3Qtz+6g1T+OIe
	 JfgkuuTJz/dI1jhw1v+Le5tlnbGhv3S5saq1pMtcSRFIxx8DkNzwVlxowMTDjYH1a1
	 XkaU2RW9cnnEu/uFmcX2JXjx4uNMqIj/OFdzr7g10t9R+wB9MxHfmP8cMw2YTOk6L7
	 gfGdzKp10v3UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4BE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484575359.31596.18226278603254236512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f9114ba8f3686272725a9b7182e21521b39185fbbaa2246cdd01b9f8b40bdd
Date: Sun, 22 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734845753
