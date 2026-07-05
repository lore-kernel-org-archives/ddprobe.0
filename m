Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0561DB356
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783282714; cv=none; b=ONgoYjyNQ5KFNh19OEQgthlYVUYm6dEexK9VRFzKJUtbI37y+N8svktpURhVRQuxFuNWdce3ynzPj2upQH6rrk98vJPYECXvr/Tyt537s41wZNmiL7Y7eSGE6E3hXs6xz7Yfj1A+Bnmqczr4zKl7APdi9wKSrO0cRMSPxZDqCtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783282714; c=relaxed/simple;
	bh=++rs4yRDc4aVP6DcfoPmoGffFnJVEO2IlSimFkgJQgI=;
	h=To:Subject:From:Message-Id:Date; b=tb36A6+2tqGNtPBoFPyGymLH7sSz8LDCI/winnKMa+GlhGt0Fmwcfva8TmfNz7e6QjlDsngQi2pYlOJPC77AMpYmHaz3ztvZcjeQ36ybjhtUTAFMWKzJ98PzLkkIvW92seV60AWGpGSp+9Wza9ZuhCE3GK+28Me85LST5hBZrn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxz5xfVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxz5xfVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9FBC2BCC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783282713;
	bh=++rs4yRDc4aVP6DcfoPmoGffFnJVEO2IlSimFkgJQgI=;
	h=To:Subject:From:Date:From;
	b=Jxz5xfVEbwhL0qLIpIixVzJVGHXGO+uZFCLBUVZWAZFXSkf9OADJLTQttyXGlBQeI
	 VvirOtwEoQV5jZlEzOZzjmXJhi5Mfc8+5anTmXIl4KCoO9gOBx++xwNCSA6iIZ1zLU
	 zGVF0tQdmojtG55511zyzIaiZgEWcU0/EW3wJYOA3fsyUl3HW/nZ56sTE/DjqbAqPV
	 4V89Ey/baAHTlBc+EvCSbHHbo71sEik0iaSKyONsq5phv3ksXjlwkjKQYl8j6Hqkor
	 PIHWUQpmvgw1pv9ulrWztDES8/1YVFzTv0fodPVzrsuySwymWIXPKVq+SSVzk44BiT
	 flvqXZUDUDahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B5C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328271368.9985.7495177769502701979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c11c969fe13cf5449de6dd648eb2dad524db4c925e99db5e6437b5af5bddfe
Date: Sun, 05 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783282713
