Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695AD2765E2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781357794; cv=none; b=g1ssUef3D9tcK0wvUvu9EW15GJPv8mRuyONakIY9qniaymGzdUM6BYN/1Fds0ZWtuXZkMMCf1l7ZoWk3Q1uYyz/CqYbSRRlR63yO6LbWxlRuF2AUJt+g8ER0Y5XJRZx85q+ZAyQB+KbwGIYNSBL2lHFvw5fP0WvbqhFsOqWnATg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781357794; c=relaxed/simple;
	bh=K2JLRBYS7s3tU9WEWllUElUq/hdsUiEcWwh32sjkBSg=;
	h=To:Subject:From:Message-Id:Date; b=VtM2lzz4gark0vbmjxjzGPheYnvOxppCrlKTKd/zwmPfbhu7gV1uJNYQqEGn8Bce2aXFQcxGXrALml/WXkhxKNDzUeOAwqqUkHdeSm0d4eMCQVEoa47YkaUM5URapAClc7Zd3WXlx1wHGwhzr7rZV2iUH3QFg4/9RhUhwrU3Ma0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdgWrYMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdgWrYMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C990BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781357793;
	bh=K2JLRBYS7s3tU9WEWllUElUq/hdsUiEcWwh32sjkBSg=;
	h=To:Subject:From:Date:From;
	b=ZdgWrYMsa2odD169DZN5uShpI7xhH1cn/DWUtdIppqGx6XAwQnnBUnENY4VvsNuJm
	 TXUIpzMaPOQg1tXRPwxNDktPuTBqFd2OlGSF2U6uK5AIt7ZChM0kr0Pz3d7xBrI3n6
	 FWg0LthPyT1sEpjLQsH7xEZduzgaDB1qV9k4KKtnp4WfZaos8bxRFSh9Tg+Jrc8yWu
	 P3+ULrL/a2bqtFevSukfpwInd3xtAgCKlwSswshUzMUc33RjpDh4VYls2qD/suTG9D
	 hjsghTnth6BkXIwblohCdcymi2bxrPEtdPVYh2FJbrQc/mweJ3zxima33qfASuTJoW
	 Bx+gGLineoTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7BFCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135779368.22497.13703885153639844086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c84ffbadde2e7e47c2fc12832d8906a823341eecad0467f7b07e36c1fd4ca29
Date: Sat, 13 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781357793
