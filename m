Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255AF49253B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769015634; cv=none; b=Ns+76WANuGgqdAITyVpEkAHXsb7UQCokVPAdblZ1fBumpGfmZs+RezagD1QhieJZ6hOh3HQzPw98CfTd8vX6tYmaowQkJg5sEXYt19Lrj8+hhMpJBaoX+xaFfVxSXbeIwcFFO8/ZDw9TIijNDqIRIc8FWTQ+OX7IvIchUAN5Rz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769015634; c=relaxed/simple;
	bh=G1vVy0jhhAee0WV+fRSjskWpAUKYT97Rpbppy6rMWvA=;
	h=To:Subject:From:Message-Id:Date; b=cChrXcR7Hkamu1unMa5EOjmG43ec1Sqty+MHJZyWNmnEROIg7D4wQbxLmpTKPcatVmGlsFFEkuGWe9pBuxqdvsZSaJq/cSQNUn+fFqmllqNENmw+c+H9PR80/tLmcitMybZH3u/cSLuvypxYZ8DyGgFPO63PrHHgdoDkMNM/tfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpWJY64X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpWJY64X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05ECC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769015633;
	bh=G1vVy0jhhAee0WV+fRSjskWpAUKYT97Rpbppy6rMWvA=;
	h=To:Subject:From:Date:From;
	b=EpWJY64X5U4Wx3pc8ZKhnuR1wdUpJP2WfoPBKRW2wfy/BG63lzO8SA5VNiCfByVVe
	 jV1NqKgFlDyC/Drfwtn/KIRbCAV9gsvk+rv2FQP4ExPv/2dSteTHr33rggbFz7Ur2W
	 EIxB6MWXQZEkuUnj3dz/E+4jYJUo9elmwQHBFig8vhx7ZnzUxGMVCKS0Bi1k7m3Jql
	 hu5ZQh3XnA/RtVAGUqBG+NBOX3wA/PucbbDvSva7b0KHLYUSsAmUzFgXl63cekw7Qr
	 rO0rIq94T6P5Egsvq53958eMl5AlevfjjF2/1jk1jxx84hG0f2HONdc2BU58D/RCid
	 uFOMeq4x405pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029AC44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901563358.8734.6847896672171127364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14597a28d65d9a7be4efcd2c84ce85c6d29cbf3e7b9a933a072761b2f615083c
Date: Wed, 21 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769015633
