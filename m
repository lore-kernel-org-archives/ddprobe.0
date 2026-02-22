Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6B03C17
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771756494; cv=none; b=H6J1JJyuZaKjZKf1KWroUr6D9UWp3oFb26n9sfss/SpSMZX/TijfDeAHmEVhZIB1CpE3/jmEQzLADc+X1CgGxZDzu/v7X7I8spXYncxtXWWHvfjo64ASqN7FmeN0w2us4qmnRhK8HuuGbG54qLt4vlzt6UxvBp9etjNuk/GXRPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771756494; c=relaxed/simple;
	bh=ZAP4Q6OKxHPAqtLOjkxGrLAHSLFCQzD2+yC9pDfwvMA=;
	h=To:Subject:From:Message-Id:Date; b=EY/VRdIZVlLpKlfw2ESlo6uwtGw4y4sgs3jaeNqgE6+qLMrix/BdMKuSR7g9RgZWiQErjJaOf5RPwJaeGtYGrCkZnx7+HsifPAcXiHcUfEPKi1LuHQonjzXq8ZndVsg1+cVX8DeuQPpkF8w7TPzODdZOXQbDZ6nwqSfN9boEXhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc4s1kXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc4s1kXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3F9C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771756493;
	bh=ZAP4Q6OKxHPAqtLOjkxGrLAHSLFCQzD2+yC9pDfwvMA=;
	h=To:Subject:From:Date:From;
	b=Jc4s1kXXiUvja49/BShHbg6aC67FJDem8Ijc86sKt9gHcp+ifU/9uwzChBQClbseq
	 DRWgWTAq06NnSYpctkv5dVPokAgMjnrnhzgMhULjPDxmvNcDsRQPUFIILICnc+xai8
	 3rYb4wBpb+U2xEhP8EwdCxsakELb8F6tSQM8MDmS7oEb7epuhTl6MHsYh3OcJYrbyz
	 weFjVoNi9J/VpoQCHytJ81r3ybydLC1R5DtasrJeZEPOP5gJVju73HIjRBJyAq7tMu
	 kV6i1nFEQvbi2uzbtoKzkVH3j4eqQVP/a/bNtLPSEopu1Iw9Z8PrhAb9NgbIIyJeNi
	 kHgrxstlgBh+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D58C624D7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175649358.5726.15356209122373959026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3ac5e1659bb29a5093651e1eb08817e6a95ad3101895a1ee9be2720fffe0cf
Date: Sun, 22 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771756493
