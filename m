Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1974B54918
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757075995; cv=none; b=h7ajWKApfvuZ5lbf+UrOaUhjQPEyrbQMunV6X5GpA1+oInOM5V7STqSrNlEUi9jLSZNiRM06PKOwZZCRy09CSaS4ghnOU6zZG0G5x5Qv5mgm+NtUsacJtFne0ZZRk7ntq9O5m+9XKeR1Y2nJcHTr8mYNChKmAICYxkHnHzY8kdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757075995; c=relaxed/simple;
	bh=xVscsH5Cs+CxVYYSWevtLcsMsgAA3aY1oDyDazKeDWE=;
	h=To:Subject:From:Message-Id:Date; b=P7/MwAGVRlUA7Hyz1MQkD2DpLkfSNd8YdC/DYW58i7qjoIHOXghERZ4onzsY+Q/NXWnsSSXnGj6ckPV94rgrcoTea83GsPRkobZk3FJy5nHp4waRBUlLOELHbBxUF+mgSrzzP57uLovjBr9woxaMPnnbs9MqoFFyGhPvC1/IZZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huCICsGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huCICsGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757075993;
	bh=xVscsH5Cs+CxVYYSWevtLcsMsgAA3aY1oDyDazKeDWE=;
	h=To:Subject:From:Date:From;
	b=huCICsGP/F3knrJ/R8C200e0B8LC1AEPEz6cF3ljmualade6bj3WhW/hOry2hGcE9
	 ncY8WLNYXrddC2GyNWz+BUJYF8KGtsfrqKS9huGNb78DNYF1+rkXAh7qfaplXOkwjn
	 63sollp8M7taolo0IfrNKOJ0HWY+2rCslG0UfScLW2Gr2aG+vvD63k+aD//E0fLyw9
	 0oQRnTnYf9LbSjlzgX31wCUOk+9jwsC63Me3E+0CYr87qUiGqgrgibRLJMyTZSptOX
	 z5QH1jZeOLSLs0p8NroM8F0gEyJq+WLpj2dSilxvP1n+5SDP4ezfj34CoANN+t9EVX
	 HZRADtAhfM3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F593CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707599357.28006.12912570725011468647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c23cadda7f4676f6e8033f631287dc32ce67cc822bc0ee2e40bb13d54bef7f1
Date: Fri, 05 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757075993
