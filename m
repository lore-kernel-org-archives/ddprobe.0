Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF45228DBE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705593496; cv=none; b=kb8vIDSwRok/ZZ2hcoRvib7vxyWInzxQYmK/nIxdS7V8+KTT/atuGDodrC0AlkrstzWuFWjw+2CYK6MlAyjxxtQwwtHFqdSdKYIgR4vLb5tqL3+YfkP4RyZupBWiBYWyemmIbOAft6h0vWRmSJCqN5P/2Uu3yOuqJuBSeG6R+Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705593496; c=relaxed/simple;
	bh=GWfJ7nZpItN3Xmn/95DGPCTpdZESrDBViXEoTG+7Ghs=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=hyAmH6T5Bk7iiP/1YQgAycWGFAZyQAnsaCecuzySqKRdTlB0jkuq/L76QNiiYbXB0X40F3+JMRb4QA5bes5ULAFVQUlW+WLtTeAV8rQAoumYw/Lt4imzKcgKDwHJ6YCkBhXrpM+e3+olWez8mNDEvqXnZukQKvzqKuWC0184IIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c61dMmXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c61dMmXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C13C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705593496;
	bh=GWfJ7nZpItN3Xmn/95DGPCTpdZESrDBViXEoTG+7Ghs=;
	h=To:Subject:From:Date:From;
	b=c61dMmXGE9id0l5bNOHaU8k1S+dSqemvRuc1hBFxWFdJwdX5WjRVwrRh+T0zKlpdk
	 npCyIbT7dFbIVd5h5KSfZF76cHalXBYX3KKBgnD940xX3PAAfvyUemUd65ajedyBkT
	 kmu68fAR18Uy73qREKJ04hP7H/H1hvHYrQ5dps0HWsMT6PDRhECq5iP5i2Jsmbvwqm
	 3eGYc5NAiNWFOccLx0op+F4/uD88IbchCIVOMPDreMfbTBeObgAdIQtLUQ83UrYHOr
	 +NhaQrnP088C6UfRKIHrP/NQYrjVTJHPx1a3+D0JW1MA0KfjfTyBjry5EuQRtr/VZH
	 mtTEg4WU3ECnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B70BC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559349636.7008.8924700201778570751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824e96d781b4f1598d290ba9218353db987e2df996745ac99863a582c22ffd67
Date: Thu, 18 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705593496
