Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1673B992C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778605234; cv=none; b=USEu+zDiyhC1XNVSVkGo5v5vrkyf+QZIHaf0WNr2PaLrEeslSSOSbOY5uAyH+Ous3CNmqdK/QfXFjKPBb8J3Ugp+C3Y2TyWMdhivd9H9WnNv6JFTkqLdP+tiepC0mw6qWU9RVeoun/iGnPkPWSrAz7CCLrxW+vkjKKnpYLrRlHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778605234; c=relaxed/simple;
	bh=ErbQt8YXEzf8f5ZWyT6sT7vXL6DsJn9PQeJEOxvNEMs=;
	h=To:Subject:From:Message-Id:Date; b=bLd/9OSwa0QGF6BeIGW8NT7f5b5XTiiso0TDPq6xcp2jb5afVjsrby1LYjlrX+bciUSO+V6cC+ZRPYw8fVuVKrXCPPOxsjFkKpZyZYOI3/evwcTYXDU3wcy6xRbLUHDP17aLsOAc2stFHfIGCfYGBAwDBS83vzDH4vmt/2FQ1Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Voxtj/9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Voxtj/9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B603DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778605233;
	bh=ErbQt8YXEzf8f5ZWyT6sT7vXL6DsJn9PQeJEOxvNEMs=;
	h=To:Subject:From:Date:From;
	b=Voxtj/9Xd3Bnufgino06UYv3COmMX75lP7c1+FM/vWr786HKthcZAfv7esjg1tELf
	 XZs61lwtz80K78WeEsydEX9KzSeXZK+KpqKnvUG0e0l8f+PenKl3Lb6AkHuuSexKTJ
	 hIQL9sL8YFuDfWvdf3OSFIEg9k761UgC7nNGwSMYb5aLtIcjKoSeV7tooYl1gGfHwF
	 GnxsflOBjKYMyUFDGe3vmzQo6rWh4eKRpgHK1sSvKnsKjfiOCjl8e6R+hL5aAOqQOK
	 0MJTVKBlLco+qTE1+q5BMv/1TLl46XEOSogyJXu6eDaiRWfi8ltgtGfai3S3MBIVIJ
	 wd9UF0fvIcfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF7CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860523368.10617.12680757105988658399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8becc9686f5d96c6b678fb0545c9874fc62318d7ad4dc936fdefad210a411c14
Date: Tue, 12 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778605233
