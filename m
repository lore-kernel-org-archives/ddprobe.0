Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CFD13B287
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730434554; cv=none; b=o4DmRCmCXtlinlp7T9TIRjhmlyFlQtNl114mlMI4J5lw/E8oFdWWRh6q8kuPbTq/Agif4AhZ1K31x4L0pJsBARUvwn4bag+gKJ/l31yHGH/OhnfhQTA1TTF53DxW5A/8bBpad7YobZSL6f+f18+DPwx0x4pE7yPjGZA8fWTiUXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730434554; c=relaxed/simple;
	bh=X6DjlFEoybmywsANEHkrgOUUQgRhk7ea4CVd+6JPnds=;
	h=To:Subject:From:Message-Id:Date; b=HeB8tkzECfvsEzLkK0lpQ3rc82tOR0Oid2/qX2YsrracNaS7pNZDNB8yFGAXbHRHIdyIxplgWfK11UlJONdpNUwmLoWoStYs6JJXQG05QJo/+49Cuk/AukLrL09kgsL/nZsSYP8WSTeYyodc3hHJ8SQiFL6iB5ihCCpkRgQexx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMCA0iSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMCA0iSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAAEC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730434553;
	bh=X6DjlFEoybmywsANEHkrgOUUQgRhk7ea4CVd+6JPnds=;
	h=To:Subject:From:Date:From;
	b=iMCA0iSLAvYs6ldHlKFbaXeSgFW0L8nm2GL7WUx7S8nEtNAU0E2dmD2f9Bj7F1JXs
	 jlDtp/XXP4BMOkPcLE1uXeYtmAIr606zY7qV304W8Iz9ra4TwEhKkLCIuUAdWXbWhc
	 onudt0/XoOhiyD1Yq69rBhUnsV9Hi6usLPs9wR0DiL7xsEveQA905qMwcH1ByHRGqw
	 lZqropZcMsaBrBnJxO0LYKVlIzsYg9bkOQ/OddBcDwzdZjT+6aTh85ZLyfNey4tvU+
	 q94Qf3VIdDhoCdHuop7z89suEkp0BENcIFbEY6g45ug02OzgvCf8DTSQUI5lPNeKlY
	 7I3BshK541v6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AB0E6749F
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173043455363.3315.995402029450924632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfcaea1491deca01cf852535c3e38a7a98b4c24bdbccb1e8d5f84ab5e98a63b
Date: Fri, 01 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730434553
