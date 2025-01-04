Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BCA13DBB6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735982754; cv=none; b=n+zHYt9rwNBRZ3I70NmWqxsZDoA4fMhgsNaUpc0AfWAtzIlD3KL+y++r5580WByopl29MxFPkwmkV4MenxhK7s/OtlLpTl2qy+6uscPAjRgQ+6hHZ2L5r2Wt5JCsMpwbgUu8EPmRIRyrJ47o340yeCkfiYZDe2y996v5JXIVNis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735982754; c=relaxed/simple;
	bh=qAkCjxU4esm8mdNeay6rwlArjZM5vMCWDU7wsL+uPiU=;
	h=To:Subject:From:Message-Id:Date; b=m8eWt2QFhTuX675vPdXMmcIHWxDQCOvGqOEptvIyJsbj50HUkkR1iaKFbmXFutWw9Cx4+sIQ86ogRGtWK+LyBABexv/oAgILqa45QohLmc9uO3Ocu7cCHOdkP/RYXaebgcKrxxejqExsdgEDovB7y4XbKTbaRQvrmeHMhlTqDqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC+lZNZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC+lZNZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735982753;
	bh=qAkCjxU4esm8mdNeay6rwlArjZM5vMCWDU7wsL+uPiU=;
	h=To:Subject:From:Date:From;
	b=dC+lZNZsZQdz6YDCMvXBHw1uUHz86sLYhsOXqzdT2Fwe1V+zyLPMob4x+HRdCJzNU
	 J7sVU0+huDjwaLWc76mqExVbUempN+UdUl8YxwvPAKSB9I1lJWAHIKivAxFs/ptdm1
	 6A+HBnN4JDMaWIL+bej2tIUvyFHYJfRikv3qc657nP6fQpadaPJTdVlpOKVsDtYWX0
	 /Qt5ckJ2cb1LAwqbNpOPGqOrF7Yn+Hh+kVTAVmTmSGDdG2O+P5BT0Xr8OtMN1Ca4hQ
	 jgINUwMedTLGMLo0pGSv6JxVlvECs13Zk4qim1gTGp5LJ/R6w2lskznatNwvujxxF1
	 PeWtPJx7n9fVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906FDE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598275358.9531.3026489992224748213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0840bd9b685b9850a44bda86390fa1a1440a76e04b680c6af27f7a07d60dd8
Date: Sat, 04 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735982753
