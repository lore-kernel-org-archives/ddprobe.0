Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122281B1D65
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725872154; cv=none; b=h7My0lX8rAbjv/0/kd7KH9xw6IPTSGzR2qxgcfc86e4YeTVOre54+AcNFODOcSC4rYZQYScXwRC1wXwWuhMsZt/SA7o6Y7HxGYE+qtXMONZrewZx5qW0IPxL7VUo3xfgWf//CRZtm7IYMzi6OGVl5OaCyCqc/3WISzhzMCptJTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725872154; c=relaxed/simple;
	bh=d+fdy8Kb+eUSt7NeOYOAVPn3nSZKhgUELOeqyjI3mWA=;
	h=To:Subject:From:Message-Id:Date; b=l7k9+eOSERv76l2g3qJEUxIFbL/uWoQaNRT+yKKg+rR2sagvYgrApEGXKoOrZy9FGlx+nTArhNClDLJ9yw72RQaAaeKv7AsCNRb6JxBWPsilJnoxuKHzJUJKVIGMZBxY0L7kZsVMI9jdcf6CeNEwzflxlTH1E3Ii2vG+WFUpu/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/q6XJWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/q6XJWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A399AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725872153;
	bh=d+fdy8Kb+eUSt7NeOYOAVPn3nSZKhgUELOeqyjI3mWA=;
	h=To:Subject:From:Date:From;
	b=q/q6XJWMgcyKlyQ7fYzrLfaiv3hzJiJtEPcnLeF+mcmmx6iUSI6E8oLm4gQdiLXs3
	 mkHmj+C6XEVzyTBAY6e2Fif1XXuIB72zn0klxDTWCu7f5WgDiO0TyDlrqi3Yd9zWxZ
	 UIPHqxqoEx1APGBux8FfX1kMeRzdp47+o6SCmESw2pT+e5hPnItrFicJvQ2ItRfOxZ
	 la5N8HmjH5DLonZCVOijH/s+ccPkbpyXflu/UR+p1/YWpW1GHyHCcEU48FAOhR7zSF
	 UqR/LxLAUzKzJ6AAVQfzbVY72qs0RcqssREyDf/1Nnh2W/hfUvXXiKMby3IcEDw54h
	 OgSBJTADSiInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FFDECE57B
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172587215359.11990.5948967242362193646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adede30bac70f43939dbe38b80f002a3c80a8648d6dbc22ace7e5053d609f7f8
Date: Mon, 09 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725872153
