Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4C84A92FF
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790272834; cv=none; b=pobAAXtK5pPUGd026UPCq5GADlVife9xJNwxhCWntq7/q1PQCIBZSpDO0L4tZ/4gs2eXtEUU+FBtCkwwmuGq9EuAnH5Gq/84iiPhc3Wskz2fsyedCKWa14kFXcAqMCs88HI/SCRR8f4ZLMOFeJqkG6cS0PujG9APwWigUwUXh4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790272834; c=relaxed/simple;
	bh=jca5fuiHozt5ykrBHh/iA6l+cl/RmjMaHqYsnd/663Q=;
	h=To:Subject:From:Message-Id:Date; b=IynrWWbl/9LIOwZVhsXkhpHE0lF9Ryn0rwu+MRVMap8jc8gLTElYA89GB7nQ2g1gqmiYpTsf48UbCVkhMtB1hbpq832OsPszZNxmLaZz3XXBVAfDdX9i6tvWs30O6cpB/ocI9Ac5vqt49OR37yFbTqgQsEoLrD44qb0X4b78Fzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOJknDQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOJknDQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C546DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790272833;
	bh=jca5fuiHozt5ykrBHh/iA6l+cl/RmjMaHqYsnd/663Q=;
	h=To:Subject:From:Date:From;
	b=DOJknDQue7fcfoJSW8byKIWy3DGQL5yIIOowlehaOeyEoxrbm15mpyy9EAV/NxSkZ
	 MaOoCmcDGznbRbC0EqL/F0zK/zWh+TEOpnvi50yXHst7rv/54cxNZjt3CmzZ+YLlUh
	 Yljs1RfDAWy5/n8F295P413T/S0//GQBH6GNPQvVV+BPfI61Wrzo/S2OdoQv+Sbejj
	 YstKJ1dzEVksR91vAuInHdKqdXNolzs+pEBddc37w157uHKN6tIghydj0VBq1rc+We
	 u+f4Rk7ot4njkSSvkJH696TeGC8so1l/byIVKF233zbIjD0rLXfiHnCP9AqKw8GkTD
	 oqDCfA/yMYzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B243CC98321
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027283371.29229.628640824319362445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151ccf975f2ab3e017d881ba5ffc8d3bb34b2b9a1269459400334503c0ccb6e6
Date: Thu, 24 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790272833
