Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BA6266576
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768185834; cv=none; b=lP2AaPEYnt38mrJ5q7kP3gXMO0L9RgXSXEuKRw1858yziwpMAMRxMLo27JfhO11NV+yIukwlenA6MQxtDA2R21Ni7S66WS0U3PnxM0r+Ikk7BxEvI23rvj/RXNr0uaWnDnrEH4y3aMHPxeYpcaZ7SKDWqLQKV43eIXZZtR79/Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768185834; c=relaxed/simple;
	bh=29GYxS+3/1PHH7j0jmNlBLpUV8CqyxNV6QLJYtAydAU=;
	h=To:Subject:From:Message-Id:Date; b=XXcyxPuIBswbHjwIZzOv6wj23teOm+j7YvHJe7LdIDkgHvoA1AGPmd2CjFePAkkFwGULM2n2gsRBGQ+VRB22TG/ZqkglcyGj3MAlKK/nHEdfNTyPj8bnHfeEP7LhyEj67RqaRmXly4G8K9KaMY+/j1tjMnHmyxM9OkjV9H1KY20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apVfGyJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apVfGyJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B68C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768185833;
	bh=29GYxS+3/1PHH7j0jmNlBLpUV8CqyxNV6QLJYtAydAU=;
	h=To:Subject:From:Date:From;
	b=apVfGyJX2Igw2uXnZj+1+Km7QrNAnBgnC223skz0JmNDBz6o2DMHGRVtvfg5opKvm
	 kqkc+yZdq5I0NoGjUlWKecXudqOkS2Xf5ZYludMIJ7TxXFRuWElu56EtDDKYSGETH9
	 c2rFYjkuZqq9gLSg1FcKc2oVoykF8h4XefH9IUr7qy3wUX82409uVgpUwdBAOxcPb8
	 ExC5x45l9pyzMTZf9sbKTLUPJwn6GD2FvvV9BYcHyW6W7KtXqo6OQzIePQ6c61E7oB
	 Ac7HsY2F2mABF2gWKV+9Iv8aSB/yMp//HM8OV/1qcqE81HrMtnQvFEkqidiqZeXNJv
	 5bEsPl1SFVDbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE0D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818583358.14649.17676695561119017104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577cb82f8f673a2d69c4b6813604de4236ed8a35d361a7d5bba9392f049f3dcc
Date: Mon, 12 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768185833
