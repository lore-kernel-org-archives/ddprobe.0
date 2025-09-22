Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842F279787
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758572394; cv=none; b=b4TGsZOXijeo5Y2jZusCXHHvmIlLUD7UBZ5nnBK+JaC0+WJlvEfRLv5IFud5zfuU2aZ9CbO5+f9fNEQo40N9/qdsa2V29xZkUY6FvFGtKR9OuB0Wd40TgO3Vr0C1BH/4lx/DU7jWqwB9Avvz3sbDcETP2GJr78Q/Qvet/NF2fzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758572394; c=relaxed/simple;
	bh=lHwLm3TOZSUjlfPHr1p0hr6jtiSamna4cEAymToXNoQ=;
	h=To:Subject:From:Message-Id:Date; b=Vakc3tdG0IwG3+IhDG5QSUGdzwxMOWxN2mmrV/WPRrlaTuEa4qUN/K51XZdTRDcJEDFLFLVTpjuslaph4haE1jxbkhEFVmB8es6/ITcSkRrW6FhPFhzTRzi0Muhqy7A7xA+RV06r07E7iUUq43DuKQoF5uy6IgDLgl4P4uayGSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYpMk2X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYpMk2X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F97C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758572393;
	bh=lHwLm3TOZSUjlfPHr1p0hr6jtiSamna4cEAymToXNoQ=;
	h=To:Subject:From:Date:From;
	b=CYpMk2X3gbWwG4PRK2SlXo7ryvPNc0o0jeTrIBw43pGRlwK1vQe+xNRZa3gUVRjcO
	 64BHdcIjM9YsvdzC8ZlNbvMSkreBKTB2w1934O8A9au95CMmN9N7HBOPE1/gJW3pTd
	 6l8Z/7Z16wlUXREo0kys5o811FmHts/Jb5Az1Jg5q6u2HAA6hKVR8C8IWtRHiA3PkN
	 1G2zrqVGm1GqlWIUc/0jxB87b/ntanDKYvkufOJkoJ3/Ton8419tAA5Snr2nvINf5A
	 jJeinUrrBPLjw9ehUQVP/+EBzmn/NOTG1QIhUsnPDcmGodQhxRwoWa+xPwYdQdJ/tV
	 mS9S+sxArJFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E0CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857239357.30647.17640562631171246549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381659a486aecc6378c6a5925fac62ee2945b81036e4f6881b06b2ae2e1b3027
Date: Mon, 22 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758572393
