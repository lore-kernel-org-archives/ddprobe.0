Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E64137776
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723137354; cv=none; b=VjjUzoWyGxHJSL7ZH4QsiC2vUaewSIUU5J6DqgJq3DyajILTSc7ON0Ar3hSnskKFTNgH2IYufrWt6LbkKcpHhaQVVQ4Yfbb3g0DKTQw78mU745KCeASF7RF+KWR9BbWR+ENR07xjQXalPUn443//T0zuNoP0NFEfNayv/ojJRmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723137354; c=relaxed/simple;
	bh=jQC4p5P0Heeou7nAsv0dRa5KrxvPenvrF8rsnhvmH0s=;
	h=To:Subject:From:Message-Id:Date; b=s1PLhztxZNN40HuZKnyd1a5gSR+l1iSkRCGIQLJeucZVm+XQ+XGdsSxlPXq2A1PuAxJ+4bp7J5F2rnGEEmwegkmfyt7qp1yH2gJin216sqCYtVzEdUWId7yPZzOKAAMafkV4CZXUWkknc0iM3WbgPYsElnAaxs8g/kNC9pKw8fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAoZZacH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAoZZacH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03C2C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723137353;
	bh=jQC4p5P0Heeou7nAsv0dRa5KrxvPenvrF8rsnhvmH0s=;
	h=To:Subject:From:Date:From;
	b=aAoZZacH/7DGkL0glj7OZzisplyogSTQ368UrU597mwdffyHQT5H1JafFKk3M9jZ7
	 WRdjULWmTvh4gDeoYAIyP+HDlLkeCh+u4LJJ41Hcpi0jxJPN+CSE9sDEoWEe+59/X3
	 PmsuDPdDdn+GQYCnyTOI/qIp5QwluctlgngrWVaC9SEgy8rxjNxF1pUjfEz/UfIT+s
	 Wz5CH+D2Kjoh9j09Xb3R3SPhSXxB7Wkngi7tvREJ4fyJOnDJx7QH7Dr1/EBBMpGjxt
	 Sb3RZpqWagDvdfoWNiFghrmaXgQbeJ+lJvtADH4MpofeYEdnhosh8HMygZrUtsnWze
	 yPYN3YexMVHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB92C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313735363.25569.2767824424213705551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ae1f8dd4427e951076943e99f8c56a678f68f8774193d0123bd1bc334ea750
Date: Thu, 08 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723137353
