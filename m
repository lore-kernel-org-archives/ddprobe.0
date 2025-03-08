Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44184167DB7
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741446534; cv=none; b=V2o6whwE+xwmDLzWAytfRLFai8ha4Cw8f7QWdyAUMB6q24JkTUIwIcx/1VPGo5E1unVvoqC6csECbiFgjdOMaLUPd2cA+upjwE42iP99vfJ2cxbn5FBDVTTU7/T2MnX0TcU40KkzQhhw1xC7TRAWDxs59NG/RlPhcPOpUKqvQKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741446534; c=relaxed/simple;
	bh=GbcOTOFHz8JQaO4706F55b2wpdNgSZtbBxoO2tiFXmM=;
	h=To:Subject:From:Message-Id:Date; b=tnDpNTtlWaLlyiktZO1xUtw269YH3i1HHmzJ53rPTSXUWiAhq0zhcTz2mr3J14hHi3bnPrWS5++FnoifnRwFZ3BIbN9prRM9hJ7jR+ppgoZki7hYqCHcBgz+Ewnjij1NYHxF/sEvznpxd48MMHlPXWmi7IBbinqpmmqoRylKBFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYlR9RGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYlR9RGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4132C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741446533;
	bh=GbcOTOFHz8JQaO4706F55b2wpdNgSZtbBxoO2tiFXmM=;
	h=To:Subject:From:Date:From;
	b=VYlR9RGx90xjuFqEzl2KKgYqFmU8QUVKlVjvgmB94wd+3LKlOcgBf9hnlGhVD9Nyy
	 CmCCTUukOih+KWUD0auFbdTcWZ4rVLarbT6U66K/JQ83pv4VpNLjSVRXt20lHx2rz4
	 cxckNSyQCoiwyxN5EM5ae+wIBJvTk/xwSKrnbgAAUJ45bWX8QPLs3RC2LZppO2ktqO
	 jWnxts0fZznqsbbKbIUf6HP2VOhbk51R6OOHOd280y9ufWclrbM5S2p1AcQWO/Flsz
	 Mnpx/kyaN/BAJYxib+E2smFrCu0C4VxI7WxlY1mJiANAoTcM6TeibKvRVmeR1jqXQs
	 ThiUmVKqMqjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF9C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144653359.32453.72653995481282138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fe6cf45ed8306bff62c5028a174c1712dc2e5d1a87d838dd06e5dc78694f99
Date: Sat, 08 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741446533
