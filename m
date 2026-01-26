Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE2E1F30AD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454234; cv=none; b=mNforotISQd89Sz7kFGUu2CI5TTUvOxW8UG1q2eyy2oK4w/l8P0SfuUB4Uem28V85NlB+9Joemwq/JzLLYB5zhqVpE5FY1XjOiU6G6gQODWB8uG3h/eSTHsKud/G9wuNBa0OdWnH37QgDpl1e+blxNYg6GO72QVCeD9S5cuVq+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454234; c=relaxed/simple;
	bh=QR8oP3oioBl3s1MIY6280VxYSKINRLj6ZHR0SUGmcaA=;
	h=To:Subject:From:Message-Id:Date; b=UTWTGQvMZZU1eU+9c7qjecuqxgqfVUz05M51K/1QQNH88OxtCwXJQybZBvkugjD1gnfHrZm2KpSkhQrULZVXo/07qSULOTFVEzLn8clWEzo6x3jL1EZTUAr2XA/kKkdkGIroBRQZpbxTcaGD+a+F34IafpGfHDZ5kgaJOK4lu2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om5/rbr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om5/rbr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0017C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769454233;
	bh=QR8oP3oioBl3s1MIY6280VxYSKINRLj6ZHR0SUGmcaA=;
	h=To:Subject:From:Date:From;
	b=Om5/rbr9CHY4D1U182kOcos81HacEEKUG7+2pxONyqHGhM2vUYEICy+7tMYd4AtjW
	 ZZypwKIztA+nWWPRI6HhSg/2MZzEV9ldn+F+uKbTZ9fbTLKRsBvpRAMoQnyzCT6qd3
	 5mTiNqgu2datv9V2ecOdY6y4E3Juzhs4JK2ooydzru6eNLhOBzo7vBIXzieGkPJ2xW
	 AX+r/qvxQ/fxEi3glIKU3HMUYnNEAshmPDRH8j+pvIHsf85lpRmPX/xgAv9wc2L5CA
	 Z4hCrXTias119CoEUFTshR86ytK/ykIAPWftTrraiycDqdowELiPLJTgIekdNa6uYH
	 s5hMu2ovdCEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C2FD19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945423358.13366.6259717046847628309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c907ee9a9faf5a3b77f51325617b8e232e30b87fd9f6cddcc4aeaeeed5bbf4f
Date: Mon, 26 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769454233
