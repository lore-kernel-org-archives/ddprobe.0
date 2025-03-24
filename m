Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4062D2E3392
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742830794; cv=none; b=mlmDlyJfj7yZk3w21oibcpJyhuctkl7muQUEPCVuAiayhnCtfTFgoadHmSmMttkz+QrnYxZR1l1JJLNyseJVXfY08y7OR5M0J0RHKhw2mq05Ss/akTL1ALhS75zpwk97pE0ESMpDEtlmQ8r8K6T0eNuAQiJAHa4KmEOErJ+rMww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742830794; c=relaxed/simple;
	bh=BbBySKmd1QyQdVuCTLwPbYVaDCH78tPTX90AKcgFFAI=;
	h=To:Subject:From:Message-Id:Date; b=j+ctnDayF7aa2zDu6I9jVKpHWVaWOtFE/F222tVP2Czk2Z3fULRP5Cbqwcdya/Db6rUQNcfKfzCKDQIJl4QMAoau8yGM1SPeMVZafP7kphL/iwsreB3nafKkv+P14Kyccwx/xlBYPiKYGslS6Sr4fVs2KVrEQqyv3Ab2TBmYQdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op04MkLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op04MkLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8228C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742830793;
	bh=BbBySKmd1QyQdVuCTLwPbYVaDCH78tPTX90AKcgFFAI=;
	h=To:Subject:From:Date:From;
	b=op04MkLkTbpQTnYTs131M4obh1VMnhWPjqWhLjDlp4vb29qq1XFEShIaRIRwrdY9q
	 7aKHSQnFQJxukt6yaOSu62wTpD2UHrOlThlOhkyvIG33NyvbFwBO2c3hru8DLwI49H
	 Tp3X2JPaMEPBoSgRXR8AU+eOhI7mBYYkrBC22+E3KoqDTGubwlwJaJUT+utwBBmlE8
	 9G4fuUSebMezwCrrmBAOZ1gWPKbu7UOe8V/LWrM08+wMGJYcBWaUUj01ZpYqSTuQzB
	 INIE2adoO0Ogm1LvRzUhIUpV/tipuMYw9iJSZT0ncVA0725Dbzv7E/20o0rglOTZ5P
	 yF1kpnjV1+kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA2C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283079359.24592.3040724611384002454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c3954bd333ca3344443bb19a3e17617ed6772471179e3a2cc5638f4b398870
Date: Mon, 24 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742830793
