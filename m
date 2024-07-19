Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C43C8E0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721403354; cv=none; b=si4KKvgEQIaJAZQ5kBddHhBogTueOvZZZ3XhQt77JlRS0ER/QuyCC2fCqqFprhC8G7G0+KjpoLj4ShoNq1yILPNpmu+KHceTukDvPfkMTSwZARDv0MB8MmlePCYARY2jY62iCtrweUcGMQ1eidCfVEBWD7XkhNhMJ1BQBjAqLBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721403354; c=relaxed/simple;
	bh=lcRiH15Z3OyqLr5Z4oPQkKUh7k9ithkqT8oVu1upKp4=;
	h=To:Subject:From:Message-Id:Date; b=WiXuN9RSGoRbV82sOqZQ9sX9CfccAN50PxX0xyQJ2zDWyAcR0b01rL56+QBpbm0AeHdfuup2zpn1wwRUnezRN1Amv8wm4HDXIggPhBPiCrJ0tdyYNxLI2NZt1AUpADd5LhfDFqTTruoKSPAtBYDVzjFM+K9uyaK/YAoLUzlORvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHDQ+HLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHDQ+HLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C7C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721403353;
	bh=lcRiH15Z3OyqLr5Z4oPQkKUh7k9ithkqT8oVu1upKp4=;
	h=To:Subject:From:Date:From;
	b=SHDQ+HLxyPHDvXBrsKFnD6cYrgAtiA/iEeLxpT432VCWOrVLHeOunxwBXlHQ4mBds
	 OfaMqanwAChfFws7kFZYATNQcslK0/A25FL2QXx/NadAuet4yVKkCJpU9ZAzAHlHZ7
	 Q6OS0eZQ9ntjfoasSzs/k3JR0+D8/NJK57+Pwy8b+R6ct2eIrfLpdNCTa1SIQJWDlc
	 LxsU+AVe228ORTZ6WZfhXAR9goBdzwKWhFsAnEKjof46X/SDVBaBgGB9BRLDgedWgA
	 pa21tioKpZfv+B6LWI8O/LVjKr9VUrO/+iS3EQuSm2hL3I7o2MphLZZdS0BFhCQTlh
	 bg7penQ/+nHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96077C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140335360.6308.12202275889523638652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f845a287c5cca6aafcd5669e5451e928c4f7a9625ae7b299e23c87eceb66c4
Date: Fri, 19 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721403353
