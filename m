Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D864B254B18
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778580033; cv=none; b=c2w2JeFEIkBzn/9rlaUIEyJ0lUkgUbuReb7nZMKBWcii4rQlDpGnl3VSdbcieRzQ68JdtvopGpKgYltv/jUXDKT2brZYmchswdWINxbD/QyUfM48ZRBur31+aAyqXmrGVtnY0c3BIbQDX0/g6xirX1H8oVL1be/SAFCK//arEsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778580033; c=relaxed/simple;
	bh=wNDU53hN5w8KUqT/NvkTGWkexR4AVyLNN3Hl+Ti/zF0=;
	h=To:Subject:From:Message-Id:Date; b=Sw8LeOC/AHmRy8ltn4Xvb8J4TEuA5hsRDodC6XAkIEMagqJ7LjaL2mCe3M+xinIViS0EIX1LQthunc6ybps8Uf+h5pop7gZm4YH/iqHXxmnKeIE6nJEQtm792xsmXH0e1CyXA9yj4lebU+vzVjuRSNRM2G7uE6chKbJt5xIh910=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC+2LEzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC+2LEzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEF0C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778580033;
	bh=wNDU53hN5w8KUqT/NvkTGWkexR4AVyLNN3Hl+Ti/zF0=;
	h=To:Subject:From:Date:From;
	b=RC+2LEzw26GPk80K0i/78d2fWCoq6NiDvH/SA/uySQMWyNkeRrsx+Upp8frvga9ev
	 mRtfUXJ16FWxLiVPrwXhn7oH0yVDv0SCRsFLaoxF5piO47ysvCCet+g3ElJZ0cA+Sq
	 xCAviqJuroz8aNuEgiYgupKoiWWZigSkwTYJnGMc55oqtD/GY9vDS124sHLcDwbwbh
	 8gv+ty8bcO9ekVl2cOJebhtULwE09NDZo2heCipquScxSRq5uSK3bxkfnzP1YbpFo2
	 5yzsA2L4NeF9eJBB31Ta7S0dPg41IMWMOe/O86naARCo6g38bAu13619DF2jZWq3p5
	 Myx6DXTUR1Ccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE21CD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858003369.9614.11113101558464572791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a7bbd8bfcf107c7e0b5d3902d1c6d293064bfd6ec111ee617ea9cfb3a88c32
Date: Tue, 12 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778580033
