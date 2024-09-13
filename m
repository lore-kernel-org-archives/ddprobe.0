Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213AADF60
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726238754; cv=none; b=bYjUztpjeah5lYWizAxsXg7uOYI73YGOculhAfYcTrIXZcmaEr9tuTwTNgmWhB5tQHv72sL/vWc+ymuOdiFrJaFveQQBniS5FjRiHShP/0K0e41voELCtZ7xzGasMuG/YB7YI2flMXr1AZ503w9GpBk8mmefQ+wMZYQuXdIHQDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726238754; c=relaxed/simple;
	bh=VcaaSAdgxmusLSLzvPmXCkNzQSuTJ09MTQY2cXVj0bc=;
	h=To:Subject:From:Message-Id:Date; b=joykLr0/8a8OdrPN2OYNdw8YJNO1R79etG5ktKTP3g6LpQHFIL7blO5ZN4BMxi3OPV8dLy8TsX6PV0hJB7gHB1a0TxnHIaPiK1AMaoMxCepX/mFVxwt0jh73c503QJuae4gSCVBTSAfZPBMG+9OktUeDBbONdDgqGYhrPrlPlT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1c6kJ/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1c6kJ/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0814C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726238753;
	bh=VcaaSAdgxmusLSLzvPmXCkNzQSuTJ09MTQY2cXVj0bc=;
	h=To:Subject:From:Date:From;
	b=g1c6kJ/8vW7vLOZgHEJfC+RQRIS9WAJBHWVVA09o9tmXBxeiHxUpKVkAGpCh0n+fR
	 e8jrhCge9l1YSbqfVlDCO3TOUqIJvgw6YsPmBQ1VyYADE5s9NOITazKTWgOM9285oM
	 TvSx/p5hoKNLabBRUgFrKAkxE3OpA0DJtOrueAZnBJSqWa4X7xMZAZWW9tobHfyZKs
	 vNcdJL2hIgk52qlc6Y2fiVUQ/qrZyWrPVqQ1WFeCHMHiNT6Go2Ifo97GdHQ2PspDak
	 tlm0giuEglwRY0nlzWOlYpdDe9c78PzHDSpqWephJcjpTXK4QHTLfTgD2wdX7MxvUk
	 Pgq/eBO5UbIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC15FA375A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623875358.11884.7801063176512812795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08082f0f27dbb07e102fc306a59fca711b45bd9deada69579b94a67043ca93ae
Date: Fri, 13 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726238753
