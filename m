Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A57726D4C3
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759928394; cv=none; b=RfcPAFBYIW4fGAshmsKgL5DlsOluSouTbGmluQQSiNSnICsanMhgMscIKYYF58ltCa38Q2U/dXfw9yfqUfO3kOEG1zldEN6BlFOLC/RZCJX+yfKRXF5LWDtEzrZT/sbasv64VF+6YNHKhD346t2n55I8PX1zfg+68CV2meeSusA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759928394; c=relaxed/simple;
	bh=VbUzKqyJI2BocfB2sQ98dDlki4/xHgigXGGXzJi34RI=;
	h=To:Subject:From:Message-Id:Date; b=FrFTh/ttC8gcR8Em7zvaTwq+iUKLwxx1dovpZF3lS0S4CS9VZmVbkjHAdTVuho67RIfQ58dgTS1totDlgPVcStJNVzqmc6SAznfVzVrxBzIlnSsBOfYPF0/uIBF0mv2/uFEuUrgtOmKtQnPspu/fc4k8kHNQpfO5WDZKC6w7KvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HORQplii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HORQplii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC00FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759928393;
	bh=VbUzKqyJI2BocfB2sQ98dDlki4/xHgigXGGXzJi34RI=;
	h=To:Subject:From:Date:From;
	b=HORQpliiEajBTAPW9eGrpqGZ4M7xJ+l6ayC7nrWBrSxRzNu6D8I9mtS0gfo12jyTF
	 gTi7AEpHE7sToAmad6TghQFCNkVknBaeYFYXgjQIzPCo9gxqMP7cZyxGGQCZfXuh9V
	 j2MYjfdUZvnM4vkhgZEy0Lj6pBPMLKrHuUxM1uCBy1xso74D5QvgzAy3AaQ1873+za
	 koT4d13UylgbQd1mBtttN2G5vnmhKEtFBDPo4+nQgY9sXOWFRAmJXOz2qaLgq56V5G
	 LSR9Gw2EaO+58lcx3imIf2WLpmkSYHtQV4meDqAKu6c/WLfgIPuZoY+xd5AZ7+St5H
	 pLgDZiMEbVI9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9583CCCA472
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992839359.27699.17492529956035708193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7b7ca22dffe2e1108055ac63c41906ef193270b452e9370f42d987cb5f02e6
Date: Wed, 08 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759928393
