Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C750C191F98
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751890193; cv=none; b=BhA7XkM83WLwNJmsVQBJHPgZgC3CtO/x9i1gaiKcZKuqZ3cR3agH/k8wMZd9W40VcdER2uxbaJxg/hBNFWihLEjq6W4TPBIxmgKVw/ZfiRqbLTsU1d3ANWzDcMWSKtg7OOK1ZoY5BXzCn/FwHwky3gZZVTHsbptqTzF/F9ohlBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751890193; c=relaxed/simple;
	bh=p0WGMgaORGB1VUtS/RbXKesSpynXf+ZAyW2heBRpA4U=;
	h=To:Subject:From:Message-Id:Date; b=OVWDY1Xa9UrOKolG/ISzmhRp4cL7OCNXu25otTKrevrW/2mqF/cEPjNM7flgBb28v0R1XU+obSqQ4/SpT8p/m/sq/wNDE9djaRRdm3v7dfkewZKrZirNptaVMylQUO8dQR5PKPuuvr7zXgC/OazL/rgAb3CMGtrtH6i2bIz91jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMgdB8V7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMgdB8V7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D931C4CEF6
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751890193;
	bh=p0WGMgaORGB1VUtS/RbXKesSpynXf+ZAyW2heBRpA4U=;
	h=To:Subject:From:Date:From;
	b=nMgdB8V7WP4rJPKt5DSINoCIeY/XZBiYQC05FKLBCK7sBf76iT2b1pggKLNYyNgMB
	 un4H2AzhjMUH+gde+nDpHjJAAbACofiAq/vbuSbhDLN7VPhuBW/+0U+ymVy/zXtmfn
	 PnIQ4Vg0U3EaMlABfMeaDeS6zYJDnGDI8cTRdw6QxUEx/TZEIjuB2/Anl1Ftt3L20s
	 /TcLrM2WPUuZxAzsuM3cknDVgs1ZV0uOs9tpFTYCB5XFZTIu8lcUPnjCECKvbSOSrs
	 dPw0P51q/5QXFGsyzVK1bIsEQFv9HRW0gltWaR0njwnhcz1JSGnGNb+J9yWYg5Xt9b
	 ZSznS0p5nCXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE69C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189019357.9417.2077152917670761416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b024c9e84162a812b9aa842b41a4f8f1bd7a5a08bac57b00268adb2a1e23779
Date: Mon, 07 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751890193
