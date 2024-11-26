Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A32E1D54E7
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732613154; cv=none; b=J9gLiI1IQdGndjoQYpaT6MJFuGo741ZmFV/fd2eBroD3163fz0APkWvlM4E+XG1MYaYebWMsJPCWBEue5mlPR+stwsrVa/vBvpUvKxkkXg9HMkkBnx925h0MU2SxaUV8/1//XtOSIeyqkkphYI8bwD4Ymr1pOrk/JiIyzdfG4CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732613154; c=relaxed/simple;
	bh=8s4v7O+2q0FeE+E2xg4iHLI/XqgtRreM2sD0IyqWx98=;
	h=To:Subject:From:Message-Id:Date; b=qcd2RsQGwHuG67358zy4r9h+s5sF5Y8+AHiaQDEDqnUILvmQid92wsLUb+drfvVbgbUgpDAqGvevFldJshFruIny0nvArJEJwKOSlQoaI+Qz3O4ZVx1aJu41T1ZQ7BrjEt15q1fOgA9UV6DPQejchM54MvxNIzOqYg/1zvM3d40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M35k7xeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M35k7xeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDAFC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732613153;
	bh=8s4v7O+2q0FeE+E2xg4iHLI/XqgtRreM2sD0IyqWx98=;
	h=To:Subject:From:Date:From;
	b=M35k7xeuXSKWWYy8UMfSBF35sti5z/UzASNBDHfOtp8Q3TguRUo7J10YMfsMW1wUW
	 oWGg5fNWbbOvcgIadYVzlIzPCEjGIox47JZ+jUToWWggirwxISSeEfKSSMZ0VDSWo0
	 SBvaMeGMbSjQWx2QGTQT2y4idO9SXQGVZ2dB+L5LdN4WEfAwX4ibYkuI8/Q0UlM4XW
	 KKjGICOGmNE7D97BLSnmAOCm9NfW/dDXHhOKtBMr8kCwAfIxwc6AUu2Bin34zdH5ei
	 R1ZOdToyy8CHvvw629E8XuZOP4JZ4YxlIC3YV4gJhXlgK0759Ne1bzt2kK4AFkF6DE
	 y0HDmv+wqZAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99388D3B7C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261315361.5233.5959287265710562351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced316e15f6204ca9579af0df41452fe71057451f2d0d3819c6e86b5dfac384f
Date: Tue, 26 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732613153
