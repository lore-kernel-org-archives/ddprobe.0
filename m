Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4761A4C6521
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791545434; cv=none; b=cmXmJzdbGy//jnzEEpi6IOxphVmm5UkJRQMfl93c7+68MybgnSCv/Qd/SoTusdl8N6uFo/0WY4WDy16fK83eMiekgQlWb3JsdB47DSxCvCzUboHiTZDhEMvlZDQrTQA6fY4XxigFNZS7k8KdUOCNM/wnvoYcd8EeSWGxNTJpajY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791545434; c=relaxed/simple;
	bh=yIS99jXOqHsLuCfDffR8uIXmXQSBpVro6Oct7zKbT6U=;
	h=To:Subject:From:Message-Id:Date; b=cI6pgDWC64yXQFicNQYR38Jkuh4JP96s0WyTADSrmGeeCu+FLVS30FDAoVrI0iy+WX6RfDZnNHD3mJJ+163i3si9R/qhu6nLAHpCEGzC82lEop4OJklxxZOBGRd6R24numlOL8sXG/lpSvOaevXXWsRdydZVJl8ENwAwDFGB6q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biwmwk02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biwmwk02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE31C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791545433;
	bh=yIS99jXOqHsLuCfDffR8uIXmXQSBpVro6Oct7zKbT6U=;
	h=To:Subject:From:Date:From;
	b=biwmwk024qpeMi687+PqslaiNoMf0S6z/AnwsSH48uHgGFmWX6KcIkqDfuzErTKtd
	 QtRGL4365PzMA7ixd4kz9HgCBde4KUMsIcY5c6rczXPQU7YQzYStI3ghOega1NZ/dK
	 SSOApAup6DvWy/AhT4JHDTbP0KFScFpFtQ8Jhz/RNxHVCqY3NlqN7S6W1OApYsPYTo
	 tAQCz5v0r2oyrn+8F163pnodT9PXrIHJ2oVy5eVVvp+bGksaLFDpti7n/XDXJvZpjb
	 Qp2Qaf5OdyFsal9a25mYWom4Thg9+VDQEmnnY+nQo3H7dXpLHoxuQvc3G0o3sfv/SY
	 uwHHGgbCm78EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B71CA6018
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154543368.22273.8875750448397154506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3da15c810a35a27d5c386c5f207470adfda6549950f058113d01cda515b3dcd
Date: Fri, 09 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791545433
