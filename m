Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4CDDF6C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722753954; cv=none; b=RdJTTiEqiZlEIqULD15Nmvhn+zOK0SjUwh0wYfm4UVOqK5uPnQsyjo+hEZCIkG9vyPKDnZLceqzX4FojoZaV3e7b46nTUcs43r0dP9Y3rLllB0GYzBU4VksHxERMuo2k9ZA2KkHP54IqiXpQg5Cle4Z/FpB4RAFJN5YCBG+D1cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722753954; c=relaxed/simple;
	bh=/3wBojVa/lqjuY7AVpNomfNhgASAheocHZvQHMeiRSQ=;
	h=To:Subject:From:Message-Id:Date; b=Co3AqQtZjVv9ZpZKzDOhkJ6ZkelEVlPnP4M2Dir9CooRw1WSdzlmOyZnjsEg6V3+tqYIgmsUem/+hsjr40g6tQ0i5TCrkafVU6niuv4+8VirvYKFM+TA9roGG3IRPJ79wqSsSWNruB4+lGtEnfDOkv03UMCg5cc+z5255XQ+D6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcNjzww9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcNjzww9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAD7C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722753953;
	bh=/3wBojVa/lqjuY7AVpNomfNhgASAheocHZvQHMeiRSQ=;
	h=To:Subject:From:Date:From;
	b=HcNjzww9RODseyZ9eun9TLwJA4ONJLonKIG5VbdCN8fEiJsJJgU+7XoAcPQSLXd0N
	 PbyxChT1Bub6Ike+lCHyrPyHxHQ7EmA6mvjmp99OfKj2YyG81IwyBNrD6qyWqNT/xI
	 f31K6nfKCsXWwMGEmfhlb0btUkBP4I5uB/Z1h8WdKPEv9OHN+nHXnmMjBcb3DrJqfZ
	 nw0xoaHxed76tJXn9evyCoKK9UAY4nmNvo3JUmYnEHmn1ONZyOaObRTnIPxMom/pWG
	 /JCh13jmaEV0o6lEss09W+w51IJDVtZhgzuLOeqENAEbpCYvtymdg28pLN6qgdyEby
	 vtoHGY6r66Ieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93110C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275395359.6936.8999791628094333973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e9a2d80068c2a4c2b784e02985de68227d92739ec8c6899d773716df1a52d8
Date: Sun, 04 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722753953
