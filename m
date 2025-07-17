Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D373C1E5B60
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752739193; cv=none; b=Avndeq80Pb91W66pjFwbYRN3N2enMVgn8XaJUoyELkP1hii67JJvxWdt8qx5iTn6C/E2pcig1QVAPK11jeiMLqNcqS68T163RAjCwnl4GrtUYCIyrhEU3fwxK34hcMix3JRaN0KgEev1w2VCRuMTsuii53hFNJvcirfZ80BtR/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752739193; c=relaxed/simple;
	bh=LxKSJwEamzX02bKkfsASYX+VWAViyXkFTTw5B4NGFf0=;
	h=To:Subject:From:Message-Id:Date; b=LnNTr8ewIf6H0c7KrKBcpjOldcYa5otDTaQzqlHIna1wKiZFR50Xv8cS1vxSQyH2A6x5CNMFnDtQxDwQ1Ela7NesUvZ4Ab25PlvZkIXyxu16x7ACOWrQXLw5cTl6ZX0XKjnu3GsbS4dbhYWcuS3IHMYhNDey5O45vqCkShdfSqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1YRFMsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1YRFMsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0EBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752739193;
	bh=LxKSJwEamzX02bKkfsASYX+VWAViyXkFTTw5B4NGFf0=;
	h=To:Subject:From:Date:From;
	b=t1YRFMsksqdD8Sqt0/szX+r6K6/QCNBQ3K53cIJneVDqiCEa8TQZz8ZFoLT49953E
	 8kL8yhPFestppMG4ggZPQQT2h5nyX1wddqf2YlHdFiFOyhEbhBZWJKCmQ89NLmoxN5
	 p/YIQyEVFVf+dWK68rt34bmqPFVzJh/mJTCrQdqje9qHQILCRPg82v0FIWAuyy0A1d
	 ijQ2ge+2lwZ6JbJFsuJ70P6zIeSGxMJ5Ox779d100HCkyEDcIU5SasZeJd3arbyGSW
	 x9WscqAIZVF/lK6NjVfmK3s5qPcXCzRAvQb30MLZdDEngB+KdTG51jsmrxBA3zvIBq
	 n3QU3En5WwasA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACCC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273919357.16332.8975927094219099403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8a95df2621d234ffc63a4da7e1e2fc0e63a41b11acd10df2de54b05658a396
Date: Thu, 17 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752739193
