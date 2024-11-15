Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3797E7346D
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731711954; cv=none; b=ipMpDvNssQCxM2mBhKYajkdWnVv+HesQknw0rwKFqPQvQyR4/4KPSw5a02W06e0dEaxmSq7/6ONybx6uzU22g55Cb7NDxKGjei4RN/h+iSNiOM8WMi6bEFugJAmmQeIcPCv/bfnrq+u6D2WRSeBxQ+PL/JvH2PQK1dpr0DHJe3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731711954; c=relaxed/simple;
	bh=trorkEE3O8z1BJgvptxfdPgjhwW9aRu2SYxQJav3qnA=;
	h=To:Subject:From:Message-Id:Date; b=TJjty1CwEbbqoiHTcndg6c0VZrFCZZ68PDpS7lBBSQIDWUqz3ThZMDUYoSpQeJUk2bfdC2AtVwWSZYvKzFbpu7wiYIBYHNwLNdHhA6iDeJ5nVVJlAA3sqWuPPAOlOg2WgPRPxKL2FuKSbXihdymWdFlsSgYszWqWEiiti+H6MlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBW3heda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBW3heda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B445BC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731711953;
	bh=trorkEE3O8z1BJgvptxfdPgjhwW9aRu2SYxQJav3qnA=;
	h=To:Subject:From:Date:From;
	b=DBW3hedaZu6P3Y9XhgBbyyLh9lvI+WPVxym7K9wgfsu0kbFlEUuFzkAk+BZk6K4bk
	 4EwLQLY6B4h58F3gXurVasmQiaZj2OsPdzddTQ0cyATYeE0/3b5CujrQh0W9RHgHSA
	 9iFXkzSFpO3p46EW3f67xlvjGs5yqFUMHwQL4Lt07/jXAPvBYFYH0UfT41KbtE83Wx
	 nndWIpyEJIXx4pBU+fVqBKgIcWsiXEI5yNnZggG+H/xJjoEeWivH7Js59hT0joE8R1
	 rDis21Vk+01bCLsJU9Z6s0LSLiUpwuCSvl0htWxQy9P3IFjZRI3sXdagLSp7vIcrsT
	 s+OffXSjazZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EE7D68BDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171195364.9056.11041709531792540562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c8bdae7e7c1d8f3ded83c289c662996e5bd87d4d28f03ce36923d7f0218779
Date: Fri, 15 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731711953
