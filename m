Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10751CAA92
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760342393; cv=none; b=Iw3YdsmAIkdhz0H+i6eUSTxK/FPH2QLjreniZ8K4T5QYknDuXrkrfSTN2xZEfe0qyCxsS599HNrm7pFXa1d6N2wrCSnf2JEGhC2vzpQjpBJ/u9j8qqOmoMvWRdV5dQAEgN08ctbxdVF+QAr9szzRi9GzAn4edwpaSu35tzsQXZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760342393; c=relaxed/simple;
	bh=YS+AsxL1BMuDun77Dv/wdSX9qzoDeVpYwIBu5I3l+yg=;
	h=To:Subject:From:Message-Id:Date; b=NQZ4CTJaQJiO6cG46o6f5ptjRjERLEVxT4/p93vvAeFRrBkEtO31TLyU6OYykhrn9lLCimLn09cZ9cK/TgImwb0BVME1rIjB5JO5vqvBI220bGj2tvgHtFurzUHD8sbpngmOhHeTJPNdtUBm+ZLRvyUTyNW2/QB3yc3IxTkDJSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDX1DW4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDX1DW4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CFC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760342393;
	bh=YS+AsxL1BMuDun77Dv/wdSX9qzoDeVpYwIBu5I3l+yg=;
	h=To:Subject:From:Date:From;
	b=nDX1DW4v4jaEssn3/aawirFV7f/liUIGwd3+CBpZjZ+ibPwVDMKze/aVNHbXUNoUB
	 42yXlOahS/4778QjCh3UU9ef1U6SS4VITyxp1EusVR1GbrDDzAQfJJgsETjQWzhx85
	 JriHZvpZ8En07ad0wNT5PgXkyebdMgylGL6SPPLY2wqg0j4+3pA7mkFYl8N0QQyZ+W
	 rpIMl4RBQKWwR6IuSHf5OjiC+6y3yg/0c/WGTRj9SL62f9OdEH9AHmsBVEEKUgZOB0
	 BL1UyNwVxA0JRZYxa9UfI7cAV3J6iKD4l+CtvD9ssjRfijE5Ixq7pyYI9e+rFPoDfi
	 BLPJgNUlZBjmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92454CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034239358.20671.1136130140096142417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c2e579d2239f1e343029e68d65402e5bf806a146f49653865f4ee0f53cd1e6
Date: Mon, 13 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760342393
