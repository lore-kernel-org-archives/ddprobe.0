Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C723491D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768218834; cv=none; b=ZG413lKcvj7NSgcrR6i4jhlYpHhBdvhdPV+QLqeNXuAST59XDq9Mpl1nnat2Y0dWJh4MlcRJgF/ftKwnEckzU4fzgCBPj2beMIlDzyU/URQpJ7qusgFtp7iFJdbL/DAOvnfGcMeY8CLV6L8vqjzqsNDjh3NX2clWcJT/EJUjFVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768218834; c=relaxed/simple;
	bh=eWxluvFqpWahhT1ZqJeUAen+xFXAFUTCVdb5enQAyco=;
	h=To:Subject:From:Message-Id:Date; b=u/xk+Gor3PRf9hwxfNOna+GlOTXvvEeKUmSOSGH9DYtjRn1BysjfynYtQkBzhTcVCFgl0fBMZ2hUmAwvzMzqzVciiEQq6vjiFmYJtQ+pm/2OWv69WXxTXtwSwhYhSVoLAiw6uyOBP9pIdQfCHFGITsv9tzLVVthNBDf5yEXFhok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htP0MBFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htP0MBFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D51C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768218833;
	bh=eWxluvFqpWahhT1ZqJeUAen+xFXAFUTCVdb5enQAyco=;
	h=To:Subject:From:Date:From;
	b=htP0MBFupMSm34CCs2f2VDPs/Cimc6oxaqp6U01N087TrqjDyXH+PEiRQk9X5eDhU
	 VemT87AnaYbD/Va1uSlewhkUGoe1npz/HTT6jKikXai6D7mVddpw6rxCZAyppm5qMZ
	 qYu20JAvCVBs1YgOD6Uufc/F0KcQ5CK0FHX9ctMpsudWe/aXSnkgyUaUngPIa9+MmK
	 Mh5HJdLjWLMm+3BbCMSPImYUP/7bvcZrtrwINtUROE9R8Elia5aBljLEysJ/3gIZQD
	 xtPIotC+iaAgV+DLaYJMta7A6jPMSQUFs/Dsvk5nuEkkbtHh24rSQqP7GexLQRwl36
	 NS+94EVxicBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA7C9EC7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821883358.21172.1611385800877189446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1283a0f614c4836da12f3177a913de43617eba85bd69d67a0ed0a27c5bd9962
Date: Mon, 12 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768218833
