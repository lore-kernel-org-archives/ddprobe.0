Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347022309BE
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752048594; cv=none; b=DHx7Y33NLYqsCiLUYDl5WHUxuHhZfK6cbti2QwAB3LcAPFyT9kZhtq30p2iYlP36KirHa25SlM+e4rbfs3PPiexdOmBDFYCRtIYneRdLBnFuuuSxjOGuOQ0JxV+IFCL9Z7R+Lnh0LAVPLMROoFDWNPwPZA/wr8soktxlzt2F+Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752048594; c=relaxed/simple;
	bh=FLe8rBcol1KV+BdxRotDUTofobsJ7JIG5C96SPRySPo=;
	h=To:Subject:From:Message-Id:Date; b=HzfddkANp+B89/8ZmZQTycs4b1RKw/ecR8RBJNlhYmuwX40DgkDKkfIFbRPuAKjmAKy9XIPukNOCKU73fxQzK4kigWdV0pLQRtD/5vB8FDpX92HXnLcECa09QnTIg5dlV1f4quiTT9RZJxndDpB/U+2mB0uTBOeBYerqR1mwFzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mbv8nRM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mbv8nRM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2F5C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752048593;
	bh=FLe8rBcol1KV+BdxRotDUTofobsJ7JIG5C96SPRySPo=;
	h=To:Subject:From:Date:From;
	b=Mbv8nRM1mSjpYzIrkXL5Y/HrKhiHaWolliaz8U3zKLnPDBm2Pkg4iClNYE63tjGEa
	 Xq52XGTIezdgZn+n5kW2I/lnq0KyUKG87p3iecqcH43JJG2WjJcIYmq7pIJJN+cFei
	 zW7ILcmUNTKmbaKy8bmnfiQsCHp7agMwKGieJKTXrplXgj05arzzK8L10VlV+hctdO
	 OBgM5Hs2vbPGWl1PIUO/7eo3+Y1p57igazI+IlJ203AdFAEZtqukWNgfpjxY4z13D4
	 ZCYsQj2HhPYKH/WVv1FT6Z1HcaLHq8/qqFXxOHWBE7Z/ctZP+iSsVGzBnEcSul4joK
	 Yk6P7jhsVvF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D109C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204859363.29004.16961743281733705234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc22d12fb7237e7cab4140c5f82b590ae46607fd3bd4d3d843319f1f7481e7f4
Date: Wed, 09 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752048593
