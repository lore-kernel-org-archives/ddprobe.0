Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B723002B4
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760474394; cv=none; b=Bytt9oMdGWmnR/LqsR4E8+nG5Yl08DQSWkro1U96cUZS6e1clbh1sBULdON9bs3pDMCwyHU+zIu1ruwfQiPwuYApkI9La0ruce1zo7CFsf6ETdXeG020fN7gXCYKy6NBRIjbfcbUBbwdDFo7aUtg8tDxI0qq00q5vtS7zu+hSnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760474394; c=relaxed/simple;
	bh=vCdcxty6slSuHHM8aYT/7NKTFjPoUeFduAtwz9inS4c=;
	h=To:Subject:From:Message-Id:Date; b=UPss4fGkIXYuKKwDkBtbN6+XhXtNpJBBImTq7X9QrHN515DxqEmAeTxc43z/RStHdbvVXxl7ossCGn/mQAHznbkF1ps6Hybv1Wq8gRB1WDyb5WMoJ3CTTIPkHmvpFiT829PvkrSg62iKSKZFN4GeOWkoG0UjgvFv7p5D0VgQgEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmSsATrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmSsATrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA75C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760474393;
	bh=vCdcxty6slSuHHM8aYT/7NKTFjPoUeFduAtwz9inS4c=;
	h=To:Subject:From:Date:From;
	b=bmSsATrUAjKk2xopTGXVBOGKhf676XDq9EgoDjAnnvazDjUzihlVKetYZ/EiY/x0F
	 AECdWFS3+MCRl+3b3NxKgydZvWVIDJooMsY0cRwCLoCsfGUI62Ea301r/JWlfL/tfV
	 Av+9w5WtVeAr7F5UzypSFh7p7tlKdnV068yj2YdorysZ+pV/pCt9+zIwyfS2d72+G1
	 HXehMUC1j4OSf9MTydpjvGdtNJCmRncnYdX6sQmZkyxjMUXyrzvF0CtcEMOvMlcu0j
	 2V6jTE5eEHVgUuLd6v1Ki5+lJJNQc/7zjw6ajlCIGqsa0hJM9hZSoQ4BkD5xhbA4Hd
	 jEywhR4qG4CNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBECCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047439357.12121.1463887324862623234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c27dfeb672b5950daebb2dfde1e273a51a89df5b401f18ae4b5c7677be5c48
Date: Tue, 14 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760474393
