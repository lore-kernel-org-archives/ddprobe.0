Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C22138DEC
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747573194; cv=none; b=Oa1fPatm5Clt9IKj0svEUbcEazdfKpeOO6enDzqUFhmkeIcxmoGWgAb/IiSrNgz2wJcDBmZ8X8Njr6YEIQ336bTsO2oHBGV7j92qEIRqcrAufBs5FYU0swjUqzEkn7d3k7FiGDz3XynXzebSLrHhXQMLFz5tig68mI9XI2jTtTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747573194; c=relaxed/simple;
	bh=wYgfkcUFtQDFl8410LHzZ3nlXqmbEtXY0wsaWvBgR94=;
	h=To:Subject:From:Message-Id:Date; b=FbquXPd9iOCfegnvxUarQncc1Mu8fZK3uUq6I0RATSrUjdZRcSQJCILQID8ssmbPt7jJV38wJ4jMnswPbEdbL5zy3h3i0e9Y9Pu7rgKigDAqN/akfYEuNEzTo9PZJvw0kkGLPwjKfHp17vmxOzF+1zOYUKrO78I6hUhnc2Mk6+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtAzhlDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtAzhlDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747573193;
	bh=wYgfkcUFtQDFl8410LHzZ3nlXqmbEtXY0wsaWvBgR94=;
	h=To:Subject:From:Date:From;
	b=QtAzhlDaW8yh90k9PahHO1jnqfo1IyVXd0PatuQUR6jK8OT3/IuqX7vppE6+vzJHU
	 9P6Jos/7Z4AQoqWMdZBZfnd1WkCUnbac2g3aW8rGdmX46wD1rkeLwpI9QouLvMywNT
	 JFXGiD2WIWO/vC1E0gkk0ucav/0UFCEOYa8xcItt89W72T2aM+okGzPCr7jQXKBA4l
	 opvCTFqolLAdYTmToOhyp82PyAHJcfxQ/FrZer981dpce6wvzOFGwTD1cCJ9pjCRWb
	 1Jh3jXc6vuvy2uVNwLNzu3sUcKH19b+mcdxtCnyJqq6Bgy1Ihq/OkAWVMuvwfpeZ4M
	 XcghghEYx6D6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D7C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757319357.30738.7263321343902215381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a10ecea76b670e3a9a4141cee9cdd130b8c1b659bbd626c018708145ff18c2
Date: Sun, 18 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747573193
