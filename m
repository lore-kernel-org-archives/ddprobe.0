Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138AE58AC4
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726074954; cv=none; b=Q6kwjoOcMJVL/oU0lMi1RttnPw8gaO9aLELRXswDaOKIKFyx5nQcxdIeesCgtGFHxbD/ouT82x9FkQSqhkDzbrIUXzm0ndHKrzfPz//mBJFeyT4ClUb9UzV4QMNc071Wwr1eD7IR9TIqnrJEVSF/ylh3OSpWPGf2Q/yFwjq4VkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726074954; c=relaxed/simple;
	bh=a9IwMtmVFvPql6AAMdTkKsja/wNAT/pbCZwiyQExpDw=;
	h=To:Subject:From:Message-Id:Date; b=hwpLa6QjRNDdGeY3dnRDqGPdVOZRYRY2b0Wyp1uuEBjA2N0S8A/f4fTaE/ZZcSciVdk2saqoEM7V1AlAr3cs6dkART/V/AH6lJxi1HgQgru2Gd0hxCJwnrZwdg/4hCiahU9N8KH1me02dzuyTztDNXzhDXJrTdOUjLhQuchKIfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5WtcqRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5WtcqRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6962C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726074953;
	bh=a9IwMtmVFvPql6AAMdTkKsja/wNAT/pbCZwiyQExpDw=;
	h=To:Subject:From:Date:From;
	b=k5WtcqRjcK9mizrLP8aj54aXW1/XyQ1zKBUi6nBtzYxcbXvkz7FtDVfM8E7JRsfkx
	 Buyvofe1tQOMhVhGeTltS633Kvyp7O0K2V2Ba+c9gs03+SYc1XNvHu/nGurcVmRIeo
	 IYO6xcQdpasK8pFtMf9DsWnDO0xcXEehlfYhWRTpsoeLR4mwruEdcJRiT6NQZKmYeb
	 aXfpNrxmPt6xyl1JFq836jPYWWZ0FFaA235R5lRPdiXTiIPJu7znDWy6XONmi/E9dI
	 4w4A03XaYsbPpabPWSRO/Joo0Qzxz9LJ0MMlUnqDtpjv5ZjWKOZn/pKJyBJuCsCRTP
	 BE5NPa61OoW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A12EE0206
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607495359.4081.12368648911987049084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986dc0aecce8ce1500a9c7e5d13cca25f487f4b0feece942c06e5e8ad26532ad
Date: Wed, 11 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726074953
