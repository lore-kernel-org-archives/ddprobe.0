Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BF138F927
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778799034; cv=none; b=V49PK48y1KEmPFU3+1xfh5tsob2U5cAxtEHRZ81xzuVEl62OswrvBdt8m7gCQhDuPESXBltfB7MQtIyeVie9oe3aR6G/Jn9ILMG7kaCd/oGhAn5hJ5uhAFWIDkWDezft9E+tuo0LqFVGE0fzM/zErY0NfTjffRuf8eLk8aCI7Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778799034; c=relaxed/simple;
	bh=/AoyBAV1t8xZuUsIlqsh95CKDTdMv9fayzSLGM3kqXo=;
	h=To:Subject:From:Message-Id:Date; b=FVXlaU4PxPcInTPLNovBfnK4XYiGLA/1+DfZUNVimPyjrelO+Gwl0H34Qp8Bk776tqgMAhi71lcjI9sFsIOqBdFqKokkE3EzBftOIO9xRT6naRkSsBicyXZKEHT/S+BOP3YDrfy/XE7eW0QlQNnzcqFBfvmzivERtkFLPejokO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlTIfQGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlTIfQGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6416C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778799033;
	bh=/AoyBAV1t8xZuUsIlqsh95CKDTdMv9fayzSLGM3kqXo=;
	h=To:Subject:From:Date:From;
	b=BlTIfQGEKPTvkPMf6zIZZ6dxPKazkZFViuRhGGKBG8Vx/BiLc6M9btCE7JbZ/p4f8
	 pROEg4mc/PYDPQbXt0tH4y9TWY3h4WTLps35Z6NyRXaDVlR4/LORhQkTHBYmsAFYRS
	 wDcMdP1ENnfVkj/bAF1n46rUhvXwzOyf7ug8bEbGgsWGF8+Yd5d/aNsZj66pFIPCt9
	 jOEyqhIXetRgfERRSdZvH7W8S1WfUwDRKuadPtj9cK1vHFEzY/5KYsKFUTuRkMaoPn
	 jyGLC1ExMn9plxjw6kgSyZPcI/N2Cqk5NmOkiwyfHDb4w5aecNjqA+1EJFD+gMdveT
	 uhYhDW/52imEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFC1CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879903369.12519.1704821515073597150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97066e447521b3fedb15257caf3bbf946c101d73588079788fc45bf6aa42d227
Date: Thu, 14 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778799033
