Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A71419A4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777353454; cv=none; b=IXcnQ+y57Pn49yHq+aOHvW+sCBwW5EvB3UW7qwQYdVGTK8LU5KW9RM2criG3Ut4zwYw0wPvP57dqk3diIF4uKJTh8l4SNEvxC3Y0xHGqszHyAZxg2JZsqR12CQizIYM5olmV5ExHRxB57C4BDIhb0jr0a7wVNt3jwwpvu38BlKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777353454; c=relaxed/simple;
	bh=OHCrLfljop9395vhOI2GNsfM36DDUomjKavH1b3eAb0=;
	h=To:Subject:From:Message-Id:Date; b=VfLvGb21hmaOitkjxUpAhHFXz8X7Vx0+G+fO8a4+hRH+HkuTbfU5vi45B6lNthTUJTeUjhdYZM2SxazfLrX5zvrWdcFSfr4Id9s9d8G0Sox5/JoOxON/QKNBXLICQ1t9mm2dAqMfSdL2HrFnX8PT2wBrORXbCnXBVhxRJLsBi5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf8YQ7QF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf8YQ7QF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC97C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777353453;
	bh=OHCrLfljop9395vhOI2GNsfM36DDUomjKavH1b3eAb0=;
	h=To:Subject:From:Date:From;
	b=tf8YQ7QFka9hvWG71fKQh+hz9NnjzL+4eor5/iHUEkvNv3wRb/BrEeIuYfAFwyohu
	 XVlP7+rmBJ5OpiCafwswofUwgwLqC5fa/5r92pAPmMth/2WHnxCpWEPDaELde7WVwF
	 R4nNAwrJLHt4bb7S1Dop9Kr8y1DrfnM67yKELtTTwe1RKmxAG2Se5tkPfvZgFYItNg
	 qyoTdTUZRVkTaFFzYf7RyFGHwdMYrR7HobbHtKzO5sXGkNUhdPbX4shCeQ9NDNmP26
	 lz8AV8tD4UY3PtWnSGwmvZgphwAc4O0Fp8hdyetvVwcAdKU79OLPoSmAjmKmrevdOx
	 M7s9+q+PrVcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9349FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735345368.20714.16570804148955277990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b2881d3b0d4fe7175933386cb9e1fbc7b2030108b6d9127f58ea1e9163a97c
Date: Tue, 28 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777353453
