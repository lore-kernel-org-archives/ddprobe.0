Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0961D2C11CB
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769702034; cv=none; b=iFJhY0iyrZtIMiz038GVDXdXmFoJ1/GJ0TDVF1IBkiHLi5wGCZa1zWIwd+aXjEI/TFPCp4+wJem6eX/CVsuHAwfKtWowNCXLhpHt0x09T0SuuUlkY5llJM0O5rlQOE2CB+2O6cgGJKNZJgJ2nhbBu3HjYv9S05yMCJj+6YGj63s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769702034; c=relaxed/simple;
	bh=MqvLKBZ7LzHAvi8JARLop9TTuP1CWzGtNsIoinIgdNQ=;
	h=To:Subject:From:Message-Id:Date; b=Yim0+kYTBKHIejl8t23/ybej31hQ8NRC8cu1nA9DqyPych8/vpo8wh8Jn8RM0RMFMlQAm8UJ0ndEPEbJwO2uRMrHROg9uHRvmsDj5UpZth/JLDyfOI0WpgAKhPsAxgOAyEQ3WBeb34ZQ7HY3UnRHMfpg2pHfG3K81vhovky7hn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9gPzHGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9gPzHGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769702033;
	bh=MqvLKBZ7LzHAvi8JARLop9TTuP1CWzGtNsIoinIgdNQ=;
	h=To:Subject:From:Date:From;
	b=V9gPzHGf7z9kdUERWwj44nkt8LoPPwaahl8mGdalDwvU0QykLUkz2mtXBBg+Abh9k
	 PZLAO4gB9e7GrcsqlurBTfb8Nkk3KxYhl2mp4bu1VSApioQhFqPA/qAiL9YFkwE3F9
	 FfVHNxG6uX2OQST6JQt8zKDtTSbk0afrHB9tPz0/fTx/yFccEXapuZUYC3Ho6l0Dh5
	 Fltns1IdO/syF4tIK+3FfICovtionBHT7MTWhAnZP1kgnwj77qeV0WoOSMn3AUamrn
	 XnebcPTEloxRmZ/aQqXPqQrUQD8yad3548tArElxm967W0OicUEvhySEH0maEj+aWM
	 Bjr1ex6hWp/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04CD6B06C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970203357.7273.11453956589450086267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64498d4235652a3ef82ca6bb3a2e09216d350805024662f57c332898c684767b
Date: Thu, 29 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769702033
