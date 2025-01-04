Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17E077111
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735955154; cv=none; b=cZwp5Xx/6E6n4Qvpl69/UtbiTQmP5Mfq0TxUHLNRt0dbpTHWLc61Glxi+qihEurRkSOv3lrRnXfwryPrL4bf8ZrVul9Masrc+Btvnu4Dtzek8Jhvy8SjocXQQxbLYjqjQEg8ABZ/dd11O3S2RGNSLlLmNB/9AmLWNB3UoVliX+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735955154; c=relaxed/simple;
	bh=5wuQmdDREPrczhhjlDNNX0S75r/GMJ7uDUEqUZXtRSw=;
	h=To:Subject:From:Message-Id:Date; b=JVDAarC1aJgvS8Lf6v3ZDlUCnsyuIi3i4PBAJcuiiu1NBrwvVUjcakPwEWyHHEV/6SftacbdfPyvRxTtcW3X4XxhhQOdYxY4JoH+Yy/K3bR6C6mV+9RstCWHQxDMU9Ep2XDQdBMkkWP2h46529ksx+n04zsuvKWfR7XnEugV0EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8ICYbvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8ICYbvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5129C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735955153;
	bh=5wuQmdDREPrczhhjlDNNX0S75r/GMJ7uDUEqUZXtRSw=;
	h=To:Subject:From:Date:From;
	b=A8ICYbvOpid6gr8Dg8VedBUdRKROWv/DWug5OyE7STLpb8bO861D21roNjxYi3c8T
	 Ry29XWbe2xfu91iHpJ8QVUxogO9kwfIra7uPIZuVUlbs5diDrYN6fThfvCzh2WCESW
	 kzGaOe0zJ7xbUjxHPc6CgVX7oeabFWTvxLbTSdKE20QY9zo+WBogB2lNNOx4Xr/ZmZ
	 7QEcmkIb90vLNkIlVfbhhz6jefZ6q0raivLhAiwqWeDg6MuSr3Conwk+ugcptWsu9x
	 OVCmVX8klc1bXXuPPiDE3j8XKHbj//McSIriphspXDg8BKK5c2nJ6ukxy7L6PAdyNM
	 wCdrEfkZMWiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09F7E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595515360.12518.825220795950810170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419ee300958886d96acaa64938b87d928d71816afdba207fce854ce518134bf6
Date: Sat, 04 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735955153
