Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FADC27A460
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765118574; cv=none; b=RfvXMpUkxZsSGUsQ/sHLQ5HkXvUaOm+LBh0CMaQNaukgJtacDDYUk7IJSqmkC9OkgiK9cjiCaDG43znifHoZTlbxXX/60GkuIdTT6MlMz9817uKC4nSjVSgoPKLuK+3l9vuR1TEVB4Hu2cdVlr+OJBHvt+oW8PmiASL2+QA7KYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765118574; c=relaxed/simple;
	bh=miIF/1XlwdPuyd9EXhZ+xs1Ikfg/fLekfzZho3i4Xx8=;
	h=To:Subject:From:Message-Id:Date; b=Vm1QN0uP1wC8Z3QB3jG5PHMVwb01kjMahnv2qSCIEuFCZF987hnwndGAjNg6AGH4maPX2IC51ks4bV1zwrrQGHo0Qk4i5+DVsfxn96gkqDym5wljXMVLy5YKS/QOwhSI7Fwmfs6dPYwwLy+7EKj+W8M6ArMLlarbs6NMvGFA7Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7s/LVLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7s/LVLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A1BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765118573;
	bh=miIF/1XlwdPuyd9EXhZ+xs1Ikfg/fLekfzZho3i4Xx8=;
	h=To:Subject:From:Date:From;
	b=d7s/LVLk0UFbCmoT9ZyQH8Tk5kKULQ8c/HBoJpRE5KXqgH/Yt6KmtykVUFB9d4gk4
	 9yuZkz71gxxgRKVfXmXhJ1QfMfYAbCcMWXdG8QUY/K5xnVZwiLr2miaA/EpSNL7EWE
	 Jh7cktTgV/GydchWNWYZbi5mz+EVnv+AAu98eMiT9rb/6w2FvLiw94JSY6Gohe2q4W
	 LjELLWhqzxJXHzgLnaamm0AcwQJTP1pEmIKodKUrnUthWMUhUXL3uEl6ZXTck42DvE
	 0oNhGDMrvB5tGWyGG/ParKnuP3hB4Fd6ubxDpWH6CpdmZWfcTuZ285e50kWi5mYEm4
	 WMEgKxc3vGkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91188D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511857358.28527.4877210953038266685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6cb547fcedfcd38548b63d46bd5ae85dcfb4766d7e08f196e85e2eaa128444
Date: Sun, 07 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765118573
