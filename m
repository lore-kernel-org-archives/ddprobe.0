Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9AE3B6BF9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780983274; cv=none; b=KnZ5s09SF+5Ylbcs6aURYd+WHszWa08RVAt6PRPyoJdKsODRYmiLKuPL+8GWEL272ipMhhg9Z7M8yhuL9SDV1q75JF3mAhrQ3sN9xFl7VdxkSWw9GiuO9TelrITitCfjdaNwkPGTfc/GovVyArp6KN4hdd7RrQcFIXZ156qK+IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780983274; c=relaxed/simple;
	bh=sv7ueyqCSfRdAHbuTITO+7VyZ/K5heUthgAav8hHUPs=;
	h=To:Subject:From:Message-Id:Date; b=AtMNMecF5tyC1MPE+/asZiVSxyxO6o5TsarTFyU6BkxkQx1uxw+/UDCx5LrYGY/mfSs4/zP9Zfay6zi6viDgk2BrBuaZrXyTt7NFVFX5F8V7Azmz0L2EOC73CdGuJNxtMd0HYdos2ATeUOfBeO26e2n8M/hXz6svUQwraqC7tig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSp9UtQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSp9UtQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C694CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780983273;
	bh=sv7ueyqCSfRdAHbuTITO+7VyZ/K5heUthgAav8hHUPs=;
	h=To:Subject:From:Date:From;
	b=FSp9UtQ8Bt1ieuHpK51/o+CBkKrJNwyLrDkViW3r4V8gU4pOsQEAKyGCCwM5H2vmv
	 Pax40BQPh9jrEQW/zDn6tNYnez7Ikoiy+x4Zx+j10YXYdjxqwbbOi7lsUF33ZpouBY
	 mFafw8y8QH1iPLu8RIotTEYUW60AjRdv5W1CUymsYzqtmqyFBCMM8lYjyE0tM8dbyY
	 O4sJ2dSMz+4y5PsSsrmwrxrW0yMm6mGy7c6agDsICfmjZvNftDoj9y46841IYPUtPD
	 BxRuyo2bqc0S5J4+Q712wUyNX6Wd9g0H6fxQV+MLUPz6HXvS/KILhLBIzdbQzwjjdy
	 TzWQTnaEPpMmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0F9CD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098327370.11992.10161979412431062634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480cc184d04cdd702ceb1a4766d7cbe61dbf901fafe465ad2ce65a868d8fb79b
Date: Tue, 09 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780983273
