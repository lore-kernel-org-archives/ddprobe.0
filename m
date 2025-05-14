Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324521F30C3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747208394; cv=none; b=g99ijAoiGTqOdmMqNkXIgMoX0SAJNQIECCecKYDbaRhTS9vc+ItNW+0oIHVIdpKgjyynehP5pD1iJtC2eEG/Vqi7GG3Aq6VP07iRU60OzdUGNKylAvDzN0YbTvw/94ZHBFODuYW843eS1nJJ+jbqaLTo8Km+lDEUTpbF+uFsTfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747208394; c=relaxed/simple;
	bh=+w2Fzsc5xfVrSNurcGZgdQU8DXEdyWvA0S9tbUzJLDQ=;
	h=To:Subject:From:Message-Id:Date; b=f6KFX4FVN/D9aj6oIdFa1M3WJIZ896UcUvDPetakoG47ztFbp/YDkWWDj51GuiGLBc39++Eqr4c0LqdIcUe8tgd852JKaMTSpND2g3a5N3vuWC5ibcHTpMOUJILMNjNJBRzQijK7dRjpFq5UJ6PojMech4BqlQv1TJVkZZdcrdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI9H+pZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI9H+pZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F745C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747208393;
	bh=+w2Fzsc5xfVrSNurcGZgdQU8DXEdyWvA0S9tbUzJLDQ=;
	h=To:Subject:From:Date:From;
	b=OI9H+pZDMgalfXj6PCsH58jnrz1/q005dREzh3vjgraCEiLwKLjV8actdD3my3EOd
	 xBGCI95nqcbQ2LreNo0QD/ZlMMOvSwic30qMZpukKZi534mHsi1IhmEtvU3LT0gQSM
	 H+ti0D1b2JxxSrex1ipDkhhceHshsfxz5N2DO2cvTitGSw8guQovTY53Z+PqsTnSrG
	 wpq+isxr48A3+cNoDXjtuqs4rYu1hu66G1OLc1BYdTx5kExZVnpR6ZBqNXQ4zFgfaz
	 eNZlVCP6aGFjhIZfCWu0F/DbU1E15GbmrWMg7Mw05bp8a09rGZAUmq3k3o4iIFycRH
	 +ytcaC5VG+vDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED69C3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720839357.31705.11373822974853737507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42a1b625d717f3492472b7fc5de8d178ad065366c8a05b67d7acb466ebcde32
Date: Wed, 14 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747208393
