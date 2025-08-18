Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D811DDA14
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755546594; cv=none; b=SZp23NxsDAh/AvQTpe5a81909+F8NpnQn98EPih1eV1G96uiyCbISPYYp5FaU530eMvQgdtcp5IZPTtGF2IHtHISShHSHgRr1F4umreG2czGUhvxK2s3RqccoiIlFqcpHDTERRrCnpyRoO9iylswdds+7GmW305p8WTvc765rgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755546594; c=relaxed/simple;
	bh=eKeyG1eRIZz1Ry23eeY6b5kg3/eA315T8TtIGu7rNZM=;
	h=To:Subject:From:Message-Id:Date; b=Y13eFsaYx59em6jryEDtduGZHTDOu81DTO0vbzZr9UvGII9FI+3T7epsIDOqcQEvgn4Xt4h9WYVFAmBGkANLe8S5pID9nbrzEIlZAYO/47FC4G9KgFj8+z2GDkZwuyWr2sYwpuWqUvVlsw7BkSnhznaEWJiYdI8BXA35RladDhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMJ4ffkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMJ4ffkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755546593;
	bh=eKeyG1eRIZz1Ry23eeY6b5kg3/eA315T8TtIGu7rNZM=;
	h=To:Subject:From:Date:From;
	b=FMJ4ffkvTYrzrfM3t5S89NeBeOzZd4c3Y+9d6cBe0F0W0vdcOoEvo1fI/BpMv6Ui7
	 2sPjFJrN0ENRNPd+k0lsiDDxQxwtf9QXSxkMHh42sg+EC++mHUolXn/B3aM8vm/1zT
	 A25F7lkEIXErXZf+Mt3BjKop8lHkCwqFRB276nTQGugZNG6z2PR3uUtj03n4ngJU0E
	 IftT6h1vyYSAxG8uEOID0AJ6hsqSTQV5FqjIZPLZfXV5CbtyfJrkP01jxAFt85pvw4
	 FLXeB/QwAUEX5hZJcdmrpHEICC0gHrmUMIVaFkmz/ByPQoQmM+N466+kLnI9a0g9jQ
	 ZgbkETHoCBKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92432CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554659358.8242.6596359011058835455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e1664bbb93daad66bd5082702890f5e2e4d725f1cd7e846aada02de602aee5
Date: Mon, 18 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755546593
