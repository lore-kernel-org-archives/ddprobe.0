Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0BB1E5B72
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740929334; cv=none; b=OsX5WE2+z/+2FCnwlMHLnpta9YPwLfW+CoVnzfo8o+DCBLlSlx9bryZiEsH+yctrrOWkLdZeOrnRPVyoSEWGQGtLqUDUYwblO8TAE5uVAE3MXnpWZVeheChDtMlUXjkQ3EK5Z/QeypPkqHQ8J9E3qd334E0OGdW+oXN0aNrzZIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740929334; c=relaxed/simple;
	bh=AfS50eKRM3g2bfN8DubknohiK4NhB1N61eTWUIcO6Ak=;
	h=To:Subject:From:Message-Id:Date; b=q6PAi6XLOIPW7gyEsmSfZ3tGiamHMMG53DUdAt2Z7NYTIjajmxgOyh2Wu2n9HO5MKHvf43tel9t/qwrIagCQhtUXLhi7NU0jDEL0pamPvsinBElTez87bDHucDvu7Xc1IuxuQxe4cZ789fGofs2VJpixPgThglTX/k194DiyaFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EemLjWxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EemLjWxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7011C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740929333;
	bh=AfS50eKRM3g2bfN8DubknohiK4NhB1N61eTWUIcO6Ak=;
	h=To:Subject:From:Date:From;
	b=EemLjWxKBWnJIKMJ2S2DPQosCuCc/jn0SnIP8aByxO5/Fs1gdU2xKSSjWTuXRTHWS
	 y1rQJ23fpsb93U9/p+A1Q4N+gppoH3b1IkLC54oEBwRw0YYfw/vS3NqsCfFmGGZ4FR
	 b7VqhmxEA6p4ECyg4Wxu1vCljVoeJJUQtaxPKGvCpIgUv3JRILIAkCKw4WHtpAY0v8
	 37vjTn2c+O03AITx28PNhvNCp804o0mUzMrNyhNgD7hrKAvhjV77fyr8CEqSimNDpo
	 gwYVlvemURpQ7mxNetFjqblx0S+CgpK44VPzsUsE13RYzn58wFbREPpbNxENl71trC
	 ybLPF3002D1WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FCC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092933359.6951.3253206033458209458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aad5d886fc72fe041e9326e395c3da200bf178a0ebc773d3061fdcbae7553d1
Date: Sun, 02 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740929333
