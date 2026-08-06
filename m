Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF66C397E64
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786001434; cv=none; b=jCdO73UsWeV+FsqxI6NYZy8z/AXNXkrhFp+cGyMFgNHMTd4BjJY0iOwObJEPp/V+H2H9av8VV2P3IvjUYaFDgiNd0qPKJs8asubyl1M67H0PMQCozUJc4dFtYPxaMoVtQKHME+b/07OAoNg5l/FqlLyrIXGR98h2DRR9NNN4ULY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786001434; c=relaxed/simple;
	bh=qGBUxd9oIN85RNo4xwXTsqJTIum0GXsR3Y5D6j6Zl0c=;
	h=To:Subject:From:Message-Id:Date; b=IhHcwyIIp71mKc8peoGJqcdBLrSMAaIQxhubciaRBuc8tSC2Y7JmVotnxcYB7FymrXmQD/UxR6UBJzoKMZZLcvqrIa59eV7qOVsaJCQUvOXLcJ3bzulU+oMM7nINK7BMPFiNNkhpJB3EXBdwN3sT+vcgqQOi5CAn3z9qRJzdUG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khHQygGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khHQygGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87ECC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786001433;
	bh=qGBUxd9oIN85RNo4xwXTsqJTIum0GXsR3Y5D6j6Zl0c=;
	h=To:Subject:From:Date:From;
	b=khHQygGiwIHqcpYzLks3aYs5M1XJ5nF6q1mszXoT5xOydmL6vlN5b+DXP83FIep00
	 ul2Qpa08tXXhqJZt9toL4rkvyqN0EZ9DXn/twzwhoQBw1lW5ZMa5EGziRye3fU6+By
	 EROpo8jjcIrLGRJXm3TsJIt3XyYmGs6VswPi7UQcsJf83lmhLyNVyIQSphxS/yyf7g
	 X5wQ0VRvY399BdnNfHE5BkhYIak8+imWq89x5NoOEklb2TxAiCzmaPG4+4uK7zZ7aG
	 wdvPIiF+DDsWt5AU+zrDUMBRsvoWnTX62M5FS1yKbPYyRmGRRM8NRor8TGcpE5io5h
	 l6KGt4r/7JHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05D0C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600143370.20340.2006857785498664343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196ff96535dc4574a7d8645650165936f4ee2594fae708cd2db4a18c95b375f0
Date: Thu, 06 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786001433
