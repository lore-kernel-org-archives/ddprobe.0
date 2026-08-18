Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D82F2BEC45
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787047834; cv=none; b=WUsWvxTmn4plzyFrr9GNtxsjCBUaOgdOw8V4srK4hq7JU3+toVSM/fEFTJFfc9bQgBBYlltxN1UMcGUqkQX1TxF5HNkbpbM8WCaBVN1DhWdObzIlwszTRi0RjZzoicUo3orRjXe7//vS4laJKLd2Dshy9cpwbuKQ+IcPL6kygWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787047834; c=relaxed/simple;
	bh=Zloti8fWhg9YaGphW4SjNnWu/DnGzlVXeuEULtNe2lA=;
	h=To:Subject:From:Message-Id:Date; b=K3f+jUaGfBvZXf9583yRme7AFwIB/MfK86OFhC2oqngY8F53L4yekla3RaUXUyvVjdI2mv/gFn0G6FkUmy230FX4tRvNVyNnw+9cpfWw0Z5XyZGwszb99w5l/XKtZsv7sjP5G2pT0XorLY8NotJMmetPdbtYKX11lOhCBY5OIH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8F39Ipm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8F39Ipm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBA1C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787047833;
	bh=Zloti8fWhg9YaGphW4SjNnWu/DnGzlVXeuEULtNe2lA=;
	h=To:Subject:From:Date:From;
	b=O8F39Ipmal8jDAmRdMyC+5rWekqu8zDArnDDWkeOtUarbQirW6eHcquyhyeRAszpS
	 h3nPn+aAcTiypzMdsnyYA1HtaFd5kqHXfEoOl/6Cm5HWw6fpO4jFsOfPcvKBWdnqHw
	 +pr/lPQqUOp6IXMLWlEYk8XNWpYKS9xscy+3A3N73YoLAUAOU5/Yelej2vzUa22lOm
	 OQygeFtqeVACZgo4zuDrFC9cwiyeyXmc2bvebaTgNGH1QZk48nfBolpeAQeHI9kQ76
	 iDr0H7HGuWeTUS2KjOzukV/VNBCbO1uWiyHA9NtSphrV+2uP3oKkftYqTs8oNTzDce
	 X4MhQiwyxSADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E4C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704783368.11956.16295767453637895592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39423d1b27fb0215727c1a7fe5b7fcfb6916a63a2ae97fd81016b5e96035544
Date: Tue, 18 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787047833
