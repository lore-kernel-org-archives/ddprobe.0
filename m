Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521933EC816
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789427434; cv=none; b=IH329X2fckbs4sdUPM6cyHyWbOVF1LDQr+nhbnImwQ0wiORH5ZN2cSGXZNAGR2X82FTfUbl4ujWvX2w2z530PSxQ81FZs58v+JeReKR5Zv/RZUPuq7+nfP73EMU+nVmaCuMHKerxWbh+q9OK6fvWMSXEo3pWApXuDyIpFjjQ2YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789427434; c=relaxed/simple;
	bh=1YbwPTG8S5oejRrkqUocQpGhKFwTkjZMZdoizjx+WkE=;
	h=To:Subject:From:Message-Id:Date; b=Bl58qMEIWdQ6n7lonxA5IxhFOc38oVkRfz88SCaUA7msgtbnzE3zfiE+KH7YsgIIL5Hm8+fP8KfEewE7GuKXf31PFVo3KLh/itMnIcFzBhJkCR03fpO2gEY39IVYtBTCJ0lbvuI1LkyPyKShdHahy4OaT8gUjN9N2vOjPJ1mh6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgW83IO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgW83IO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BA4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789427433;
	bh=1YbwPTG8S5oejRrkqUocQpGhKFwTkjZMZdoizjx+WkE=;
	h=To:Subject:From:Date:From;
	b=jgW83IO0SUJS+WXYF2DSLHaYU7ZwEWlh+0s8YCI/Xn9vHdDG7Na3Z65REiZ3sjD13
	 aao9br7obEzg240s6DTU4vjmXtehH8QQOyOGu7ZJfI4XajjLokqIKWcVgu6Lb7zNSK
	 2DOtmYPS79kx8Aw3cAcpZGQ8QMTjQHsyk8mz6dsA17g60JdlHlQBAt213QQ2w4YE5V
	 PNFimfnmdnqtgHusAT97aujAQ8+lKI4D2FqT+Cwu72IOr5UjFv0UZ2DJrddGq61tr6
	 KLKL0JV2zqC/ByVjRggTrRYU8Wy1I5XhLOuNmgstZhEpTdJlXkrrhJGl+gB2nYs6zJ
	 8sEWJTuCw1Oow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CF2C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942743372.11342.4647101431694271472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713e1b3ef1a56159cd2731e08b2eab19f8cdb859c20e1dca92e08b18fa822945
Date: Mon, 14 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789427433
