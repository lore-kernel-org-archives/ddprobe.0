Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B94A23
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755454194; cv=none; b=A7j+kcUL8gV/TczbjHulCZ95wgQw3dTc066CDBsDf3vTmpU2sVjzh8CxGw3b/DJUSVOPxr460ubWlmlAb8wIqPI/TPLyNxJOHS3MVZdoLNb1u24RXIG7q334cHzGl2v46yg2Ou8qm/yena/ZyYrNdODh+HrpbtaUxmztOQEpW2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755454194; c=relaxed/simple;
	bh=vdunNXiNk2Q6RD1CO7ngx0uyy+zPvpWhDZ3xc3P3Nrc=;
	h=To:Subject:From:Message-Id:Date; b=XJsMImRtXhYypynt27D9jl3fzhdwKDZNJUSJ3etT+y2nUz/7hVe8Fs5p9EwuANNDAxMTknPbyMh4WhVluOzF5EZkNFNtBKd5xI0/1Ddg+XDM0woSRAmUi7yoRnPO1i645Cr50VqVehppxXO5Tmv9YOCn1dEZ8Eu1bZDXHUXNo9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhVjEpzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhVjEpzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755454193;
	bh=vdunNXiNk2Q6RD1CO7ngx0uyy+zPvpWhDZ3xc3P3Nrc=;
	h=To:Subject:From:Date:From;
	b=LhVjEpzclZM+lNHjeh0f0B4qOwpJxDqREOG1Hm8CJwqWyKxBFVeOTFhSXaPbQdvWw
	 BEYcftO/3MlcKOqU8LZY0qMpi9EBKdx7PLil+BJYYFF+FzErOCwesAqvXXLnxnV2b5
	 rMk0OsQPnVN1MJO5z+kJmuoPz4K1pPZhgT/IqQnUzlzf4VhjpEBAEtL7mtaKwVpQB1
	 rotrlhow+V6XfzXh68DedlzkweFNWP+LxcSmdECDW2svQCupbbNIVba1njrdhFAX2Y
	 Wzibdh9w1avaZCc2drMIZZSMfzoWgCmBFcn2A0N4ADqdamOCds0Od/U+nxul8NuVpM
	 cXe9DquaNEB8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FDCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545419357.28143.15075831977282366087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd398dfb5b20ad77f25777e0306709a3b53c8f36fa0ccdcae45fa7525d3d717
Date: Sun, 17 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755454193
