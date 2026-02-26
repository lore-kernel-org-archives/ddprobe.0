Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB8F42B74A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772136294; cv=none; b=ftM725HamW37I2TUr/5YbS7oheW8/Zmee8of7DZ6PcBslilFDQfHWy5Y9NNRz/a9qhVNFtkwcpq8YmjZ1OUUhUYT6X+qmL6clgAh5vmH18FiK56gE3JvXAZB5+K8W7Rblz6KFR1xVRU87mqOKqhqlrgiz6/g7LODZtgoe5wjhFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772136294; c=relaxed/simple;
	bh=vn3SyrL/TlYdPkwKBm0H4D2UCRrzpT72DnBTsZW5NIo=;
	h=To:Subject:From:Message-Id:Date; b=m5R0U12B0PHrEimRqxVKtwswtk0u9dz+QsqcmsDpx5mENSSAdpux9/1Kv1f2wiUTrxWTLZCmUDXD2IyEWP+x8O+Om530Ze/6TR+dxDwsNUKRlEKZZl5rD6tLnFm3ayUlctMWrYKu+KtcBGVpMH2BoRKLc5Fll4Q7WUB5DFf9Uyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeZSnCNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeZSnCNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772136293;
	bh=vn3SyrL/TlYdPkwKBm0H4D2UCRrzpT72DnBTsZW5NIo=;
	h=To:Subject:From:Date:From;
	b=qeZSnCNmdhviv7U146T64UjZ6Y+5sqc6J923l/BTEhfn7/YAwVSF++q9NI7oQFGBV
	 nnfFpB8xw7BM/F1UzFDdbODcnnvjTrOSUh6rzFhEoN0auM44ov5mVI1mSync9ALT9i
	 viabAXVe2Fmn6KUVOhFhUnZZpWmcRSFGXoGnC+mZMQK6Fod8NEWkDG4lln6XXoP0TS
	 +s+19mYBLQ55JbT3Cu3AC5OnvQzPwjoRZbbzUKdk3KNn53hM7PFO+AEZDzEQCyQvUR
	 bVDOvtk+eVJvkFY6loiYBm/FUCfE3D145ysq9zOTGwn3NzJZHmyecVzsSO++wtjmGj
	 8tnDhUVcPETzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178CFD9E0A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213629358.24187.16714243915666175718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bfa214ed6cf6eb1f64f7b056640fc217ed73cfacd06c45a76cbab370a874c2
Date: Thu, 26 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772136293
