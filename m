Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E81DF73A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769846034; cv=none; b=DXUoU/xDyHp3ntgOqAwoOn/FTeQ3k8OZb9iTff3Xr1x0rE5pIk0g+F7bMAKmXsb3lXxcwctYahPT3Wx9WPU4nJKOJXXyQpjivMEXT9YBwIc0ppgpEDxR+hxnZuX29EV3qEXwLLnD5jp/h0FnbiojRSlZJEXV2Zxjvn0PkoLx7kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769846034; c=relaxed/simple;
	bh=aWzMutPcTU+bKwyGeCsAEWQ7a4+fkYPsaoHf9enUtXs=;
	h=To:Subject:From:Message-Id:Date; b=T6v8sqGALlvbOUjjjBBYUE+2wPFyBuROdf1+qfpqKN5lXBYG3mqeWpkVSyW4PjKwkeQ3/KXI0aFnAOJ55IH8Tgjf/KWeMbLXhfuMPqJIMyaboJfjGhtsDRzdX3ctXasIPbRaZ5GLetWYZb00yLlWZaWhNIMQvuLcOzgXUMoTPqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAn0UJ1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAn0UJ1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769846033;
	bh=aWzMutPcTU+bKwyGeCsAEWQ7a4+fkYPsaoHf9enUtXs=;
	h=To:Subject:From:Date:From;
	b=AAn0UJ1hgES0K5p8vlJkBRpGjjHWC2ayPFJP0aL4nlFGEkwU4LGcha/sU/ouqChhY
	 RXhmFtyzt7MUzzGYMH50Y5RWUlhJJ1+qJsdJNr9r+7mO84vefUItH3LmYQsJEbxbbH
	 1SrY0vNBlrocOs0qnfRgZGlbdAh0hDmL+NiFLSvYEW+ptZCANyaAbVBcYt9NsqJKNu
	 /MXN0aTJZZgZjffZW8Lf0exUA6z8SnkfhoklqZ9qdNq4XdYxQwR3er/OXQ/kfCDWQ4
	 8mwEAE84GHwb7mNGis4M+QRqXnmwKpDCXGRfR16OCdVgFn6vWfGB41O0Knq4GtjBxQ
	 DWTbUcd1P0obg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B92D79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984603358.9517.11391900599413473503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98610f764ea37695f5095de57dfe554601a9e2bdeb2c49f395924f40c769cf6
Date: Sat, 31 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769846033
