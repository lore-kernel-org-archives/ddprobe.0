Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352318836
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745825394; cv=none; b=A2s5Txlv6k/YG4jrPv+xBdcHAGVv0Ia8CXg59bYu01Bwp1HTnpZt4D5fJMNG3+9lFM4ujfG8H51cxNWOohnyn3gqmm8smyVnXS2Oj82FhlM+gJLD7+kWPaV7CyfP7rd+F8nY83Oi/ZmkQLhFswB7obTrUnIoM7IHKxMxFWF1388=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745825394; c=relaxed/simple;
	bh=w5W81w7Ntx28ksdgKtDWmA7nsnixQpxh88GWrd1EmQ8=;
	h=To:Subject:From:Message-Id:Date; b=OKxMCzCOM1a3fnh0x8RIUxmxC++ixFdE1zGzxfd32QbPTiMTn4hOHKWfnOZQdaKatEdyypaaxTJmbIE5wAxd95pOmp7CgxJvPLIsXofHEMwvgYp+opk27EVBx7aYzjS2jYYFmSQVAqbed+QWBJG4qCrLC7MmFW3iSyZhdqs27FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmnQD+6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmnQD+6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745825393;
	bh=w5W81w7Ntx28ksdgKtDWmA7nsnixQpxh88GWrd1EmQ8=;
	h=To:Subject:From:Date:From;
	b=UmnQD+6TE3mOMreBzlaegcMlPT7KCEuuZp7SRGbonHy7w9pLqTfzQfgJL72ZGKthb
	 loC47RDqD90PTErPt+jglJOdDDrtNlwO7L2qW6azNhL8hb/u2AKPf/0XOwjWPFtyqj
	 z307Obp50QMDs7impW+RTYztyLBMyCaUeDL7manj9jUNTDDEUlwTkNa3vsDaGjq7wN
	 53cDbOtEWd6oahEyUfYHCyICl7jNF8dJ+cqN7yiB31C9YUxnhvb+Iu/HCii51dxYka
	 5mHcZ6LsCSE4jSdoiEeteMh+p/aSXu32Ceuyp7hPsXGJSs4cj3N1fXiZuLQ3qdyo9/
	 Rm2/LK2a1s4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4B7C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582539357.6119.3622131588565212236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e95b11de5125dab1ca95bc5d40a27ea2a0f28008b3694321e403c6275ecfa0
Date: Mon, 28 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745825393
