Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6624A28C869
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784383714; cv=none; b=HGA/aqqGAtET+mllEDFrB175l2CH4xcqkCYgOmhZ4JNDtOjeNo26+kDT3OnJh1PG2215x2rHG/72eMqsdAvtRearn2pkMq4MpBXaPjtFHDBWZmxmxkTdQC+4makVTTJw1uqK33Yy+oE4MFKWZaRq/A2gqhQPewAkbqkh4CbbPKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784383714; c=relaxed/simple;
	bh=doehWyNoSoVdgV4XhXz80M9V39fhG7fD/erM4rXjnr0=;
	h=To:Subject:From:Message-Id:Date; b=YAaFK7kVmaKYeJnbstb8+gYNFwrJjqx12n/rowZxhsN/b3fItCyxX2NfJOyw5vGbAFrFgi2R8II6Hpea3VI98IkYpa0TbTwt0hP/fdhDq/ltNW3VYd2rZVhdJOSq1IsP6SclJB1DclV80uZpDAATqcghgikBp37bx7YdHMTwk4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cabkx1zm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cabkx1zm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B31C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784383713;
	bh=doehWyNoSoVdgV4XhXz80M9V39fhG7fD/erM4rXjnr0=;
	h=To:Subject:From:Date:From;
	b=Cabkx1zmZAJxUcmfNyrqph1nHGtA3ZDO8/rTcHRZk/y47D4cEuTKxXN8CyjsnVxen
	 K22RMP7mMvaO++P6r8lECvl5mH29Trw/5pmDc2SADQ3tFQpa85VASf+hnQRt3KMijz
	 mA9JJP4CWr4vz9NvqgjpLLZC8eL60HcjHez3Y1PwcOENEGUVUN65lWFbwY9ig+sLa2
	 lyWpMxx1Hudas3zSzRmicOYiRJ0jML+rYmFn9xEUCHAQMMTCn74ZtKRrvweaiSoM6p
	 A+mcgx4wMOuid7KT91KFPAO7WrTjnrRNUNjstRrY/2RcCbRFrGc4ZW4fBovqClHmBt
	 LGe3vyGGpb5uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B0C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438371368.5465.5035083324560211428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8f817ca1a2e7b9ecfa95df53d20db5ad88f128be731fa4e391e82637a4f8f1
Date: Sat, 18 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784383713
