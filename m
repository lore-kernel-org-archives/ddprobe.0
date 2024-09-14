Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120881CFEC1
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726334754; cv=none; b=tYn1YCoRWb+mI7GX0NrkQkkIzFM3XFAGbO0cldO3evtYUWhK/FkFOv+aWn0La9oZgsBmGwS3MaHaTx/XYBpPx8+AAEv+lYOmi2muHugP4pYTxL+jPYGSQGNWHamHXuq1FXBbKTRHFmjzhq01EIHCFxZaV+qLbXePBMonuW1/YCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726334754; c=relaxed/simple;
	bh=7d//A8/Cb3rrvCsP4W82RX/IBhragISpuW1Ll3yzrt0=;
	h=To:Subject:From:Message-Id:Date; b=eeq8fCT9iT04V22ZuKBknk4ifvkmd600R8YlP7TpZ4ExB24GFqFU32x10sYZBWvNNKEQG6ZDO1qx+vhu76XljbrUtUByKjC+tpQYCMkN5sE2CzaK/3q63r8GBMPwgOISzQuqIEAIfZPestzRUN1t8yTJm5sBPp1lwXSJgugcwFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdBIHcM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdBIHcM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D1BC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726334753;
	bh=7d//A8/Cb3rrvCsP4W82RX/IBhragISpuW1Ll3yzrt0=;
	h=To:Subject:From:Date:From;
	b=WdBIHcM9vogmAZnEIsvvwcfhioqI41Srv0y+Jw2sbqNPB73iaoPkmwYzgMkP5wxOw
	 RI1WB+62Ief7QzvyAYiYQzAINmvKfjtEw6Zd3Ie4EvLTG0BT22ag/fxHh/hXljrPJ+
	 Dquz4Q5BLUwJi+8oC5zWODsUG0YQGbHVdwBVAA6+Lh8FCkwO0Fx5DlRxGhEJHpCBg7
	 Bb9kcfIF1CS/mTGrBvSGlcDIcWVm5oBVYwmlCaSCIucUWyE/kwEQ4qXZbbLEPXvB7f
	 Uk57Mm8FRlVx9Uu/rQvsqEqHWnflWiSbWmRuC65Ae4eRkOQyDszMnITzlhLliket1B
	 X+u82bwUjUMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A9C021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633475358.24639.11807373783607258568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0808d8f4c8c9742a94d91f60dc68f71f788ef630c027412710c8b9136d5dc11
Date: Sat, 14 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726334753
