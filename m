Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2885E34BA37
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759722594; cv=none; b=h7PlGbxc4mNVJacBgfMV2lvkzBguqtd9pl0t1mfPrC3Qx4Lt5fZD0GToQvxMgwhHrde4L8qlRrJW2ZqUIYTAWnogh85eUheErsJrfZhc0mU2nUK0gyI0mlD8hkD8j0nFDyzVSq0qiXTesAHKUglG8SoYlhAeAwFbkGFRQWm48j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759722594; c=relaxed/simple;
	bh=SXu2iBIgT5RrPsRFmeMbeo/uT8bhiiqegY3iDqQyq0s=;
	h=To:Subject:From:Message-Id:Date; b=Jpsf9yO+pMd7Iq9lUj3DaF1PY+RORs80BBJOBDzl14qeD8QogWkEuseit1S4Y4mYHQw/NmVJ7Fo2uu/RmYEpgl/VUKDBEZF1N5It8KJt3bhBKty3LeaJ1I5AS7OcHvX4+lkO5xaAeVCkPJRXPjYR1ijxj5poKZRoEaMemCwKP7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA0Vaeqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA0Vaeqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A22C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759722593;
	bh=SXu2iBIgT5RrPsRFmeMbeo/uT8bhiiqegY3iDqQyq0s=;
	h=To:Subject:From:Date:From;
	b=LA0Vaeqqb8b1/N953bSi3QwUNY91xanWHqOv34nLG1FIdrA1Lz813TjmGfSu0+S+s
	 /UHYDJDGbN7BRHTcJBBitZNJTb5/QuJ9ayPKInZ0nBvdo8GvmplSFSjfDtJFGNYY5U
	 7zj19xrib8Q1hjh29XO3PqKGDScu1CVRliMh1MpTrUiMbMgVI3tfIk1v4gDqgenUOd
	 gkc42MW8Ld4gFD6xQumv/BZ9iMjcLWVtWCV7n+iAOx3bhLlp9Df1F+ciZQ4ZtRBTRG
	 E7APfFMaS/3wcCzTr2T8RzjVO7Zd8pflQAg13qmvNngd4Ldv5nwHzcvRN2GdoHosND
	 Kz3S5RPDDto8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92138CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972259357.29674.7332982482362164915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12357f23551b3d031a23f1f9217f99e96eabd93cc438f31e81d16fe536934a82
Date: Mon, 06 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759722593
