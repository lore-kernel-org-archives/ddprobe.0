Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3488D20FA81
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764051774; cv=none; b=VVRnpfTqEe7vYOwG6c9hBiOtmYhmo+U/3svSnAm+oz49dAs+nK4XQZeNvxQGnBN2Fx9Nqc+XRWqTOe4O7fGe+SQRN9nZi2X7II0Idp0C350nvQSKPXIBONPE28kNi/Dut58tXYuwxzcUWgAcbpEaxRzSl0OO+ggCzzPPDol6TUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764051774; c=relaxed/simple;
	bh=BfcB9VwBawTXpu2J4X50vosup/TI8mqN9T2TKYqmKno=;
	h=To:Subject:From:Message-Id:Date; b=dlHpXqtpEHYEFBuAbebeU+4Wc3EQoESETuEg+t1ggEBxq9qzeENzUG89SFus4E4Q7lidceonGseSKn26RaTjqf9LBCiZaXkU+TsAuusX3J4eEpXfUEJD9URAif9d78XRJKTdKaKK7dorvT5Mgicueanb/rbIUXJQFWRVvilbm0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFQSMJzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFQSMJzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82CEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764051773;
	bh=BfcB9VwBawTXpu2J4X50vosup/TI8mqN9T2TKYqmKno=;
	h=To:Subject:From:Date:From;
	b=rFQSMJzNYx2qBw3mKPrgQoCMXc+WOE2WvMA3A87hfeNU002y6tl84us41Z9+kRbsw
	 S5u0CdO1KnE6HlqS+/IAzVxvukmGd8eO2TMPSod5OAYQ3WHsem5Ld8CNgDGvwjyqVU
	 LHCAl4kBy/2VK+NCJ8bLBscsmdFDdBXoseG2+zmsZoz5Pb6owgjLIZJYyeKAwHxJvn
	 wRDBunA0DpHP5ao4KyJ3iRI1zO65y8RDzxS4QxY49ueDiIqJNKRjWMxiOQvpTozm44
	 NvZT7jTK4ELmprLZW68BPTYkwHwei0Cr+Tp+8feCnYbjPem81Serbu9uuI4cm30dAB
	 NqcTb8+2qlh6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B0CFD368
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405177358.11387.14544899433930163942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815540db7b6c4ffd05339c4d7df7ff60767d86e27bacbf8f8392249b9f1e92fd
Date: Tue, 25 Nov 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764051773
