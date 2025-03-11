Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D20A25F7A1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741708734; cv=none; b=Tjqeat7ekm28J2N0XHpsChfQHnqpMFhWplxUni83fRtjW90Bk/q2/sbG7MqoGCm5quMduGyEwqgdJGbEeOKPo5WXuA9brhCCSW8Cevn9EkwndZN8RRXaEuPbyhJJFauaLgtgk2aI8Aa3+VfoSrgaSis5XdQ2hWQmH1RMrqpdaQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741708734; c=relaxed/simple;
	bh=CTrJTCPhZbizZHMYyJXhy1S1NnfVwQACeskFn2rKMZM=;
	h=To:Subject:From:Message-Id:Date; b=s1Nr/ljNpCSJQWvKgnu2UTeFCq9MGNrif2qRrVX1MwXo5301gcfwRbt14qT8ENIJRLeUCg1EopWnIlUdGQDcfMVvtZ0/oT6CKSULaUSfUj9j0q3Gd55tkne4e8WDt8J1mGQz3tGp61L9BLxBJJYnrLs5TztOeZd5KC/IeYcZnus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeRW493r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeRW493r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C77C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741708733;
	bh=CTrJTCPhZbizZHMYyJXhy1S1NnfVwQACeskFn2rKMZM=;
	h=To:Subject:From:Date:From;
	b=EeRW493r6wRk8t6UL23FbmGoEm7raUnzYIfDw5SjIJRTQFIwpvu0INAwM42WHVzmw
	 FeAkqMVeCCiRFFYnlfnqfrsGV3IGY+BnNI/YGqzUhzUDVKudlaYe4nPKosCcl/5FEx
	 0+4jT1Oxhz7h0Vg98tR2tkSajVcVDXchoPCMOpIA09NrN6YdYKvieYGcWOO90Z0btu
	 JX1VDT+MatVWVpJ4Pdi/pQkT5JdDrl2wO3b2tlGm8nLtAB3LG26GRKFUezgN/3r35Z
	 06ErrNHIW7YF9uBBi7kxNmK++skFb9zu025RpmlWfWerQjip7jSUJnuUWTrKbu+LU3
	 B1Yq0a2CArHFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93710C2BA1B
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170873359.30382.2638713941398562601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54dfc1335f284cd82cfcdde0b70045baa85afcb302e7458d8c3c870eb8db2040
Date: Tue, 11 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741708733
