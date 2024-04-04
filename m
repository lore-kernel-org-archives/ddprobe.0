Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34478061C
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712230096; cv=none; b=hqU5yAa0ePnvmahvadSIg0kSs3exZ4nEbHNU9vOLAEO9bdT2QRDtEALW3810AVVK1pgO9tYm0OPOOIdOORCTe0grXi0fnn2kXLRwCIupNuWh4Yfd8oERVF3TnBgiCaYmLmq3CPScY1QHIZxtY/AcRvNVDcsiPV+XVulvjKBpZNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712230096; c=relaxed/simple;
	bh=fOD3gmoG8yF9ge6KPsU0A7z+ZQYWVdS4s0PPayiyPT8=;
	h=To:Subject:From:Message-Id:Date; b=rvzSHF8t/Z4Bfrc+KcZkpTm9QOBE9KcKkeRF/2LZX9c8ERUKc4YH1LtYXd1wsVol/pIxQjOy6irabgv7TShmh9osKnFsbt6wRml5GL0GxsLvkSbxXIO7REch8+gJhGLhyV6ULuqGjl7rQpYahHvuvmW45zJYhjPJBBw1YwFBkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW5gFyy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW5gFyy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2A6C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712230096;
	bh=fOD3gmoG8yF9ge6KPsU0A7z+ZQYWVdS4s0PPayiyPT8=;
	h=To:Subject:From:Date:From;
	b=sW5gFyy2xTwy+lesCKnPd/h9P4Sj3dxkum42p2CI05Aa33LfmxXlFo6wALtMXENGk
	 OvPnp38HclYKc5XHCdun8fbzQsweWDSw6H8DIeNxK8gs+1VqOsp/sGV0I+j8eEy4ff
	 +kFD5GE6vP+XU42Wo6LGwP+kE3O6yYQ3rh9u2/R+tAiPl5dhIdoNDG8JvfQp777cgH
	 +NyWq4xZFFXDI/Q0e2g6GpoZO6Z6gbqIHts3BV3c/tiFWTpDWGByGRUMXaqqtX8/j4
	 dEJEWNyEUmgdsZFTqfl2WleGoAPjhZGM35zQGaqp1QEqC35sHG6BtGlMH5hg6M+UGh
	 jra6vFUtmRGIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71050CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171223009641.15778.5749795549256620959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf12f51bcd8c70cf62363c3ce024a021f4bb3795dc7d38e6c28cc5b15c73e21
Date: Thu, 04 Apr 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712230096
