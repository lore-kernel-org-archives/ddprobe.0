Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFDE1AE087
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718894423; cv=none; b=I9HzymeTx2SP/IOoOeM5BmUuTutwDLwMTyutUYQSfjXoNrqhYy7MRNSnC/DC1U/jyCPQPewbBqM7dat4kUwiHzwkEFSSZ3lrwTrAUj9cdS6IwBUcuZtKPtJvZbj36eni/YTr9m/o6yV3KkfI7Ap+y52Jr9azmSgKNDeV7fU4He4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718894423; c=relaxed/simple;
	bh=ukdtv6V2c6/aGCFyCvFfn03yoSPKzGNhwIceAQ+UucI=;
	h=To:Subject:From:Message-Id:Date; b=GxENfGUYfgkm5nbaEEKh8U5Nn56v+XD+V7lG2gV9BGTbyijybK+QwveS45snMBIQ8o5XaHUm+TLNgyIpPn9iZh9h56ethajqOIqgc7bi6ltNgUaD3ExkigNBujqbSI3ysDlHWsDH+C3i8OqDtcwFbQWCA68nC0F7UuFcO168E2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVvmyBMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVvmyBMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 087C9C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718894423;
	bh=ukdtv6V2c6/aGCFyCvFfn03yoSPKzGNhwIceAQ+UucI=;
	h=To:Subject:From:Date:From;
	b=VVvmyBMGDkw27UxZqd0G8fbp/qQ63JeKZGyju6LPDvLlzwUG/s1nkvMdsse5moNdI
	 Rj3PyxsgrxdVyOSMZZ4Zg62GVbgvzXaxKoVSeEQ7X/r8r9+Dyh/ZifgKor/VVk3HdT
	 q1RDdnygwaT79s5NqGJpH69xyG1G5AmNB78mUUJZFENr/lEbY4pvD+yY1mfNUCD7Oj
	 WNLIhmGkFuFYdXHwfUyjKcWqYFlFswWzOqBCwi3+W2dsWcVkwXoCXPGcq4LGaYlulH
	 3/TdYC1NuhmO1NqF6VCS9vugL+hwzj5EEmi6TV21fXqzZ6XDxjTrlJMKGEhFngEsf8
	 CPCqTc0Cu5rWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D652EC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889442286.7292.199311961699367424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d4f3d953d4cf503c675ab16c6231a9f849d0a951a4655ab344f2c7df63f075
Date: Thu, 20 Jun 2024 14:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718894422
