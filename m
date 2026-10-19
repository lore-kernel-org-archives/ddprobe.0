Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCD013DDAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792368634; cv=none; b=hAnJnrFAoTcoEYRZlu/GAce/rNEUz8Qoy1vqfBX4GZHFuAqco2fqQboj8jWaxFLf0zhMbP+P/2q0mbyMHrAzHWDD6n1TvPzU0sjo2FEYXCAyXOV1lMxSXfFqT3z412+0E8mQadVqA2UcBOuvHLbBqsLjI24nnjISfki//6bxbe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792368634; c=relaxed/simple;
	bh=aasOJB0SOKAprB0S0W3CRm3vfP29yquM34lQfoq2GNw=;
	h=To:Subject:From:Message-Id:Date; b=hZtMh9qQSsIMZ8TxQnd0wp5hSsZrnfeG+XorQsfHSyeUhzEDj5ydk8HTiWcdUGp9iv4KF13EHEhgbQnuzIkBCyQhXIk4VlMfBEK9FRzW0CbhxzATqBvyMPaL6z1k/HZ6Ss4nxunfb0aCaNVSuUe3mBPh6c7XMUyGP3a/VWsTsrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVCyhmcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVCyhmcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 041A8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792368634;
	bh=aasOJB0SOKAprB0S0W3CRm3vfP29yquM34lQfoq2GNw=;
	h=To:Subject:From:Date:From;
	b=bVCyhmcf9K0bKmSssObEdUKVcXciuBOxHt6MMdmSlgvsE6yRLmaABGlHbvw0bpcNm
	 tz/lPi7i/BN+UGb/wicKVQy5HdLGk6v1rNwGMEdHspGK7IZ0EGekStPDYz9ZhBGHZy
	 DX65kMACDEp0Qs/O+9jAO7wyTSccj2ioZs3CzGJKPkAGtN2D3is7P/0TD4ZpCN03tv
	 YJCInJ4MNSQlHo4mo2gSrYBC/bGBt9vgs0fEEURlbwB6JzH3kwmakD7+tPtrZGa1Sg
	 gni99C+ZUBD3L/kYeh8hj8T59OlcdD/4c0I3Z8vaKs/6hG2CvJjsczzYUCex57BbaO
	 Kak8BSAv8YD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA196CCF2D5
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236863376.14146.12515457844377758748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c449b2e49219474b7515dd584075fb8bec9fe18b6050e8c24a3e4dacb66977a
Date: Mon, 19 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792368633
