Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B042F12DA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791697234; cv=none; b=XfFhDzLdSgLt0+tN+0LudWbeV5efdVCRc2irLDKeKlNQj3KuXwBCo5g8MCgyDIFuYLPsvpubjzNAxtSC7sheB85rgrasSp4DSrCdomZNqcI9ps44qDPRJo9SscgTameLHltw3tEo6vGVcDv/Q1kr7Bsv72da9ZA/lltkNzb37Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791697234; c=relaxed/simple;
	bh=JDUdLCN/OAQq9jV2fVsQeCMMeod8dn7/SR7wZxC9Mvs=;
	h=To:Subject:From:Message-Id:Date; b=HMxyT9ODUlkTYL8gBys/6JepV7H0L9KVQBLT4EdLSRf56xzKYmOL4Tnb9yBT5r3NOfNzW4PfwuB4dTjOCZH+DrG7N0ioIfFS3tMMADPHWPyD6lYXS3h83Rw7kD7cHxqxInZJ/lCmRtT8UwWgNQsru/z7OXLaq/Bfffvew4hhCfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Unr7Kau+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Unr7Kau+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E0AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791697233;
	bh=JDUdLCN/OAQq9jV2fVsQeCMMeod8dn7/SR7wZxC9Mvs=;
	h=To:Subject:From:Date:From;
	b=Unr7Kau+hMLupTp3ZEp8z7D2IocapQQipuoKTVk8ArWPvYuII/4pgfSqrzYHHbaCW
	 s2y5yqXOjDMURJqfgD22RhSAJstApQiI7H848WX36ni9HML9VOTnUiPMpPLCbKD9L1
	 P2Wg2BYnRzy5HOWJHQMjAv7jnpFTcTqjbolJyLSzeTdP99b6ypVZh0lmRi8VA9tbRN
	 CbJFlkXQWTjpDuCamOvO25OhZEpO/LYb2Dhth9gZ4FKh7RWk6hwmjbYitTgIQ8UF+n
	 sM2NjuoB37mgQEnuYKyXZQyzf0wYJuYCWCM/p1ZyNQosouaGEQ8ZrgTqQyAB8+MWcr
	 LJlTNDXxHKFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0351CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169723368.15032.5172643382603196729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c4d8b41cfc22fe93220c6fd338bc770247da5f257323c5b0a0971efdadd98e
Date: Sun, 11 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791697233
