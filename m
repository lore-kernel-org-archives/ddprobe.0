Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB1C3783D5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791228034; cv=none; b=UEvmdIhueErhJRcXVTlsuMlrVh0/mLkkfVvtlQe/GxVeYjraA45Ozc7Rm1FMCmV3zi6HWkWrDW9KKGlaXR8zZb1qI7T1DBrbQWGOCkw+i2zA2jhyFoKDmhHWiVVcTE+0EoJrMIQ4SLurz9naHVWBEJShv4x18/8WDAKvSkJj5RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791228034; c=relaxed/simple;
	bh=g/WCQFHx4f9PIep/1UqytwV1NiKqrL8YY8XJ5d7Ztz4=;
	h=To:Subject:From:Message-Id:Date; b=RReE0dlT7CN47sz9hEI/uvgmtAzJ+EK0EuMi9Vm47FleOUp1T44dc764pbtx8M35L92Mc/o+bHbl0kWrXSmEbfA1AEGrvEp2SDHfBQwT1ENtrgwlQeUgU49RHdcUXrmu+4CmMFV8LUmYat36iyDD7Fx2p65rCt2juEVbZNoBKh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYkrd66e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYkrd66e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA13C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791228033;
	bh=g/WCQFHx4f9PIep/1UqytwV1NiKqrL8YY8XJ5d7Ztz4=;
	h=To:Subject:From:Date:From;
	b=HYkrd66eT/TSkYfFmNzSoWFKddfMoGeWC8YVV0UWLLbhDAYlf1jTVptf3+WNHXbvK
	 vXw4yIDVKuKf1lWAiGozvQNfn/3RbCK5g09CKf6SQjJHRGCUU43saw7+W4Vr5F5bzX
	 UF5Q85VenNNVcN/WhQvwGTyR6gqohjswBaktUBGWvgAvqwk/CQDv2ZXliD3r6pPZut
	 q1rJ5qQW/UvNl70g1vr1X9y6cvmPfs5B8UEUeNhweORdwrgFjPRGYqxqNeYcf/c7ro
	 802j1loRIFW0kjR9u83yy22JBqqgZ/lKQU9cXm8EjNGsK7VBiewts7SI1ZH7k+1qwp
	 GqjygvDJW7Hug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95ACA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122803369.22283.13914789247006819444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d611b55a8e092070585209dd76e2f6263160a8ff2cd8397922a78be09128c49c
Date: Mon, 05 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791228033
