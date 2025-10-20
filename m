Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEF92236E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760991593; cv=none; b=ew0qMKySx0mWK2DuiInubIA6zQKAU12RxylohosTLuxKYqJXEER1jUBCa8YYOFn7yFBd1kruHbG8evQdYLv0jxDgOZynAOiz89NI1UEu1HFWpYXYLrqhLNDYL9SXOl31a1/sOEkuncfwHmU8nkT0wHufTgX1zh/2dSQQIlC9O7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760991593; c=relaxed/simple;
	bh=KAI5+oNZO1z8sGVAgMvRwJyNc/yJYL5t87jxpSpeqM0=;
	h=To:Subject:From:Message-Id:Date; b=FeKCcNih1lOYww2dqmmHZwGbiS7mztn8uKYyiaNVtpxhpgCU30BIaK/5di+wSBvqOKTfKTt3RzxA7Uk2OqSu1djp/0t//hqpIfCNCBTkxyhARCXVJzVIsyIbH7OQGcgkln5bZVuqB8QMGSpcP0MiLYfeZGe253hmq9OICzNVk/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk2O91Fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk2O91Fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A010FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760991593;
	bh=KAI5+oNZO1z8sGVAgMvRwJyNc/yJYL5t87jxpSpeqM0=;
	h=To:Subject:From:Date:From;
	b=Yk2O91FgAFqCYL8r8YflGmQPeEC/QJFXa24z9QuuLO/Z97XgsRiqJNsqnJyK8+bEb
	 8ZFxk/nRwCp63MwplVsCPcBK5tBJXQXXJpJyupNtl8cBOmjUWnvsxQCeGbkH7d4aFT
	 MmEuDrwIGR7nTrsBY//ri5jL3ghzsscSmfyWsqc9hoYWJZLhqXQnDA2scgpEF7shSk
	 XgvmH3ZRkND3s40kdk3uPzD9FlUaWXdai5pjDAqSBsAU95P0Tr9gB0P5Jct+lvwL/0
	 BU2S4PJpnl188XlMYCRdkEu+mIHJtJQc4LLyVpWeacQhDZIlAylxvEJprooVZvDRIA
	 FKNE/nt3Mmepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90405CCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099159358.14186.1014606373064721519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6bf44a6ef929a4b029dcd6f8cd35ad27098e0499deecb128d185b624ae651a
Date: Mon, 20 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760991593
