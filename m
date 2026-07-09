Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2E449986
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783633114; cv=none; b=Mk1CFss/Lj+yFME+eEBu8BSEwPhekMr8/O8UfFowDesYKdpZRwlap5lX2TFF3PnVVuOWl4aDbuBTjMkVQUsqmj9D8HjsYompIgXKnqS058yaw4tdbs2t+bbdPS+9WKf5+6CVJt0jtpnFFb0HTQALzrbof9XGFpccstMkVLppnec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783633114; c=relaxed/simple;
	bh=7StZW2p3M/cDZwbIKc4nrU4HNoZLP+KwLW76PCkrHIU=;
	h=To:Subject:From:Message-Id:Date; b=WUcLXMYoUlDrS5lGDSq2DbYLEg25vPeqE7icIqcZ3AL0U9VpDBFY56I+xKhV6zzOxpLVW64EFejZNZyL6hxXMkzGZiLobZFgSHJ2w19HjeKzZswrlZAGObhKqyjcFaSZOZ0J0IDai58paPF9WpBfKFYaJlClak1jziE16kX2Kbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZHtEjBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZHtEjBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A4DC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783633113;
	bh=7StZW2p3M/cDZwbIKc4nrU4HNoZLP+KwLW76PCkrHIU=;
	h=To:Subject:From:Date:From;
	b=WZHtEjBnB65jtnT+bQksDtN31OEDeJ0oQzSyjBCB5PkjgA4+vmzcrzAtguUEYumLY
	 gvE+KrN/sCX8BZhKyDcfRmlRys/vMXwPq7s+/yOiZzvqDuxCZqG7K+wJC2ridN4yg6
	 h54R00uNhPzz3p+tZdB2+EGC3DJQccaQdEAe+y5lmpcd9cQA3rPamw3DP32b4M/y9p
	 3dIjC3ivWzzjl3GrJZngrioS01lyJ3nD6gM5NkDnfebOc2Wk0GU07+e4IlyldbiP2y
	 5w1CdwbieT+AAH2+Fo3F9tIAyqr/LjYTQi6JZk3rQvEb9mVmisqvB9+1MJMsgeZ+ji
	 DweV4OWny7UDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B39C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363311367.25690.15295560235998289879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50145d148a9decad04ff3fcb1a4f408646d745657ab25fb25524095c91c667fd
Date: Thu, 09 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783633113
