Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16138635
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728629154; cv=none; b=WDbv0N/l9rAP6Y5HXYT1VzYCeW85HRnSpha5/+G2/seakps4cPiKwJUC5xEJsU54hiadVieULNEEFh9PX1MRnZ/P1gTGAAMZlu7FCr9d1zVM4FdmRrOTr+fAA1piAM8rVFmVvfBlQeaCra2FtWJ2gl9CEq9JBr70rCrFCD5/MDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728629154; c=relaxed/simple;
	bh=AmD2j+vu1ucXx0zCb28z28lB2P7yTl9iPzWIo9N9WYw=;
	h=To:Subject:From:Message-Id:Date; b=ajKYpFoHeNhHPap83z/3qOHdJ9J7op1/7vIYSfao4vePcF+2jr9CYg23VjrS7xpv1/AaUp3SfeI9xcuv4vL+lttZqnOLCJ07UhIfwnwnZWrZPfgMZs0WbBk3bUQOyl00S2ZLgX3tz6gKx8pH+mYk4Tj71vcJCh9UthUyob9yY7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1/pcuRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1/pcuRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A384AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728629153;
	bh=AmD2j+vu1ucXx0zCb28z28lB2P7yTl9iPzWIo9N9WYw=;
	h=To:Subject:From:Date:From;
	b=E1/pcuROenkxcI7vS5MHLbsXKlYdg8zFHN/j23JibXk5KdF7XVbJiGZLMQa0EZ3xu
	 DoMYU47bTZGUFNKGsZhIShTYfGu0TTRKNdMAZFRfg512MQ+I+pM2tQ7JhsY9OHPElC
	 sB6NTpptejOlgTHRVclMrV0DDpcAAFnlzjMlrnEdTkPY2H2/6zFmvy8BvYQq86IIfa
	 RzPxpSV79qtWhd5eOU00mqlomfXHuFDDzTcjNsciMyhV4Mvza8cEmf0EJB2zK5vCmD
	 Brt61W93XyXApVWFZ5bVn6/3/gDs0mjbicGw2hUS2Fbc6qNUMcDt1DLgrO6qF3L3NY
	 sWjmPYDR7wQhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE7D2447B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862915358.5252.8455817675713351407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfcce7cd99df02b948aace6c9b71153a4fbd425bbd0c16a6fd09df42bb2dc34
Date: Fri, 11 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728629153
