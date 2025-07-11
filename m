Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A19A27A927
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752230394; cv=none; b=E1jOKpa+96ksDFYnnyqFY0vjE4rqhVPptwpP0l9GskJvCYjMpgr6ZJ/bPuB/ODviILYSUsR1Q+L3nxbOqFfbHq4HsiooOKE2UzcbLmJXbW1Fn86ioGyVoMdgExJ/Bc8Z8baHhiXgYBMI1RLL7Vk52eK+a6STgVYEZcgCd6xFrU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752230394; c=relaxed/simple;
	bh=o213LtPFV5BsW++pURKXIzy9+Qpifkq1axPKexDyh9Q=;
	h=To:Subject:From:Message-Id:Date; b=fgq6oGXgLAUMwtOzZjtid98zTk4kk3JcPm02PsN/D6xSj+TGVmmehfBLu6uNDAdVmOgerwDhIhKux581JhMeuGaHdijUgLsR9awaaipnBeHYc8ji1TzDKTrYmf/j15vjC7JMWsC8mFxqMdHM+GflKaUrsETTVaLJfkMStqwuAU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPCKmIKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPCKmIKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F74C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752230393;
	bh=o213LtPFV5BsW++pURKXIzy9+Qpifkq1axPKexDyh9Q=;
	h=To:Subject:From:Date:From;
	b=lPCKmIKEZADTjfhFvlNn6CP1ESwqyb8zLaGYLywQalj+fYNv3NnlWD8J23V4Dep8Q
	 T0Dh/Qnyx/0h1JepJ9pKlmAG0jjRs0Q/pXs3KNwYDTxN6EA13RAunsBDRFoiWK+VBe
	 RWDKT2vj5nr7gUVVvtHKV0zpBYbfyTx7IalHTPDVF1/CEEKToMtxpCkF87ENizxV7P
	 N/wowmPcqOjDt+5F6eGvtBHqgrG8HOYfFqrMT+M47ln4IrpwovbXQK+Pc8iPx+V09C
	 Njr4HUoNL4DIeBzYPrztcNvfx+lJgleSrswKgoDuLXh8xTN3oOPJ0hmGDkhPm9VDOo
	 +Hd+Kps0dKVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035BC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223039358.5644.6221922309783222924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228a0a3e26f0e731a00624ea9d792539427669f512cd8b411abea0ad9b681e73
Date: Fri, 11 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752230393
