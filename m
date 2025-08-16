Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC2623ABA8
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755349794; cv=none; b=mSz7kpvYJOhdlb5GqHg88xoHoxw0+B7cDznNH82h+9u6MDASb2hTAO3p6djTix6fpcEGBDGTZmtJgDvA/Av9f5v6RFc8saLa5WuAVDwXfCLzz5GGMLiQdMYlwPBxnzVhm3SfWPoJm2PPzQ/bCZ2b1q1+rjkuvdCHaUVgVnJpZxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755349794; c=relaxed/simple;
	bh=rPAKe+v+QY8rcGCEanwwjug4z//Jw8+0xH/dPNE9OR0=;
	h=To:Subject:From:Message-Id:Date; b=XhrfwnqqADWc9/YKRi54v4NQAictNjj6B3/ZQkcLO9+b0yymSWn9ghQkHPJJdFlo73Msst0KJI2wv5+gh3cCJSbSuHOZF7tZr/Fr8sZQSZs4idWPsYshoDVHhSiyy05C8Zw1oxAMZsLIyOsi+SRgjkX/O0ACHvRfUIJm1g8VB2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKcLGrbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKcLGrbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1524C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755349793;
	bh=rPAKe+v+QY8rcGCEanwwjug4z//Jw8+0xH/dPNE9OR0=;
	h=To:Subject:From:Date:From;
	b=RKcLGrbeK/FLcK5HZciyYGteHOhE6PJuI8bX7gkuwRqZ2CAUfAtcW4QnNGdBn7vpz
	 Li31qWUJev3ISF1DUJSRMa5u9CysQemkmmQNJXlDpMR/EAWdTpnZzJIgHK3UNT96P0
	 nU1KV0/oOmnYSEp6cjVBIH8Rr3jegrCUbIkMGzhab5oLY2HtYYvE5WiNsDaKxpXqkH
	 +PWApon2gLDChVlNEzxs3VZI9PmLPzSrXYEHPAVV0G4y5gIz1+7Q9yOBtALX2YE3V2
	 K9qWdCY8LlPzBtl/hD+dB7OMv/X1gIkKcbvqzKtsy17ZNlpOZ3Lww4pbmH5W1sNqGw
	 papm5JInMqDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEFCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534979358.15023.3004694208650214207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a6a60ff934a9560d38ce7f16f93ccf097bbbd22c42cc4ea22d0a20dab4d815
Date: Sat, 16 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755349793
