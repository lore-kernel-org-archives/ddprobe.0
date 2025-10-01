Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B8A1865FA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759310393; cv=none; b=IAfHm+GNpbg0bcZ3ZkB46jYF1ZfPDBe2q1JPtYcRzaycJGMWApbFGsrbqSWQD5P1X4eRTF8bnvXuOUwZMgS29XJUb0NfiYgPlsk+76ZzMvrJgM6I4ldAzq4nlcSt6pGj9HkdX23Im0m8TsBibqWtBRCK7VDWv2KNZXLkDVgjEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759310393; c=relaxed/simple;
	bh=f0CeetqruDtc/ZraWxRhWac1LZW0FBVJTAcf2pzC5qg=;
	h=To:Subject:From:Message-Id:Date; b=CMaqatC0znr7eB9uqnpUgLS7372w4XWZEX7b3vdQML4kVkA5EwZ1QbXLkZLuTOQ61DeDT7mfK7eRiHl633yV2xU1qJAgZaYQqKeS1d9cFjEIEr0TSIgAp3S0PaglBualuzsi1xWaJXzE56W6hN1xhn9uhIpbcYWrzpxwZVGzyrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOG9exU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOG9exU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AE6C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759310393;
	bh=f0CeetqruDtc/ZraWxRhWac1LZW0FBVJTAcf2pzC5qg=;
	h=To:Subject:From:Date:From;
	b=DOG9exU/UyuUoCl/Rjk6gt6XqsmzjXXkKpRuk0aSuOrdjasiC2kHjxC1vzxkhoA+P
	 +MLtamTjnkWV7GsS/5FkPxA/TT1k9o9OC4okQmwANlR/ZtELMuzekflPoNvmq1cKKz
	 qR2yjbNkvadYSIQVaeLGNpZdJzFPLpX4eGdmb8bblZBD2i+CiKvqqoCCKSHfIEMeRx
	 4zBBHHdDkhQkj7SoZ4RLhSHgsATucYtXMapoaSyG/gWn1m3v8IHaUbyyNBZZoDfPup
	 OalvRY5ZH9eeamnL85AYl+/KmFIaz0TAYjORTGAql8ew21+BBfuBFQEry+zsdKFN+P
	 BLhFmhKh1d9YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB6CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931039359.17620.4807337427462507657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de27b140fcb0c9628c063ef168697d4e0d09301a0f3a8d3de4ce689f0481772
Date: Wed, 01 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759310393
