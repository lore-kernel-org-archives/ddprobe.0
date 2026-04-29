Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20283A3E84
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777447054; cv=none; b=Dxl/P4ao53IupQtPACbnE27T0uvCqKR4W3slV4bfCUrNasn5ayXQcefTvHsn3wusZsmshfM0DxmMZgA7b5xTwp4jMiqhmdhKm8YhIWdtIfDqR1JnAmCbu0jRxD7OrwyWEEoEGdcZARNErCJkArLi30AKGbyENDFVIiJlOEfp1+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777447054; c=relaxed/simple;
	bh=5xCm/WneBuaLrjr8oDmi3gpIQC1ZWcQxs2X4pW6MG88=;
	h=To:Subject:From:Message-Id:Date; b=j1sonLMD2ZYzIrmGwEa60uJhU2lan0tT3vmIG47eu5xPeILktbEpa1CkU8oPkLyGAvL3f00fbIiWSKUG1fSaWUD2crVgKKouTixryJu/29R7xPHKVnJk7Rnwm7EeE8aOxvbG64o9r7FrvmUZSsNPYEPDFltUGyuZpWTxGhErqiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usp5uWfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usp5uWfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C3DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777447053;
	bh=5xCm/WneBuaLrjr8oDmi3gpIQC1ZWcQxs2X4pW6MG88=;
	h=To:Subject:From:Date:From;
	b=usp5uWfgS9u9Wmysg/A4aquW7FD/1oRE3oAlmY1XMji+txXFfJHhrZrAudfDn2XvU
	 cp1W/1hn9ALdBm4xqJvTzD3oVTwPBEhOqjaeuNIy0AMvFCDScJ6tqdYBi9GScII4Fy
	 QLtpueo/zBZSUCyijcy6SlF8KBx8PvSHDKKOUtAb7xYnHTG9K4Q54RtY2UqP9YE0KC
	 71p9lamOJ0VB8C7TOJAyqOkJf13dNYsPOTsQM4ezbktLpOhLd35418QhAMChFets3Z
	 7PQK+e7ukxCR3axhTB63a5d+h+nIXItI/zfkyyYInP+CaBqzEHqGZAX2uoyWEQd/S5
	 URicgEUeGHKlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B1FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744705368.5761.1207859346051692607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3a8544c7fa63db736a511ef6bc69fc149e55cbc52ee23b64c0f9e6f9f1c419
Date: Wed, 29 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777447053
