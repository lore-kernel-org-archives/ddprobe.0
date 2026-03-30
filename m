Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD093C9ECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774875294; cv=none; b=jDn35IAL01f+sUIwMQjuBQemkV25y/40gprLNQYZ73yi42hQBfcbNvsiZkG0iCc74Irl3VjJa/lqmi/yDDe/pkK46GYK6/hiWuE/sx8YMsF4yL2baVN6y+C4A8ev0Xqo8SplF9Ns1a1+f0h26l+peEzArh0SiZ22YePZ3uOMKVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774875294; c=relaxed/simple;
	bh=azMyRVyxIXOGZ6FydqF5rHNT3rO+ME4P+zw8P8A07DI=;
	h=To:Subject:From:Message-Id:Date; b=V6s/k8x970BAKXMJITfE3lA+9ENOLoWA3yzh6BEqHQCYNsB7dJiV5xhd+zEUPp7QlHvJf4hvPsaN993tDewgrrTOrkLjPZmRaHnLNf3fMME4rgeU2yNdp10OVYKRXtuEMxxmLLVraNQErl371dcbXcwX9tMr2Ue7oKTDHLbkYhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyFPwbH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyFPwbH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774875293;
	bh=azMyRVyxIXOGZ6FydqF5rHNT3rO+ME4P+zw8P8A07DI=;
	h=To:Subject:From:Date:From;
	b=ZyFPwbH2zu5++8cyNR1cC4D1YFdYNiTsRU9GRGmWutgkM0I5gTvXj5ScCxkeErayZ
	 3cPFoeBtVIMWa+PZsaSOwfEbPJgRpUnv7KXc/oS0WxjpVoWvpHY/aHSjgBeYQgmcIY
	 qS5ZRCbpj+n7MSu9M9vGXI2/scyDes1Z/9+T0oZxQNtziFW8r3xCmWQuxWRn/foD5T
	 lQyKJ5tkiO0wWDg8VfBQ1kmQI7ZRvDXk0l6XK6uSvTVPsCOhHP9qmb6x8i+AcI2PsD
	 eJRRnaAjw9rdRu3J3UeD7ww8QG24G23m0wpKZjmgmrWQ6ItFqaPRC3xa/AUWDDAnEL
	 nz99c+249W2tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293010D14AD
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487529359.1372.3631553687402928938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888fe41a2401712054f44314eaa0beaf7b557620fbcd6d9c770190f1e3bb4bd4
Date: Mon, 30 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774875293
