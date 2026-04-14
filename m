Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF48280318
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776137254; cv=none; b=L78Z0EUjjVgmmxoTbE9Amn+yOA4kMZpVg7/bklEdOu3X+miKGkTy9jG/N8eUd4GobkcxQ1ntwKQSBkIme2YAPXWZQdsjXyJb0ePjlxTeUvnbtKrQdu2gMvONf6MmEzPW56p1Xgpyz5mNdp4hgcXk3Dkm/AhAzD2GT++J/xQ+Y8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776137254; c=relaxed/simple;
	bh=mwyZIqpqkkZyZE1OguepVh5LEpmi5ce0N5ZUyiPscVA=;
	h=To:Subject:From:Message-Id:Date; b=btSeTvC0AVr5bJCnnvZnAXBmoJrAnP++TqtneNiE+1PZRk5tK2uAmMo6yYXExJUj+Ex62ZUE2b0cRrI6NBqUOYRPhTxcOpQAIJbwiIsbB36OqeQVQw3kk984y1TUrgwh/QroDAfORTuVQAF2Lwfjo36vEmRu0zpTeMfS2qvpIfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qStebV2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qStebV2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFBAC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776137253;
	bh=mwyZIqpqkkZyZE1OguepVh5LEpmi5ce0N5ZUyiPscVA=;
	h=To:Subject:From:Date:From;
	b=qStebV2UFS0fdLg59bUOAnQnFT4It1CCgYy/6LTrVzRzECro2//M8fR/TCE5EO2Pp
	 8/HfdiwqNMfOUAdTv9OznwY3hsAFYyelOEFYfMekD/+g3iOFUl4R+oshwF8W8MYgPV
	 JBtATDIk+3/mCDDAeCEiqpwzy1U2iCXpEjQ4ONk2v7JaAgxOZ0I1PF87iN5iqnwx/9
	 2kdSADQ2dv5kbxNG1ikhXA6/kyqlzprEjbJi1ET24AqWzm+colPak5fDqctRco38LH
	 2tFDOKLHm3NSlTI5kd21bgkt1tPaSDwypwdJALwi2nF9qDExf+KMqgWS1g0/QHsj/J
	 /9GtjjIQHD0zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC31F531EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613725369.4005.8200935074968007542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853886f57b90239ac4bb9df1a0785d34e05786a94088ea1412d685a3a92a8243
Date: Tue, 14 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776137253
