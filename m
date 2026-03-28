Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9876A3A9D8D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774723494; cv=none; b=aaXktrAbQPRKyGYlR1i3cLlHCJn0sFLOPvyziUgwFqtwbPBUd3gZUA4bcl2lobs4BWTY9qxzEn6YD/OFlFcifOpWdAlhXAudhaaRXSLdIY5ObCmAAoaN375BJoHHzrKTpauULhCuZ9d+2/w2WPomsr1UlzJfOeJbq656DGcW0V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774723494; c=relaxed/simple;
	bh=Xr0ZFkbgcEvenwwx6c+JrCVml528/AJ8Ir9MCavWDjs=;
	h=To:Subject:From:Message-Id:Date; b=CIPWXydQjvOcqM+gsbALo9I3qsP96avELkoR2+yH/eofx84737jJ3jQIi4X55233mXSWMVaGdW5voFdInlJsLmu3NaADaRjJLVXFRh48iqfT84H49GHE9hB3eE/DafEDWfKLGoSBQj8kyfT4AL/dOL3+NGGGzeGsmhS1C/9b4w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APcGPBJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APcGPBJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FCEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774723493;
	bh=Xr0ZFkbgcEvenwwx6c+JrCVml528/AJ8Ir9MCavWDjs=;
	h=To:Subject:From:Date:From;
	b=APcGPBJAhvv+QdriLOJhjvnVI+cyhtaGw6CAfjDJPtjFMjh6G6Kn/9/b2mMkWIGBt
	 OKJsiEDELTq4gZKfDymb3Vq72d6no/uNC1Fb5T4iRkj98LIKvL0z/jhoxTaiaIKG1o
	 Bf9WYHMdwUlpYQ2eZm7YkZ24LOsLr+lAsJKSZ3nXSKIAS8aoYoSXfIg8SwW7njPl4J
	 t0KlD2SoFcoUll8jNh9tO+IeXbeUdxxOmoPNDrr6JYP+THE0fGnh6VDWPVhh2T/VZP
	 puqY8saztk0oVR1mek9EGTeJUqysobUuyUxI58rwfTfXGyQwHo/lL8pxRnUC33QYVq
	 Dk4io+Tee2jFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BF10F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472349358.10684.5195385862580156118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc4c5449a7c04f5046b938a1601891e5511ee1feec82a88abccc6f43c87fc30
Date: Sat, 28 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774723493
