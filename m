Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5412D876B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774029894; cv=none; b=p2jRa+K3t6mSOMGM9gk/5bA2X5rnFBN3pBYnwZTDvk/y7QQzsisK832NhhT7vjNrMsZpas+aiH96oOeTg/Cmuods61LXrIWyNTuxj/ZrBxiFxT9lOIolXRbf/QSakhvqtldwlr8wF0ippXih3tDnwwTHS+7WabFtUdVw6W2CDs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774029894; c=relaxed/simple;
	bh=Jnvy+PDo3+Yg+CKrNQSdkJy/suIcg8nzUUUpdpokKEo=;
	h=To:Subject:From:Message-Id:Date; b=Im4pTjBWD0auB1O1V/kbsONRzpSciSCD4td0WEP2foaFhzukg3py/s4WSak/EL2foJfsFyygUkYrlnOk4JoGTTI9ke+c2TMNJjg5VbHPdFbNPdn7sKKigOhGrqfCALWvezV4K69e1NCMWZRMo7mI+UByeyMrBYDiddx3cfpfhNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icIPrToS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icIPrToS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F145C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774029893;
	bh=Jnvy+PDo3+Yg+CKrNQSdkJy/suIcg8nzUUUpdpokKEo=;
	h=To:Subject:From:Date:From;
	b=icIPrToSpyQI6RVQTdCOTzm/UCvd2QM8fWtk6EB3DsBAzAtPmUyh5oKkh0dPdYIYW
	 /vqLpX5B4q2rXvgYcbLq6Jidjd3m2W1SA1P9kopLKbcIyLloLxovPc3s68QivC7pWk
	 zHKc2UA/vqn4ZPx4u7nmKjsHEvurzLrCSbW2yHluYroSyUB5MBkAGYXwelS7OE0bLj
	 qdeYR0rcUKRzYm4foBwZpTFroD4WBGT0MO0wRyUtv7uKtFofhCA2C+VQ7GudmBxBbD
	 WlTlKLB79zf9ExAyNJM76xEnyuNjo7OidSZ8af1kBGVa8IaYxLUllNpPVtCeVCHse6
	 bmHHGuJVkr2zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB011099B31
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402989358.7679.7204018750981535239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08dcae03dd3de123d52d7f66967cefd772fdbb7b81a3dbdc5c24daaef77ddf6
Date: Fri, 20 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774029893
