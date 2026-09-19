Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AC12D7DE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789829434; cv=none; b=bhPFPhOheOH66GuSlNRIKlKO/7qhwGlU5bq2ygr+7EbLycMIE/cTSZZB6ulBK5Lw1uSibtxYN4xfGWTAWV7EccS0ecK2Jf7uGJFhC9JW3iBhQ7mg8thOkbV3lV2p4n5X37PH5HCdeYoGVZmJKUEqXlUJJJSxSL38CcqOnqYfEd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789829434; c=relaxed/simple;
	bh=uYcQiYyOlltsfVAtjBAzwMmZfc8y2vtr1StPlwcHl44=;
	h=To:Subject:From:Message-Id:Date; b=AzkE46RttRMSjP/nEWSFmuQQGu36HJ2fc7c1yagGMi+NLL8JW9yZHx5dfVQ9IXtNsHBnjXwhusjmrJq4nRBkXzPhoP8T1AsHRteXx4Xvm4PGPLOpUD7nVjD9sBEQ5pXp55sT1Ai36lldfkSEwQyS9bmMlEa1q0QFFZ19nihpISE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwDSFPPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwDSFPPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F63C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789829433;
	bh=uYcQiYyOlltsfVAtjBAzwMmZfc8y2vtr1StPlwcHl44=;
	h=To:Subject:From:Date:From;
	b=HwDSFPPA86GFfxF8Pciuna2/5woUtJApl2yUvFyBw8pHm/JfWYSBj2vVORxU//TMH
	 /K3ldyOy+P85cIIVBirw7KkECUC5wIHRx4Ru1O6oBYFFtv1RapSOh5fFNX1j3io4mx
	 t6a2aHYf4gnl7EQ1V+cvXOl9mb/YEoiXB4WdekNmEH+M/iWdqsLc3YNK/CBFjEBbLl
	 2xbjqRZ5XDesHPqk2H+0PC9WwR7sTDvRX0dLhskFqAAkvVw4XXuxoOD0JFkPvnainG
	 X/406iMkHxJYmWL/AFZDzoMTrGJPikasR1Q9lOeNLLxx4RYMpq0KtwcQV0RDyg7jBK
	 ZMQFdqPlDm31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF773C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982943368.26542.4779435029357705406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa4e6592269f9d4271bae5e4030902fd58ad332b46cd2ad76c5206722051e7f
Date: Sat, 19 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789829433
