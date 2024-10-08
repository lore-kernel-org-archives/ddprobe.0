Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BD1161
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728345954; cv=none; b=K/DgVhOSGVoLhOF9DvP3RJCNUsVup7J0aOtjSU1wToeg2dJACv/b8a1K1LgD4BU21h/TEYSgXeZ7aVF91JJw3Cj9JjUlbvHWmVk8wqf3rlWbh6jkUyiRNG4R4/94zwQtZSoe/iA8NCW7R+AnBUBNgkL7DrWblQ14sfwccq9r8Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728345954; c=relaxed/simple;
	bh=qmpyPxOo9OCZ9Dtjnahm6vk45GylT7PMxUyOfEY15xQ=;
	h=To:Subject:From:Message-Id:Date; b=pRJZ34asGFkYUHgcfGbhFRvF6EeMgvsSjcoIYrcA5XZLVlXpw/UM7Qjomi8vIWOIDlEAUywwWBaB8JyUC24jZZqfgWGkO5JkKMrMy9emHVUlgwesAfRYTKOg/zwl8Pdm8wbsqSMqnPE9Bq6ZKb/G33zSv/qpRzW1JVYyAXBnC0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fujMX5WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fujMX5WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC3C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728345953;
	bh=qmpyPxOo9OCZ9Dtjnahm6vk45GylT7PMxUyOfEY15xQ=;
	h=To:Subject:From:Date:From;
	b=fujMX5WI14qYFYugBGSj9DTg446rjpvnRgqOoyj+ZMXkI1iQprhwtICUt23yt3qDp
	 lsJ2Kl64QbKUMGE+d5NMDtpytkFFJvA3b2JV8O2bTXmBKk9tvkOKIzxCtNNQ+FffM1
	 eGp/gUc94AlVQBdupOYZlhXkkZfseNT/2winnDY4sEGlCvNL70prDWjdnMEd27F9Xu
	 kMU7M5/E6VxYkqTSIOxyGtbCIMP2Qi4ibm95rJer7+7nVwubAyfg+lMYY7eHFFmFv9
	 nsMDAjRe15rJJkT3yvIGpj9jKjQFVeq4F/UQpyovzxGDYhwxGBXLW8FGT17ugo1VPZ
	 uKEC7kq3GS/1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B61CED24C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834595358.7752.13436502198716172206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0506cb9e84bec49d309f98626437e6b4139f72ef39efa0592fa0e938d0fef30
Date: Tue, 08 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728345953
