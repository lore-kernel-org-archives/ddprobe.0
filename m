Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A5235AAB6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755808794; cv=none; b=lT43CCfRCmlUC2CS3PLAOwGesam+RokvHWmo9IBaVdDGsSrak/yBHNk2G6PKpB1CfGFWQQJ5RhnneN7YArT6x/Uo8GYnq2RJSgFkvtRfRDtkN3o9DZiHc1wjDbDq9VHjEpoS4glbKPrErBicfBrAHYSqeUq729I/647jhVzeUkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755808794; c=relaxed/simple;
	bh=Zq1PjIHorkSuK+UcudYoYyzDw/wSpg3uwZM+XRRQCbI=;
	h=To:Subject:From:Message-Id:Date; b=nqPi+hrCXNN+NW0N5wxyeJEVHW+7BdhIUnZcyL3i62HXq8mnZ/EtwAPbQQc5HsDEfbxRPVAgmMzXCakCPFVYWVNmxpYKlL80zg8Kt5hexy9YgWaiWO9Gr2SeKAY16Tk3vWEPspeDYgqMxL8dy+OuZ5WyTmg4kJG65ZrB1ILRjBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlyNRjuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlyNRjuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B85C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755808793;
	bh=Zq1PjIHorkSuK+UcudYoYyzDw/wSpg3uwZM+XRRQCbI=;
	h=To:Subject:From:Date:From;
	b=RlyNRjuvxRLTTPVGp/lcrW1t3w+c8Ar1hGxx69+ENSRkeveFHXaIN9zV56qMN5QjT
	 J91pPHkkLA1MiDZWnA56Gc0Tgt1A5Km2A+kT0D6cN6xoHddRNA7x8dV5YP2A+eASX3
	 z7ufR5lyXTJa+JE1oba0jd92vqUEE1rOTxprlysVLWPbPFv81rtXdUSkRJpCEwidVx
	 EHn9GrEML7PziAhdvpApCpY5HC9VfwMkuW7/Ten9EE7qPg7wZV03464+3szgWcQ4LZ
	 lRpziJQBm5G4Wa76ux2uSLzk1X0TM+V2lECE6Ve6QE+pWnhoEGjfPAFu9S0vnpBo0I
	 vifTVQcQzTj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E835CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580879357.16472.7643929193802536507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4b117b6d5f9ad0b14122b6aefcb094c32d30db61c1368d23d1da1e5a2f8543
Date: Thu, 21 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755808793
