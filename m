Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437CB645
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737874554; cv=none; b=le5HsHXeaDHf0Hcy0gx8mnDOGVwuZyhGrKRIgcJpjFlk5nyxhTD+CCNSYMbDZARgu4Ha/yxhKC2AsnLeTkCEXxZKY7cCjTL5YTM1FRqzTGJrRAAze1A7aVhMIl5cpCoenyQfaSYqrNolzPLgwE+tYlXI+rQa5sbD3JBTkInotBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737874554; c=relaxed/simple;
	bh=O6FXTkq/rd1htMbpWHwG4yyV5VWRGSVNh05D66a0y3A=;
	h=To:Subject:From:Message-Id:Date; b=mnIOTBTJG7l/oGf5KisxJbJGDltNSVIWzlRHMAt++T2Sf36m6qSDoA8/Zmj17tIrrDywhzvngjtFp75Zr5T0KZFwXJZSZ1jRHkcb7h3HjM9Gw4v5QQO2sjTp/rrBenR+IghMKm3EDIRTKCfgnPgjIRH2gE8lNv5u7M3sX/Afy9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEdilze8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEdilze8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9213C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737874553;
	bh=O6FXTkq/rd1htMbpWHwG4yyV5VWRGSVNh05D66a0y3A=;
	h=To:Subject:From:Date:From;
	b=mEdilze8NAbNSeS6hEFjAbh8MQQGAmgm8TgBxpHweaGYFWySOewvE/u0KY1gx6LRx
	 1S2oiwMtTcEglrNcNI3CVLmw9mgmnjPmIqxrxr0C/EbHA2zsHpRIFlmfq6htUiUCzq
	 Ac1s/Y14RkZCY9uaJtb7GRHlUH8HKoEoYvKb3F6kpMO5AeneQdG7x/3OV/AcXVwKYg
	 jQdTbiY6rmU2kgHRqXmWUNN4MTEFZLjFrMCKugL/3IOLBPbfMWi8FGFtWZVoei7RrO
	 2P53/gRe/R2u8G/6Kag+Z5EYqUTVown/JOt53weUnLav0CZ0nd2pkNrTCWblKyBbr3
	 EsE4AQ0M92C0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D0BC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787455357.32114.14340029488101238554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3859dcb7a7ab7a91ef2fd05025c15609d16310f6b1e35bb1ec1acd44635b7d2a
Date: Sun, 26 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737874553
