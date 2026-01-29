Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CC22BE029
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769657034; cv=none; b=P7K/y5CD5FdgjVy89DuRXDbIw5HxWT3kDw5HGBhAV9hAo19SxqyiwBi7sB9ZTT8x7w5NA40KYyJemPt4Ey3GoddYOE+22MaSLeCp8EgxMKvebcMiFmKoGnUaj4LbvDH8vX5b2ElE9kh12dL9YsyecQWK1+d6HsbN7Vrw+ifJ0NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769657034; c=relaxed/simple;
	bh=j7o5en1Mo0MRnzEDr2WP2X4Dm+/r5H3nAVD9QF2Ckls=;
	h=To:Subject:From:Message-Id:Date; b=GOtIWQrzRDtNOnCDb5pvUPqa2pRELhiK04aHdGJyp4r+QmzFrw3llo77TKG9IHEFGdz14XvIPbz1fvxvKkzmRNBRYDtdq5dmwky0oPaU+nudepZt7AdWVierzVpTlsWIEj/SZiFjpMtgsikmL2+PehFU/0ZmrACyhpJde8ZX7hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co67NnoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co67NnoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769657033;
	bh=j7o5en1Mo0MRnzEDr2WP2X4Dm+/r5H3nAVD9QF2Ckls=;
	h=To:Subject:From:Date:From;
	b=Co67NnoMuafPmSx+3Uzf3ctiLM/bSFC77vlfEiSnNOPWgSEgwGZ7nlGgF7Cwk6oo0
	 8InwFHhuZFQRygta+VFHCmuHqpO+4m8577YGFn+BVPZrMg43szruJfOmGWkLgSEp2x
	 Y9Pz8uRubK9adw12eazbhd8z2sIZNxm989T7AG1aO+YGAOM5C4SpnjI35iDcXKqkG1
	 5D92+sBYitgamsdmq3ivO0CAaadcnsoyvpYw8pDTIVe7sJClUrb0KtoNC3ygex78Pz
	 kUH2qy7i/GBtx92VZ49gwNXwgtDClYxK3VzKRBKYTJTSspBrmDLQYGKnO7uDGHv81M
	 mkeZJ5nTq/vbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFCD46C16
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965703358.8642.15853195107722923329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a77caa5002596c41b7a0d013bf8d776b6ed68617387f0db59ea76e92ecdd597
Date: Thu, 29 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769657033
