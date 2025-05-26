Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409A325569
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748242194; cv=none; b=mqvMGnF6voM91yzm8F9mckW2NHWlap1qas2ENc+H3bMi623ZLik3u3NtoaXpjEwz+e6IcGPFSgyMsId5bZ4GiejaSLIaNGn4U+gNWZIhmEVkGhi5luFaJU9qBe7kpEj6PUrQexT09w2J+tUpEmFglUPqrGocFaMJ29nGNrLeYnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748242194; c=relaxed/simple;
	bh=dZAsArBnXXUODrtZPjeQOy3qxZPVNXHW3c2QXszauRY=;
	h=To:Subject:From:Message-Id:Date; b=j8OSyHgOAhHvGasPRUJXJLAwQieEarf65K3onF/m1Qtn8tXXkduI9goKi3JohV3EXI/bXsMGLEeOriTageo6SA5esbvKwvQ+67eAvFwJGH86K2U0q94Saiq0XUu4VrjkvNoKzMtKzvfN/DQtyWTJsbDPYxrL9O74kokMCpKgmiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8KY5JHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8KY5JHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDDEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748242193;
	bh=dZAsArBnXXUODrtZPjeQOy3qxZPVNXHW3c2QXszauRY=;
	h=To:Subject:From:Date:From;
	b=k8KY5JHnEH1keqxKsagIAs2ycuv9VRne2bGvssSV7w2f+sj7yfEK+AwyW/3ZvCD19
	 kcLQ3hgzuwtyvaAI7GLVB6clm+k/fC9RVbhXY+P+XJJKuaP9WFcfS9IRx7nDCjktgu
	 0H/qpgwv0nMMjv6fIHCQmG/8jqq/elw3Em2sU9umqa6yp2vODZWFhkT5ZpBQsG52vz
	 DK1swK5pq4ZyUM2P0HYrUbH/zlNIbOkO4MpNi8q7JxylTsiOlZUmm8pwt/wPLU0+MB
	 OGHDdiFBBSqDhpoDDp54QtZNfcKirlJFDtLlI/swa8KJEB8Ku32wookXu/S2bIVXh5
	 aUZI3IqzclUYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D8C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824219360.14934.1197841794490354548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc144cc5b678e58aa3901e3dfbef6348f21ca7c29376904b7f45e080209c638
Date: Mon, 26 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748242193
