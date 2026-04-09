Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CA026B756
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775708734; cv=none; b=hN5Oh97ZzTt8U8IYP+mBn0KvJatUdOnGISR3G6qIvnMh2Op+s5c1nKoGa7dlA1BYNRrWheneGr1CHtlMBfzUpgcy3ri08lbf574pVK+h40r8SPztTh+/aMqsgHd1SgJ16HnabzhgXvQpZT8erNd+6JDWADWEneDNpp/oKO0nMxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775708734; c=relaxed/simple;
	bh=0s/Tq4/uCv7B2G/tPTgyvK384pWCmgyms48gi69dDGI=;
	h=To:Subject:From:Message-Id:Date; b=QgZLW0TYXSN/YTDajOGJkvj8fy2Uioob9HItmAJTdg6afeV2n/3+qGgIKUiGZHKYaR17eLLuq2oI/S6EJxEnrfU6B6PKxPm2CQF63KsX+RpbVLvrdNs4wykR+Vv9+GGlEXvc6rVIVwhpqs0j2F70Hao/JkTA6q4N3Q4JUbZC/9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETDt9HDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETDt9HDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AA3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775708733;
	bh=0s/Tq4/uCv7B2G/tPTgyvK384pWCmgyms48gi69dDGI=;
	h=To:Subject:From:Date:From;
	b=ETDt9HDcIjbTietONzITJH+ZLQd4s0QL8N1Yq7rQsQsBVnircQbIMnCT+vFtE/muV
	 TnSizz3lMK0cPulbmEHk9FUDmXXpblzvYhCcDLZaPs2d1JjVuTjIG8wj1b6vibUV+u
	 mAi8zE+sH9cR9BPyRbbRvrzXEkNaUhncsdQTEMxUC4EoZLLFloRP51D2WTfEb5cDyA
	 3HLMJkleeI+x5qrgUSjYLDBNXBQ6qbJjlVdRHJL0Aag0Vz0HMIF8ROAxmPvvfJOJhO
	 n03/7YLTMwdWxE5XpUe6JsJd0jn54sC9P60/1d8qTX0YUo705utvE82osy6Ve+gzge
	 i2rPIBbZFfwAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0766E98FAC
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570873371.4403.1328194551247867555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672042345b0b8d9a75fa8dcaa4290aebc516005a78ca7de9b717c10260e91071
Date: Thu, 09 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775708733
