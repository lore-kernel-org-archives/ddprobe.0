Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0A13F0759
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779182434; cv=none; b=uA+VXAd7tam7S4xmfbB/FOgfMde9fC6PUNH02ZHd3HVJleigQOpx/UWvjV5SEZ35qe3QScsoVxrtpbzAMH0F/0u/Jv952zX/gLQSlg63J8PM0P4EtcMaKDDNqtZutY3f4GJurW9+kokmIxOYDNZPllzu3/NFDBr78J9bwPFu6rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779182434; c=relaxed/simple;
	bh=CX9Cq09+uquSVIeFyV6AgBaxwyB/MbFHMiwscVmnEx4=;
	h=To:Subject:From:Message-Id:Date; b=tDzdiiSpJ1ZUgv/y24wjjUocYuboYPW1KTdLaoR09/e1dacL8qp7bvjU5r5tXo6cJ/9V72pFcWc16pkx72umk3YWcOz4weHbnYZMoa1ggkpOG2qbihRoyyuV4pLpkahR3KU2OdV1wuURYAJ6ShnwnXXse9e1hqUmoOL3D/o3ljY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDBxnh5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDBxnh5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC398C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779182433;
	bh=CX9Cq09+uquSVIeFyV6AgBaxwyB/MbFHMiwscVmnEx4=;
	h=To:Subject:From:Date:From;
	b=oDBxnh5y1XAQg5OBF1tmOZeBpPo2OehpLyae0OHvRDUi/y1f1r4mVshgYhdwx65ev
	 l7p58ZfKef+/e1DwN7QR0FXJxw6VpaMVtD3rW8WSo3dZxbmrvMdMA4v1+TgC28ApcN
	 qKJCs9w9x0K0/wMkh7HxBlODzXooD5nfyg89dQT/kiqFkmyIl4tl46kZv9F0hvx+Xg
	 QhsMLDUj7y+DQ01grFBvNwVGxY73PrJbpKLoUz/BGhmRtuilQXEIaOg6/c5TtYmYcA
	 9XRok+sVLIbaIKT2q/XX1lKclAo1JYCMgeEfxNRHzU94MLzUt5uwTSTxPSdUmiPkCn
	 vVv17jHVPCTaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB54FCD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918243369.22082.11622047254716692572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6718eb654a2f884e331c127ad8003f1a0b2edcebc0977f3fa8b2b3351709f10d
Date: Tue, 19 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779182433
