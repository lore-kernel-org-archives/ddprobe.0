Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB2F2773DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771080294; cv=none; b=acl3PhyCTSbm7ZP1gyeg7bo2NaP1EtFcsoZVI6twsMtJHj5RVFeoVfzq1oBBYSRXYA4IVf8IBAgMYMdCOiFdTks3M7T8ZBhzy3lga81eWax8gBMtfUjFALgfKeT+IskEAU/gIJNRBRzidoFyxHiIsChiOYfOrCDGxxH/fKSus2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771080294; c=relaxed/simple;
	bh=vzFGqelhM+kpCbQ6pXhaDUymSbDCRsRt9HvNFAqSEj4=;
	h=To:Subject:From:Message-Id:Date; b=ZIrIhsiX9jrhM/WOS9WPATfaRHKJswhkqo6ldOvTFWyREwjcJI1zCarLwALvEh2yzV3JvXyJqMAiGhkeYYVIL7MqFe52pSX4W5jkrVXLY8b+sH6u/b3gP9rN7SEiR+xTQnP1suToRU89KMvk2sjUU/FjFPw9vXT578mznWTtv5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhawFCYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhawFCYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE8C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771080293;
	bh=vzFGqelhM+kpCbQ6pXhaDUymSbDCRsRt9HvNFAqSEj4=;
	h=To:Subject:From:Date:From;
	b=YhawFCYbYhPAKz/mAkFgl8V78+J+oFKljcFMhSPL8kAsBgT9P9DasmOuq0uT4mIvw
	 5ltVJUP1INmdS32KMGjXD9D91BmlF5i0ciVf5XGcng3lo3p5Du2gVepyreN4m22lTD
	 z6B2Gb1s4P/+IgEc/420JBWBRx2Z6P6Pd++BypctwW8uIM9upz7PrsDpNAZklD7KMx
	 6o6h5gpmG4xdRBMeXptEp4dlC+dfdGI/rV/vSpmkUVF0zc6XlYY/CQeYxt3ceg/1bK
	 75r95rZRqvYmCEDZLpwbXzrWdNABqvCl75IeNj4VOKoRvKf1fO5O6Lx5eOTrcjG85H
	 6zbCmyC5MOFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C0EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108029359.23057.8652771900362256674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b225057fd88f418851dadf3b43ea7a8cff3157852aa01fb4c5152640048879f
Date: Sat, 14 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771080293
