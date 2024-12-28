Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DB61F956
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735371954; cv=none; b=FYmoJbQLW7zmBru8uvvdAMOvq7nEfoCZjKf6nYAMUe6Zj7naR70+KNJT93xWycgbK41b6863kcqDMhpOAY4GDoc4OYhz0AlBx+HakcCxI1efH/3pqmpxW9YxehANNjGQBkJomECE0kMtN/oZahruLji8AglY+wpLzeYQ+7swzO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735371954; c=relaxed/simple;
	bh=vJ6epJRK71ZYtDjKKZuBCALWxBHskLJQxJ9PfwJ4ZHY=;
	h=To:Subject:From:Message-Id:Date; b=Lk+8x0JGcRwqNBuP8rYAr7S14L1KofPLbKoQOxdVeT6l7wU3nrWhCK2kHBoW67DM5Q6d9JElBo1Ml9UciJQwy8J4XpXCf42WLEUaFLeOZt4DTpBX+WeqMMhbB8kDtXQ+uzC2dbihlQZPZARygA7s9V7gUCpDu+f/Vlxq2mC3LLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqh/YX1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqh/YX1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1082C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735371953;
	bh=vJ6epJRK71ZYtDjKKZuBCALWxBHskLJQxJ9PfwJ4ZHY=;
	h=To:Subject:From:Date:From;
	b=nqh/YX1Ok0D7y9rnK3r3PSMZhIJLTHk+Q4ZiQbadDCDC/jPJRpr4cfwzseH3dax9G
	 ELsKFvTDBh1kefQzA+Etg0CjSxbcP3tOOFW2PmDpf2uXPF/WuGc5BLOa+QSO6yGt+U
	 R0V8nhThBN+QhJHxjX6J4GNeZadqvcVSLIn1M179JIsnrldExEiCoYOlPBRp4QUy+v
	 +4GtTWnrYtxEKGhbHGyGYPPF4d9nXskBs+l/eqCxYS1/gTsBns7Z2glGHgb2rFGlOl
	 58xtWKmUdBMeHAxyjxV0z8sXuSC4f5EGLYl5KkYJ3gcf81ccve1sLsORG45Z1LWsT6
	 scJthOJbCk1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A414E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537195360.914.7118739886159427597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a260da1b8421794a82a060d3a8d4be7e40500d02eb57373360ef9fed1bdb90
Date: Sat, 28 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735371953
