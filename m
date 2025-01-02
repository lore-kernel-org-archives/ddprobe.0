Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069B33EC
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735800354; cv=none; b=SQdhbOk/qAvqNLFMfQj2yW+UBt5BlagE95whA3bC0vUXjpc5sfbXUx7ETdeUPG1Outeq9DgW9pipzU6hZZfyBgYtsRfk5/hrs+U476BZ8+dTtEmNmE/x9LsvNK0dCZkFhPOePjief5HrxsvVpZN8F3R5CJ3NNZzNUc4yfVi29u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735800354; c=relaxed/simple;
	bh=CBe0oTcr4ezesFh6878F4gw4lGA87Qy2FVDN5mQe0h4=;
	h=To:Subject:From:Message-Id:Date; b=VhWRi1fzkbLnMsmX+Ws2sztX9kxWSQySae0D/VcmnjBD5Q6L8NDMH5pMY0QeeiN1V3owWsZ1Gu31FjZ87vbq3N85hd2gpsBJpTlOdLiJixzJt5KVp5L8L1Ry/cEFb8F/qmC463FRZ32U/fqUHyZVPciF5VAWhf3Mxjd4HcAjN9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGp7TUHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGp7TUHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5EC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735800353;
	bh=CBe0oTcr4ezesFh6878F4gw4lGA87Qy2FVDN5mQe0h4=;
	h=To:Subject:From:Date:From;
	b=PGp7TUHPqVz3kH88vukBvEGJzGOCSV46cb4S+H/MC0TpZ1AGcIGfHN4jNX3dePol4
	 yVxp4TAxlm0bviNa5UISykFAuVc/GPiCC0ZmFpNGzL2laGnAH7okWZ+yNtsI1Hgko2
	 Zsf0vMT8hClKLcbfy9tSUS/nbtHN5w/9RmY96cn+2VhO5QsmMYf/tyzpfwT8zMOOwc
	 EP6GUfreDE+Np4k3x+lv3Jle6LThheU+d8LI7MvY1jmvkusGoNwqHRJmJKbxzLMrNE
	 Ssw0Jn3VHVjYDWLnRTNYBVIfeQZbWc65KQqClcQpc5a2d1DCj1ybz35F+e53b9hkmz
	 vodGsq0dfJMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95669E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580035360.5556.6702395588030730409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ebfa3670034ce6e447571e6f51f0398468e00b65bbf1e9ee541fab92948ca7
Date: Thu, 02 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735800353
