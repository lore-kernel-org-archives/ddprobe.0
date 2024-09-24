Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251FA14F9D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727217954; cv=none; b=gSMsTfwYstQHiiltqX/fjW5DBDl/3zRznqbLwfH6MAiOeCxIYE3HcUOCMdQCs31NT30zNcUmnNkNHheRK2ymQ6pxMkcT+WaXXxSv8kNvSqXTmFyCuwS2IFGdFaS6q3ZMsPg0OjLEoA3x9Ui0fIFsE7OIepPq0INYEpaj3sb9zH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727217954; c=relaxed/simple;
	bh=r0YXQbWS4fFYsY9tbAkjPEK1Af2nZ5yxpARi4faWUtQ=;
	h=To:Subject:From:Message-Id:Date; b=pckSCyyV2at3kvmqDmzVBE4urkOHzp36HqKeeg1LplzC3jDOixkyNpQJG4KfxjX+86oWREbmLEowuDnttHLm009T8t1Q/N64nNUm+EZbKDOrxS/we76WJfGpvMjy7cVoqYZmIniTDh/pEavtsqQsAhQRnuaWGh8WH5xCiaKGrmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md8t5kHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md8t5kHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4163C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727217953;
	bh=r0YXQbWS4fFYsY9tbAkjPEK1Af2nZ5yxpARi4faWUtQ=;
	h=To:Subject:From:Date:From;
	b=Md8t5kHrUz8iGNdkEMNjCxj+4AU6VfmskhosMMKKTGbJHGevzgzcs41TwrSHLo2hS
	 3Mt26zlQelLJf4YTMQrXHxvSN2WNjWtlz5fEmDXVL8dCl5tC400TUmqBR43C/0KXoE
	 6AEkZQtrUUQh9/frmINaYnX5CcK/cp2Zjcx+fJHB8QttKnFGPXPgmPB+CAaOk2VFU7
	 WKboXEHzGNArrajVv0AkvG+FujA0zOo60en5KP3+w6R50Op8zcK7jsQUOF/XXEMYrY
	 rDsYRC/liJexZMfRE7WA5Drj42s8ck5eIKyiJNKgOdbs6Upi+aAN57S8g2HM18bF29
	 8Xilnd/jiyymA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91395CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721795358.9273.14736377691500563523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a008ced18d374c5bc10bd6b3a46c99038703c7d7323b4c44c0b3f58c50836c8f
Date: Tue, 24 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727217953
