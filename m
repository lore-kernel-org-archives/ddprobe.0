Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C6C17A30A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770426834; cv=none; b=qqAHl5yuBsM3Vpn0gabqbo1qt1q1E/bt9SolOlIQkOQW/5azWu7QqxXMbqpX3o5JOX+Ae7BiVt+i+76oAH7mdGEDXycbsJsSBH8wi622mwthsrsTPW/7sC72GXGjiBu9PUmn8ju0rpdtkq7Vr6Kdj2Xm4geLaIFM7Nioy8HCpc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770426834; c=relaxed/simple;
	bh=E9iB90W4MwrNNI2ORiSMpFhcU/RNaf+wo3KYiSyBfnM=;
	h=To:Subject:From:Message-Id:Date; b=jQ6qFzqOUJk7ABIQackrYAKR5FKlBQIjkpbqr7actVDHyxK3Ub10pM9H5fDHC8OSYnXCsWvJuczPwBSuUnd5U6UU9W5/sLt9SuanKGl9rvw2tguM01+QIEBcCeJFf7k9dAB4F0YGd6kRtURCvKabgeXMQgbvxewRpBB7i07OXSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv+tPWgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv+tPWgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA7C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770426833;
	bh=E9iB90W4MwrNNI2ORiSMpFhcU/RNaf+wo3KYiSyBfnM=;
	h=To:Subject:From:Date:From;
	b=Bv+tPWgOqiwQEl4gMWbf2z7vV+BUrDTd2EwNakU0G7KaGtyvpWHOpi1XkgockMmj2
	 nER1GeaAq1gWEIzTRQwWdH5+cm1gOCr89JMxrEf5FAyuMCk5kZzcQMU5NdbeHB2Y/z
	 1iMLoeZyyJE8qJJHn3OIJrC3EOEN9qyJndlgjgfTpMWBfKOISNl4zz6xOi7YubKFSo
	 AkKImyeQK/IYIKZ/42J50ZIhuPrsIoVbMw/bTnZSgKgSOBMkEU4v+m6hHvKa44pFmU
	 l5zgzpEFlQ2HoX/Ai3m3rKfHgguUDBoZzPJjROT04axKZNzE1/XIxk9YuOEGGOfhrf
	 BQLceyZc9SG5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6F2EE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042683359.8613.14275966783627809536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b5d17dd5c3fa75eac9af1f924f0deb3dec8bc601ed246f0879250a35b841c9
Date: Sat, 07 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770426833
