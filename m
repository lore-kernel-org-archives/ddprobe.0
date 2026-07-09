Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C074DD6DD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783621714; cv=none; b=mioLmW7WJdQFh7SaS8S6vMgRyaD9kDoGQ0t33J6nuYykT0bSh7JdinJpwalRp4psdIUs0hUNr6TNWs+EoPdFkcB0FQUBbg8nmHqQpi2UVTcfd/n/2YdXKbblNJxWk+v7jSxd/NNGrydF2ZtkgU/kZP3sj27GC6vHskd30lhtr4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783621714; c=relaxed/simple;
	bh=KK8wDUNzGjHIeJuCDMzaptKJq/5lXn//c1qpHX5mKbc=;
	h=To:Subject:From:Message-Id:Date; b=scbYwu3H/pl/FTIoV2kFMe7lciy5vidT1IhhdTJzfUI08VsYLcqD9oV+qn1YlPry+JFwlzzu40Un398wmtSKK8jT0XAyPsIlqgtNrpP8bLi8YBI7Aa1sdBtNikE/74BvTXnf7vdK4pbetjugcJz7ev2FLu9uOfPZC2nntHRJumc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTAJBUH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTAJBUH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF280C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783621713;
	bh=KK8wDUNzGjHIeJuCDMzaptKJq/5lXn//c1qpHX5mKbc=;
	h=To:Subject:From:Date:From;
	b=ZTAJBUH5D8iiyq313g4PeuFXwYOuZjKylpdJqt1P9zwRH/uNywHOaPwGOitiowVgj
	 X+XwEdI6kiK0zccjoMok1ChS+1yhZ6trouODfQaf5LY3SmyTYNWxo9F5fB9qp+c6Zm
	 ZgZ/ws1x/M2ffT559r+OyMBUMd3BhKtxXuQIOfochSboYmBWUQnF095h/H9hU8SdxI
	 LI5is0oO5mG9GAbcp8u+5s+TUTNxiJDG8/Jm5rRQB4WOG3ao4NCTV9+w3SupvIn2xl
	 wVHh/xomHNcsdcbiEMDjO0Mh1KGqeynNZ6ftOplx/FcMSXz8uv5A09EVME3HbcGSf8
	 GCe4DXLku9n8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB35C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362171368.13193.11391995106281007471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92b8a9b2d516329a50fd41d4e995b1ea951575b6c9a3963115f445a9d4b49a6
Date: Thu, 09 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783621713
