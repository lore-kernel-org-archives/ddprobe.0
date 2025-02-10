Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EF625290C
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739198154; cv=none; b=kUFu7DkB+NoquyCAVQHoHI+L8vcepwxL8xXNCaePrAIA0yk5OIbhr/gCLAlvtF6GyO6OwPMmD7B2k+LbxLw0SW6r76WyIXyLu8noFSbjUsl+aZVFbEyiYh0jcN0FCCAOl57Uj+3Se+0XXQzjyHD1UPiZLzzvRB29Yv/cMp1XdHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739198154; c=relaxed/simple;
	bh=2O4PA2MuYWPLNBlKwOEshIxjNQfGsNnH7Ajkak9mOqQ=;
	h=To:Subject:From:Message-Id:Date; b=Bn/LyICd+6bcB/cY+3RqM4SLFyt5CVV/teeJtUuPaH+iwrWsObDPeMljH3NOAhmwv5skSlVrLutMfToOjNbudwPTHue8CAfr/4X6Y9FACaJTIf9OMGZZ+1gsXYrbce6LqkY+g/UaPxjtqVdryZip7kC6SGU7EBI54stBR+krQxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vtq5GWQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vtq5GWQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9BAC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739198153;
	bh=2O4PA2MuYWPLNBlKwOEshIxjNQfGsNnH7Ajkak9mOqQ=;
	h=To:Subject:From:Date:From;
	b=Vtq5GWQLeg7JjjoEDeVIo+kZsl6pRBhoRKvjnEuEYkRiEKgCdGOUQKydmc8wsJAu5
	 Me0anuiZHM0vpNYJpKeD6dElxgnX6kyWq+ZGeRbMnrIxWZ98gJIKzL3smH6vfS+b9d
	 IFrGbyzWTmZZljtyM3YnEGEXAz2IMhy1NvafL0LWp+opLTRhtLHRy/6b9FnGgtSFF7
	 2ANv7x4upBGZwsldF/VbLnZbjfu0/2cNUMkQ6lLCVdGurhxoykIzRrlgB072PLdFEU
	 grxbcsuw3SCvE8BF8fLRNZjv/os47f/boDncY0Qe+ZmLnkcT3jFWF4x/7IvKjYimfo
	 atfesZWrtf7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27B6C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919815365.2730.15691522381117753181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fe8e2fecf1dd43fdac876b8220ee561630608d3e8e717a759a224eba208f45
Date: Mon, 10 Feb 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739198153
