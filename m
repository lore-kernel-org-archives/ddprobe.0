Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BA13EA6C
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718935883; cv=none; b=IjZZM9R7NnLfmY79TDxfYgjLhFfTOk7XrVdlfnag8FB6XlQa6UsN6h5kxsZE2V7TPmZxYHnb8hYyIke/fBo+xWnRJahoDTWrfYt6F24+qBj8H3wN368INlA+HP41iWyky0fwuQse1WTYB63NgFcBy3dxiWnK9WASevNAf+/DiVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718935883; c=relaxed/simple;
	bh=0amK4R3bAWq3dvszxhy1ByfO3TNrn1EYCdavY4sGYRw=;
	h=To:Subject:From:Message-Id:Date; b=i7QPS2Uu38IO2vfZ7SRi/UwdmNKAtXjHw5pGvjTPzmkMkSlml35aRr3kB3DTWuQwq/PE1J1E0mWVUy15CJDYiGkVfx7B+pPOHErLbxJ8CtZyhNjMggys72mZdYWu5Qps4DfGx7vvAWmrTyzmz1EqQmoPUFwjDpuRzKnHmj1ev0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9zAjYoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9zAjYoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9BCC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718935882;
	bh=0amK4R3bAWq3dvszxhy1ByfO3TNrn1EYCdavY4sGYRw=;
	h=To:Subject:From:Date:From;
	b=V9zAjYohjHLKBwtBs02FmQ4Dc/TXaIFbHs925kuz23Wo0+np+piU7pl0Gm+vuQfyt
	 dmixGfklSIeZ++VffdfW/VTGvh/C7J8KhbWSNii7rnzMnqePD7lSmOeewGWAzpMWI2
	 8ZPd1hTV8+ynkwrhhfeQkE+jQm78YHrAYfi1pCAu+Mub21Wt82h8JgUN+pFG00SeBf
	 qfVHjUTT6KwKAvIR8LU2PtLKsOt+w8x+PsJtpv/iV2DA1vmsG8+rghgtIrFcv6/Zhs
	 ABZ28nJC0gPvsq2CdpuvcGlbbH5wghXKeSw6SPeqGFYnbnVfisGIFZP1mIy4DhGMrf
	 iNr3TCrM8txhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8300C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893588280.6981.5811247226583017590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0010fa4cc9809f398b1cc4aadcd7820e07a3d90a4886aa822925edc3ca19ddc
Date: Fri, 21 Jun 2024 02:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718935882
