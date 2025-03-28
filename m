Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2D918C907
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743142795; cv=none; b=T0MGP6YfH9jnz7+u470t0SMlxK/dpF33WZu9XMh4praqvWSF448bZkhUoLbMRV/yb3pnZirUbYN2LSrem9ad2x4qLDb+sLDK+s1v/x3lHnl5eO/GhFTLFcDbvYbTko4tzPihZRL2TJA3jt3LyucYEWii1TJtMJ97NReaCX1xOWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743142795; c=relaxed/simple;
	bh=3esJ4L9weFaWFlzmmPG3fqhPQ+vtgJYaoPyaSRDX72U=;
	h=To:Subject:From:Message-Id:Date; b=IcC4Gf85hpafgoYAZdDxgCL1yI6+VNlqmxOFeXeUtvXkdKUqSGBYNuX2dU2H0x4QqMc60/BgWdcepDMN3oTGClqB9pEx0S1diMjj502EjpHCfF0jZmmgZt0kqPrh2wSHfWzBc6FCoIj728QyZZDlKpG7XHTs8JHZAT8o5Sm5BoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ2wh1bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ2wh1bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43FAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743142793;
	bh=3esJ4L9weFaWFlzmmPG3fqhPQ+vtgJYaoPyaSRDX72U=;
	h=To:Subject:From:Date:From;
	b=XZ2wh1bUmDRVdkfniCjemE6FrSEMUn449sAFvwdtXA9BhbDALB4bvz7oI5QpLiRdc
	 45VFg3n+KNHgjlPBnHymKLPUamfllcg62qaP6Z/m1/Pw447KEPytRy0jdoIUREAxWa
	 +/wpXTZ80oY3+ILs/lQgqWe0nMCwsHr9NW4Dz03evkrIfw3Hrw19CeIzFqADJ4FeRN
	 ONlgHJRb6CdsLIhkZNd7UKVbQdhNAVAw7II9h66G7xd5Crl66J9bF16iPpjvXvFDrO
	 gpUOl+rr1tt2G6WaX75QWUMZuG07LlZ1M24lUoyYteTC1vAToKEeaaMuj5Vq3rVn8x
	 GSXe90OWzp/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C9C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314279357.12475.10136986179862711518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbd8534c247ab1417d9f687dc6fbc51907ee1663189d9328b3fd8d21fc577f9
Date: Fri, 28 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743142793
