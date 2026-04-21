Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5238933E379
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776795454; cv=none; b=TqQEWAU8YtqjxrCwzZAYQmdqZmZqlbuALtfx0gLv6hGLFgIuonL5mteXCEk/Iu2iL+f9NdUw2EcHrFJqkZon/mXYQh9XhY1BDMoPlSGKWbXdQycOiHaBNywweH0H0rNWVk7/N4o5YDTYVatFFJvm9YCpUwiVCB6TJXjgA/PQFbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776795454; c=relaxed/simple;
	bh=VnhgP4w8Sx0S59v05r+/jlRr69RxthPYBjkvS1nfuqQ=;
	h=To:Subject:From:Message-Id:Date; b=ZJ8XTxVAhpx7SkR2k0JuCEctQGCO/SDkHflWveI+6f25zkLF5+Z5MzS8xFdGkghrg8atCju3VtZxYDkRkYccEEaKqY6SDg1Rtf1xVZU2JMhlyhv6HucBbNtEbXBDSz38zUW/qVF6mFkVb7THk27PFjhAaiib+yuI18cYw/H7Cps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrFWBKvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrFWBKvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC30AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776795453;
	bh=VnhgP4w8Sx0S59v05r+/jlRr69RxthPYBjkvS1nfuqQ=;
	h=To:Subject:From:Date:From;
	b=TrFWBKvYIQ8rD3OcfdyhYAakaBljqtpGJl4NX9/k5UrBl4U+uFtxgSq8xihonD7V/
	 1rZLAWz8BE6v4mH7NlNcDfULIW0F7Sdtx57o04nVgCweepVBzfYZYFV3eawg+coL3O
	 FhOKfaOjnyEeiwr/8ELhVdrtMy0Z9tGKfyck529vLZ+C+PIth2YRB8w1qZIjvL0S4t
	 ks1OQBakgvpKct8kZlDsymoAbKVAdGWY1rE3V85Ep7Y5dCTeSdlwvJWaYA3Nx+b71B
	 HEPQXGVnVt96V7FVAC5yByKjBLxfVWpjk0DXzDMC2Ux44MFfFrbysNwP3GkibRYc+p
	 uPJNibJyWmaMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA892F94CA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679545369.5827.1602567153740498543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78210fcf3cdb5a29b6b14220dd7edbe643214f09c11b4cf7e1b5286010229f1
Date: Tue, 21 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776795453
