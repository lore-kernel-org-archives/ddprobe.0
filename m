Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B184315A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779801754; cv=none; b=SGrCc2p+pXaI1R7Ra/3366g65SCUgBZmM/PNoyj+STzvqa+Kl9tlzXSuYkKluDxYYboF1jbEcXRUrpCg2bGMDThzGilssFDZdMHHTzTrkcnsQzw/LVr1o0YBOwDeYYGB7yeFS/YxXgQRfB1PxZjZlhRI3tz/yYyvSkUKj6fQmiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779801754; c=relaxed/simple;
	bh=TRDAtaztRPthHG39uh0N+q2Kn92nf5k7fL2LgaTEEOk=;
	h=To:Subject:From:Message-Id:Date; b=pmRm87DTcRKsn6jlI+iLOIZAWP1ZRh140Vg02BinFpA9ifJx4sEoUk99T2F3grPE1spCDG3IK1mAxkZFn7Cw1z9sLpik0D93cdhWbfWDNcQXF/RWcneW4PvXWllrUaySF0MT4uu+T93ZKf+AtyKMg1AKbVl0DHj1jT+A5TW8CMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAPn1JOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAPn1JOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7CBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779801753;
	bh=TRDAtaztRPthHG39uh0N+q2Kn92nf5k7fL2LgaTEEOk=;
	h=To:Subject:From:Date:From;
	b=YAPn1JOI+zch1pfNIWsq7eaNVpRpGYP1353xlx2D+sqvglnleMnunLnQIPqLtK0hC
	 VUC8XmR7k73o7w//q2LV2DHIyJSElimDFukp9R1iLHkOgI8ORAIwwOSDrwEQ02UILO
	 rPqbL49vTY4xNtdkcau8oNW5ow1DJd7JNj8RJgL2hAEB6GigO6oBoGnSQUM1oNaILE
	 Qjclz9HmB72qOm76JYmBqZi3y2dl8VXY+DDOT60z+BYUZHD0SPyuZahtCRyhZ+WkiE
	 8ozKTESGNzCQmTBSHps+F0nTrXZqMhjoqgQZeC+4Oremf4wp8W7HOWfiRcaYEGlvWb
	 5zd083hOTyPZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04F3CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980175371.11609.12675185683556661853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655ccaad16ea165a624d7965aa2a11e6cf832d784270d26f79eda0fb4cb37720
Date: Tue, 26 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779801753
