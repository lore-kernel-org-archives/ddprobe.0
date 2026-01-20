Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22196324713
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768887234; cv=none; b=KTZLPHXw6hwThpR8gzcZobAfkpK/k0T14buPSgdrrXMAAWJk8RpQAeMZPQeeyGFop2jBzJqqfVc/OawFJUxflH6AtT4woDvyp8idHTDyL67mJC6saqlp9fCF6QytxCNU5P5VNBsgtf0VjN+PpH+GpJafwtoDxgADxDK30vifZNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768887234; c=relaxed/simple;
	bh=/xSLVVPvcelksRafsaIW7lEXvamE7yk0r/KYtf1B+ms=;
	h=To:Subject:From:Message-Id:Date; b=eS/5uTAh73VpHkITxV+2Be0tvODniZZOolvRqHEXuAkDRTcIoVZm1khvmU3EbfafhK+ZaKlBxsZ06uxP0DHlOIPvr2+leop8tedaeOYL16JRtHIWgCXkYA/UFqzRNt+JqL2YjAgeEHqZzVp3Eb+JguTNsAGPQxEG/wqSvP4aOWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3MlXiaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3MlXiaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459EC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768887233;
	bh=/xSLVVPvcelksRafsaIW7lEXvamE7yk0r/KYtf1B+ms=;
	h=To:Subject:From:Date:From;
	b=A3MlXiaFsngLIU5l9Dncv0y4yj3EnAxm4RXL9sSsKuGrQnULIDbTSY8JMHXy0iLNU
	 pcf6aN1y/manPOgILNlkN86/s80bnkfmrtzZWJNpOANRJg+8RRqrGF2f07Yj5LNuLw
	 kO7K712xoYX6/0YQ1h9ANG4GTrrBJljRMlbsDhnE/bhCcmcDfWW9ebSKg3T2OHABFU
	 ZN9VeG3gMXV5m+FrU1s9TdgCoyED+l59MpLDpbqHXjAICI2F9jfHqYZxYecPcQpU+f
	 WeHQmY+DBdho/qzdWi6r+Lcyk3kin1wF5g8EwySFAzl5F3Wxuvkkmrmkp5ZcXdb+Cb
	 VUXQWdHa41yCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BFD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888723358.5297.17644361487566671460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53c11d11b2fd8f27800f0438e62b1b340115e6710603b89e40516e334364295
Date: Tue, 20 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768887233
