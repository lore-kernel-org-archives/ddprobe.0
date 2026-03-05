Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE85B1FF7B3
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772742294; cv=none; b=Lj5+0npksbFzcqj7jRACNQ1mxZxMkXOHnHh2Qq9f9N/WjSZj6o1ai52DxQbXPUR7SLv+MucNy0MCV73Uhc1JHLfWMOOdm89YTBorGnA0WpnfYSMpBso2IlyVi7CjpEWwg6q2L+KGxhZhRIKaRG+3LcuujhAzrnbC4mACMq18K5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772742294; c=relaxed/simple;
	bh=dFQfxuImfuwarzyJphzHibJ7ByWrGjozFRubG4yp9gA=;
	h=To:Subject:From:Message-Id:Date; b=EKweCs1yCmi+3JxVukj8KKF7N+7ovOKBeuBEEHxwlAEqVgPJh5GkotcSYNTZ+mvcFGhgjTfaMrKMP4mbrPp0CdTKaBYcpML+KXP4uP9QSvWK3gavEteRM4w0K3Wd8SLr9mNU6lGRUdcAkvIlv2B82yTHM9nnmRQFFd23+HtlCV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jvd2rU1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jvd2rU1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772742293;
	bh=dFQfxuImfuwarzyJphzHibJ7ByWrGjozFRubG4yp9gA=;
	h=To:Subject:From:Date:From;
	b=Jvd2rU1+Eo0r3p5fLi1CyhL7xSKeLALvSHmu2Wusot0iGXcR69vgx12n59zodALZg
	 k0W4GS2s2itTYvB//K28o9oRfkNVUQtrBWrJRKsTzulRPjvJe5GIvyk9V1uaNxjD3V
	 lZo9sJChU1sS/o8McjNr3IZdO+1chbUURK5mFfORcorkP6k+FPSxhqn9ZLw9+7ZTJx
	 791qZclO52xZw+DK29fuWMi/SiuzOF3ILUHFd7w/T9dXGiS7p9Ez9iV0N1U74eaEnk
	 vq/r5rVZ2u+I9thzqmnrxbdFmnU6AhrhmTRnRnArw36dOvY3rzwKESwuZlb33H+Fr3
	 k3q6eOkF2iFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9010CF47CCC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274229358.32564.12178754885534172216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88772bafb5609417fd42017855058f7417ea716dd672721b09bf51cb64d454a
Date: Thu, 05 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772742293
