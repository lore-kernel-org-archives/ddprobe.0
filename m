Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371C83F9D5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727178354; cv=none; b=ngto5GvPBkzq+6j2salkoDoEMZRxNzbAInHggIEUcoFs9Co8pX7/2uZFCEsnPGJQsaaPqVeg/KE9mvP4ftuxaruRmuqKK8S/PwzBLiFhIrGSzwN3QrJ8WlF5JiZhdkMN+gYXN29yIZatLqFRCKttwq7ZzExdSHJHKamgfhUn1MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727178354; c=relaxed/simple;
	bh=bR9ufpW66B6W+VFUeuCeqcYAj5jLd/WXYacpMoFBqIU=;
	h=To:Subject:From:Message-Id:Date; b=aDocDHB/N6HLGjZXks3pAGNRXIFafeyiYFWFgWkmYN3xoftgYuvcalwVA5fStGviTYXEFn5zma2AvurtgRuNLXp9u5uZ1ag9IsoLDtjwAVp/jjSe10luV6Rt/jZWAKPj148zUynM/3sKHTeQ3XDXiAPbpkcFBZB0BO56SJCNzzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXU5fkuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXU5fkuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5FBC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727178353;
	bh=bR9ufpW66B6W+VFUeuCeqcYAj5jLd/WXYacpMoFBqIU=;
	h=To:Subject:From:Date:From;
	b=tXU5fkuDA0fIFGFhin2LmMYsB8NLYs15345bH2Hvh7W50zqo4B+Teplf0cMsetp/8
	 gdgdl5k87pLGK78Xh9oCSECDE4k2F4OzGPf/8udQzRVVhi/PJCaAM4dHhDqQPM6rNH
	 slY5qvw+Onk3JsonRoflhDiNiJhHmJFNTAO/I69ob55HrXClZm7DSEGPa/pZxU94Ud
	 ZH28ksWFjt2gm6enw0bRzZfNjvPWve+d0d23Q93YbmSZtq3ZX7EyZDIPVbprJjygNC
	 ZkNIW8rfgY3l46MHLCdNEcqsVf2dQHfe7IDrsEIyDX8dFrWzx+f3gkoKIwtYgAMoiR
	 Hj/OX3VbQ0a0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD6CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717835362.9110.4723616186509752087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11153683dc35d374540ff9faf2b8b56dbc36e45985f721540ff21761bd0a965f
Date: Tue, 24 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727178353
