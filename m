Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28434B665
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722905154; cv=none; b=EouAYyDX6XmZJmG8EgZafBorCvPf0dkhyKaJp39JVSvnjVwX0rxZkBuZFADKu6+6Vc4WI5Dc523UR9FaX2/mIlwDoXD4APws8HBq6IylazBeaKEpuadjyRzGwct7mrwazHj8HJI2DWKEIZ5etI9zrNMz/sb3XL0N5eIpFndSFRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722905154; c=relaxed/simple;
	bh=1NT5LzhuUu7MKOd60/p/0dd3UyqagHT2iad7DSX6zI4=;
	h=To:Subject:From:Message-Id:Date; b=cw+UHcDofD4ZhRONS3m+0gHuPDjUnjUTn47tRygOGZbxoTyPtUJ7BZkNwkSlpekAE9z2veJo03Tm7NhF73lqrZhvrxzcVikePuhcEl4XdXbqA0XZ11ilwktv3UgS0AbX2Bwe16TAaGAAhYQpC8CwSx8XlZ03JmUf3062evt0uu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cpd2p1cC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cpd2p1cC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F8C32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722905153;
	bh=1NT5LzhuUu7MKOd60/p/0dd3UyqagHT2iad7DSX6zI4=;
	h=To:Subject:From:Date:From;
	b=Cpd2p1cCYyVaAq+fSwRMJObHdGmPwb3hFOzlG6CefiTaDBEqOlUaEDbmeLsICaXZt
	 2CVyY9JLauyerThL7T8HNQ96n5EPxafq6IHQW5fz7Pf/HfirO/bajRr3/rJvgV97aG
	 i3YaqIHJzKMUCHt+jYAIasXdJxnwA8gFGzrtdCK3RxST259lijLyL3stYT3E/P75yJ
	 kFa6MWY25fGnNB1XSVMVnrtoLWP/iO79QQridanFnOuOWK/QFGM+RcT+LsxTi5lbAX
	 cMOV3ayfxqOPtsu8mOi2ki5Hb2EJ4esldeBANDQzi+AkYSsf5KHg9Tkq2HjwSUNDQ4
	 7bKSQbBoIfhwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95348C3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290515360.25577.3178975604517363852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450b7a797f6e4a5caf2e9ddc6cc7dc90432a036f0bc384846cea45eabb225837
Date: Tue, 06 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722905153
