Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242823451BE
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757080194; cv=none; b=XS1+7LhlpZHlMFKkNFG28Dclq/GdXg86LnVRLLDbA5IV0pO/YBSSIQ5ckuOjzMar//XxgrTFszndrTFY88hyASdmnNbgZI1/B3WJQiodWPfwY/uKkf7vBGI3kFm5+UUF+yzfhqK3VBDert03QrJd7/ZEBQtktv7jGiIIhIgb1nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757080194; c=relaxed/simple;
	bh=dESE8HtBkXp5Koi4EsMa0XuqpPooQB4NIGxZq4308t4=;
	h=To:Subject:From:Message-Id:Date; b=WVBwyOWK0aid3LbICxaB8K2pODnwL81m2GhyYZPkrlMb6UFZtnQibY8axV91qVyF5IBkI96IVUOyANLLolj0iqo4b0LQwTE85O/bDFe4ZA5OBKTO+b8MPyouXknDVtBNmjRNpWhTnNxoGgGzTAwauV1Umb7xUV0I2s9Lp0btah0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cq4WtOyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cq4WtOyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE8C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757080193;
	bh=dESE8HtBkXp5Koi4EsMa0XuqpPooQB4NIGxZq4308t4=;
	h=To:Subject:From:Date:From;
	b=Cq4WtOyMdRP/1Dx49fn0MYi7to9m2y6yW7BlHtRS/FjevksYyvO+SkITI/wBrIYea
	 qmu/SrNMSmaBFfM+8ryzAzuSBtpKQVUMHeTkEYS7hIh3RrS22pa+OlZIHBJe03+mzt
	 rOnuljvLvCY4PDIbFZg3VC2gJUhEacdAFYD/cap/w5o9qOEqI5Zcw7Pk4ZA37edBnU
	 3Q8K9cALyY83vtv+VRdMElMWLkj19S1pE8rXPDf6+VyjClFXFZesx+/aIo5fn8nSJA
	 HckKxTX1F9AJl2fX4myVf/DOUGjh0RWC/VkNdUqVTyDWePmCARBYLHMn3+mKJgRFJt
	 iU5n+t/apEdpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91022CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708019358.2548.13153278650618859844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eac12b6ffe59857c9d5c9d334f7651809af8a8238979b1b010b86684adebfb8
Date: Fri, 05 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757080193
