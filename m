Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA315687D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783870714; cv=none; b=cdpmwZl4o9X7zluYt6HtvZhni9etym59vcKOUoXDidR+7tx9sZkHcDrNiSVo0Yk8IwY77IYTaeqbLL6S1Es5/eUO4ihs1r2MqCZs0uKEE6bzEUY8KGvUqbv6GQiWYCIu30bagndjhgNjjojMmZOypRejp24RxsXqaLYJZ/RRgaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783870714; c=relaxed/simple;
	bh=PHNU5of8VfPPZYqugMTZFRutKiuagyrWZ1l8nZSzS0g=;
	h=To:Subject:From:Message-Id:Date; b=Fwr/X+zICoe+ec/QgvNbiiRXBgu1/nBq39t3K3xIBURdEoRowxQzjh966333qHaUDnCdQDc7/j5MSZv1smEsOEgw1W+XpARPCgQ08xgTMq7Lh1yTFRK/4XL3X222KpzbRMRqhPafq2XwRCxUX2zvJsFsufOUcnDulq8rm2BTqAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj5DAYHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj5DAYHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05F0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783870713;
	bh=PHNU5of8VfPPZYqugMTZFRutKiuagyrWZ1l8nZSzS0g=;
	h=To:Subject:From:Date:From;
	b=Aj5DAYHACfNKIO/VNCM5k4OO++jjTNFNuJlhiHBNSRQTswTNnn3+BmQf0aDj7B2vw
	 XQKVvNZ9uHIQeJwox5BDqwFD2f350QeXy+YFBa77XKp/mGKcSklf8zb48X2FE0uzXr
	 Mz/q0Zyv5UH8KotYmjvomtdjYA1zFCAmKX+HJY29jzIr2c0zuCGmjnFpNimxFuZisL
	 zRDLS5Z6GngzY67zlOZXdAsLS1MRaUw/bolSzcJrciHwCUbakKyhPEyjAT0mVpaebZ
	 LnVT65S4IBfb6aag9fTFTWAOxCxN9SLNw83K9TZdVJYm0NHHj4vcihIsO1kLCWj76c
	 I35zuLJanL75A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF09C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387071368.16651.2625877151861565367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab8e3faf638891dbc1420ea5c62752bb4997b1572067e1697fc9fb2eb4de9cf
Date: Sun, 12 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783870713
