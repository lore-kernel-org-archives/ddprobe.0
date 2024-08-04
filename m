Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15598138C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722753354; cv=none; b=CrKYSb4ByycKhsIPcy+aNu84cMQZWXxsxeBg6nFjOrWIwjW9RUdoAXhQIGvhYpLSqH8k45sAtv9VarcToX5f7o61/gGl0cXA6g1fT0gHAVNsVko9V5gZVPYU4ErsAh4OrMRPdoT81nTP5GLRRWZIVJS1Eqcn8TRdxgE+wZwrYOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722753354; c=relaxed/simple;
	bh=q5sYOqbo6GkUEyh9gU7OASMFoX/WMdHLkt+TjgIL5ow=;
	h=To:Subject:From:Message-Id:Date; b=OHCcdjeFTGgX5LEM74+zvaN3gzPXaVMRh0YTjfo5U8NOXTscCpJVKYhQXMtPuhwarZNgFAQ2sxZ0HOGEMphS2G69j2WcSEXNCep6GXKxu3c7nKEvnqgc41OyqTtG79tnNec2T9vnTCmedkzRqVUlaHandk1R7Fn76Cv3V4y6GLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RslJ5RV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RslJ5RV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBFC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722753353;
	bh=q5sYOqbo6GkUEyh9gU7OASMFoX/WMdHLkt+TjgIL5ow=;
	h=To:Subject:From:Date:From;
	b=RslJ5RV95hgn4COmENYJNRpO6bETy3awRo6dudkwMtBOXsSBuYtqkHrYgaFLMd2S7
	 yypz58QssLpB2OkpjCw6l684hy6qdXsE2Ts5msii6VChsmqoKo/O/gMHefCu97URUt
	 QxVMAr71fq6Z/hDUDa+7oSgSOJ0ioyLd9Rg40eUvMgfH02CrGx9GRwuJORcS8pdqrh
	 DI2R2TNgbSabQcJwq3TX80Z7QD/dRivRBiXNLHN2B53VxiPSJ0ZXEbOa3KllL9qKm8
	 X8tjtvm2blqHY+WINj3SbLnfbh5jZIWZUAG9AuIk35GDD5IpVaGuiWIfZLSWpDRJYn
	 2bEAsg1UJe2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E23C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275335358.22545.8852075510693499241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b718bc821a43934ad0ef73a4e8b1dac4588c102d158d35d6380cc2aba40208
Date: Sun, 04 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722753353
