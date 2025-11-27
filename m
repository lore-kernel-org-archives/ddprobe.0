Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E1A2D877C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764229374; cv=none; b=SjlcNGOLYMMJBZdPY7hm/4LhCGPCub8axyrLjjUrIHO+z/MP6lBcwhPbUOwoVrcZmDOEwbn57ts/lt1f1gvtyYIohPa3ZqPtYn3QR5fAhpH/yKkgdrDXZQU1XG9TKnmmzbh3bcrszoVvnCRKXhUHWhUrdFXjZZFp+i+sFYZNc7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764229374; c=relaxed/simple;
	bh=5IEEws6Ohkb2ZRAOx2w6BuWUVQKYy04rHH/7gh7QVRM=;
	h=To:Subject:From:Message-Id:Date; b=ufQprtzeqFIbezv8pvSurVgc2lLfCWLVZi5i36p3fskqjuyeH1IryaVuHVjfIiV7RpStSZ2xpo39cYnuuO3bSmYJiIdlZbFuEtdGUdjr3s6pPl3xDvUi3wsqFTFOzKTLDhmE3pCpM58K1yJMTa4EMbfHI0B68wkEDnEYrouCfqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB+mQTuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB+mQTuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBDCC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764229373;
	bh=5IEEws6Ohkb2ZRAOx2w6BuWUVQKYy04rHH/7gh7QVRM=;
	h=To:Subject:From:Date:From;
	b=DB+mQTuCON+ptCH4gYIJurvsKBN/eW75029pIGi7CQWFYgiKjx1z5KT4ENrWN0EAx
	 SsotsCNNjNVkUguUCfBenHvwk2SQIVuHmeT1pJK5SUn1NaN7X/LQnSnYU2nTqHKsOW
	 LKfTJ5GSl1EJAy8yMoWQLw96cZcfi4UtoIDHNVS5oYs65+uOojGOVjoeL673L7grBD
	 KphbZdvGp9rVzV9DxfoqYzxn8XGR4NYsdoYpzkPHPFU6h5SCcRg4Gj8I34t77M/1lx
	 n7+2kFKlLXyolSV3G3VpGYerS6Qu+uP82doaAvdyC807jwhjWpYxUhwQpa1ypT1y0d
	 6sTo4z7Hennfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991BCD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422937361.24346.240046815108459087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec2da90210cc58d197f63ea5949dad80cb697d7b9e9e6fda3de10b39ae1aac7
Date: Thu, 27 Nov 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764229373
