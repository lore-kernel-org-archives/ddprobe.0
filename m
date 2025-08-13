Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B96530AACE
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755125394; cv=none; b=ezf0jmgQZb2MsGP8SHZweD9/lFWe+oSFLIucn+0zU2OdJ9arieMDgxtFfEElKJTQwTCvg4EbjIrzS25JehKHguRBq9ocRTWy3+1rxWQ9rzePoRzrG4fqpqU4bdL/KqtiZOHT3I7q/v0ykWV0w2yT8lOcRwr+o51zDIRSY3NxgUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755125394; c=relaxed/simple;
	bh=kyOOC5Cuiw70apNYkMqttRs1d75Cmp2zDHuTetJCMZ8=;
	h=To:Subject:From:Message-Id:Date; b=mTEnS0aeha8BEEp5a2rylF7MDclSVSQGofBxhIzqcfLt6e/nlJ9Wpp7g9ExvR05B0GdhTD/r4VjRCnqfFVuS9H0fFDPsy9BfFjclvYcFx3BxBVzJ40VDfjcGwrUr7jjfN/sxcj/a8ShzELLpQFZXneIQXpCSQhtTHLq1sunKE6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAfEXZH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAfEXZH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1332C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755125393;
	bh=kyOOC5Cuiw70apNYkMqttRs1d75Cmp2zDHuTetJCMZ8=;
	h=To:Subject:From:Date:From;
	b=BAfEXZH9cgQcyI6lsx3lmR/z023LhwPZ8jfh7K2GEKmn66ybi0hXcAkoGXGWFrPxW
	 Z9CXdlVZFeC2NQbJugWgrTF0wslFmGiXacWQamY2WPqvaV+YT2bSW9HWvrUlrntzIT
	 ti4UGVAbGNcwbujQa7xvd3xTLUozONPZgq0qid5M/5W+uN6crvnrq/afeGZuO5UmGx
	 h7lLgrKGr0qRy/O+3TMLfRqldlcnK51MFzQPOvdDPnInyzgYq3QncyzMwXK3wNHpPz
	 YRn9nx/cj4SjoJfoUUz3dWwrvo5NLerdZjrKxgIsK06Z7fW2y5c17Zye54rBoUDqPu
	 PJQ2rE4qDATDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E2C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512539357.28540.8400206847085557980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9bdef1a1bcc4ddabd8e5b1ce5f8f66e524a4b675effd7c4265107d433309de
Date: Wed, 13 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755125393
