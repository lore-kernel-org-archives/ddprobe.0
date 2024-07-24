Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8E02E639
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721843754; cv=none; b=alCXBgH1bEnlLi4VfexzypqJ8Rh9a3FFGYfaAhP28c9mEhTmq5SglLgUJB2tvrbat75E3Tn6nSGVFflNOUYpUC/d71NViIhyeuFes56zFgiwN8S0ozPFeFlRZeNkA/Tsv/9AZfGJOaJySi83AAbgpkpRNeDK53HzeIBkY0JuBvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721843754; c=relaxed/simple;
	bh=hL1LfdKdSL/kuURxkkBxstN7DOqEPkyZwhkvDsJXKT4=;
	h=To:Subject:From:Message-Id:Date; b=Q9pr+xJYsGMCnhwf8OeTOEaaJhVIFzMxWWlTCgRIxsZTKvPaJWgYOeeUq4MhpG0b6e2DVbw7nBG8xX+twxCNQdqiG06Lhmb37PEwoY02LgRU1K7gWu7YfCl5th64uhzbsQ2HCMjKkbLAgd3qICq3RoyW0+UwYKhmTOiJcZiDrC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld5uZAcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld5uZAcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D31C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721843753;
	bh=hL1LfdKdSL/kuURxkkBxstN7DOqEPkyZwhkvDsJXKT4=;
	h=To:Subject:From:Date:From;
	b=Ld5uZAcWVmAtAC/tEIyoNbQvq5HaGgSRvpyHuwrQVsc6B5gT2q6aSp69044tcL4ne
	 htP4embAaXwpWt9VjdEBdaci46NXjgQHUCXDg5lzL0n35AIB9Z+sz5Q4avi7JROJNu
	 iI6sy7N8RFVbpND5BdKddHcucJdOgAqgiGsPYiw4wO2GlPCeBbLvwEtedivy/ljCBD
	 smvo3G3QwaSbew20UrTNNKkD7h+7aM1+6QPJY3yAKAfSMk6YrG1pIf30cQXdPNcaAR
	 vs6FmpGoRrVXBHqRhydF/tB4Mlqj+s2s+9yyg8+xBnZEYTDKIEp5yhBuBEt0NCB2JB
	 26dvZ502xmU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D36C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184375361.3545.11745408173906957726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3323bf260ead9b39ac32dc961c958564164b4456afd943b230fe401f718c9621
Date: Wed, 24 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721843753
