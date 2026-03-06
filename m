Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1592F333442
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772790294; cv=none; b=RFZ8iy2uxxp4qQSOd4Jqob3cvCB5uiYj+5cLwjfT5XZ9QRjh/+GhT3uiNoZWOPkIjtxg3mwc433tGggcBZrjs0MrQ4mCzhnCl1Toyv61EHhKLq3Rt8nFZQu6sJxTsUfr0spbPv0PeLd/LV68OxEjzENMGmF9mVuySWzLVbPNU6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772790294; c=relaxed/simple;
	bh=7UBhh8PqKtM6WVE3yHEjM/B5qrHDRUJVmtvdF2gpyGc=;
	h=To:Subject:From:Message-Id:Date; b=k2+MIGRW/AeWfg5BFcgmwVnd6wcYbMN2Nopk1jcF2eU7mAWdEwm387ZKX8EtwLSjl8UBRDWhMgQeV/UUHrLM1BVgEVwM9fFeVBFEUA8s7ZsXojAWbJ4IaR8mZXy/4Bw9E6pR4XnzRSWXey0tVRIV1pche1AiqoyARk5nsBaIJKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeUomxXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeUomxXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA094C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772790293;
	bh=7UBhh8PqKtM6WVE3yHEjM/B5qrHDRUJVmtvdF2gpyGc=;
	h=To:Subject:From:Date:From;
	b=aeUomxXJvELjHRthNG8bUbVcnEskvRDWx2eOlwaija8PFT+TIZXseZFU+JywP8phH
	 W6wENPhs6f7ct9+NPesSjyU9VgkALfE1uvDJC2pc0luu3/tie5SRlHRuoDioX1UTnp
	 au3+SkHRn8lUxYmTe5DMHAMmhmKCKF8eewSAo54/vmrVeIGP8Ziy90THtCNjVg1usg
	 G3TG0J2lkoh5Tac2tMzU0GuCHTUOCbVcbcv113r0ND4ZAnl4zNX2w+3zlie4BWvYN8
	 KwC2/I+fNjHYsBlcC5n+zYc/2+YbOCXAJnA8Y9XLvMFANB9AH27/myxoZ3Yd5lyi99
	 mJ/inSosXcjXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97851F0181A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279029358.9577.10655297594221284652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d55c2dfcdc16b2632f53bbcdd12a3ccd4a0003e500d5a055e1fcc3bc21bd94
Date: Fri, 06 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772790293
