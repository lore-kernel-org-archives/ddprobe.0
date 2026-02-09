Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E32430AD10
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770662034; cv=none; b=dXslIiYUZhP9xZPTiXiPf604iPuR1a51PyUfImZ8ijxbsxcTU7V633gcpJLeYseKtpZswoawfjLJUQTBdrV/2P58Hj/FBtLhbvbQPqgKdUQKVxFJZaqdFqYnCln+zsJ4sD/lsOAiMC+XCbCozoGLB/kfnDQ7yC//DxY83D3tUFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770662034; c=relaxed/simple;
	bh=IqsiWyl/QaZPVl/T+x332q3LFw1g3FwV1wi+ghfa4PQ=;
	h=To:Subject:From:Message-Id:Date; b=ZPbEnCeq5l255BuuKX4uWfwpXYwGPDjq66J2q0J83yyAb96IkWrD7NDN0Nqv8b9DSmkYl2Z+SC06q4BuHtVhxaBfMoOxVQt9Ej+EHJYezCN7UQi9UNmfpvekVA/wUxLBfGQ3QkGnPjnrK+wRqdP1Rn5/RSY5hB9u9vw2OY5SjUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2dMu449; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2dMu449"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37FFC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770662033;
	bh=IqsiWyl/QaZPVl/T+x332q3LFw1g3FwV1wi+ghfa4PQ=;
	h=To:Subject:From:Date:From;
	b=b2dMu449UbPE0ruP7zb+yxBMGFwLIymXS4WHHlXUIQ99RF+SqtbCqIUXGmrMpL6lW
	 QEUkMPgUHJnU1hmMdUL34zjsZvXmBgrefeziTaCk1hKEtuRAdZuGDmMGOyGyian1HF
	 k4gNIgmLZG2LiP2Dibv19v+bcr72ftQRfdR090RhkvD34f9bIyuysvTj3EpS2TJxkf
	 MChFgifIvugnhydecPwShmVXnO1EMzLdrtY5w9o/0jqSnCNVTuPPC3zczuNrhqAcWT
	 79wHyR4K6oL5w9slbiGaAx+hw3RfDecKybGmNmwJMTU3RWUZPnqau/xnufJIiTSWod
	 pIbQ4joksGWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C24E7E0D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066203373.799.11313666673998727468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0940a36dd096ca9c32d4f6f6cd1671c689f3f270085d5e898ff0e44b8f05106e
Date: Mon, 09 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770662033
