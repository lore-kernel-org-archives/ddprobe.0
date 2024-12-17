Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2130F188014
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734426954; cv=none; b=oWN23ijJtmUQSx9lI3El0qUhxzAZX/pLII94mduqV5O2KWN4YAmF+n4j6FBjfjlsH99o1YgeBAiip18lpXEvkyX0SKvIH488FdIz5Eqalgj4xg189ossLCWq6G5PthPRjpQMpc1IeEGOFi7g7KSLh4PquHmZVKOhkg6iba27+fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734426954; c=relaxed/simple;
	bh=VUZDcSx6A4ztaxuz7+LlsZqHcR80epo4smLwTrbmjl0=;
	h=To:Subject:From:Message-Id:Date; b=RnAn6wf/BX9HdXk2lWp2oW5O+o7j4M7Mi4COpnfoH4wjFDugQ7P+7lkQhUE7vjXBNRMqZdxvBZ3THb2NHpwZVfpI8QIhgSorxy2aywrcFb9PcPTT3niix/11TYj3UeNLayHXXVE0INMewGdUwO6VgN2PwRIvAPLMRvILGZ+tHs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfIUeeBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfIUeeBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B436BC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734426953;
	bh=VUZDcSx6A4ztaxuz7+LlsZqHcR80epo4smLwTrbmjl0=;
	h=To:Subject:From:Date:From;
	b=TfIUeeBAYpvs1bsipCVfBBECFfAYsnUHDPT4IGAREYmdARP5xs6uuWBZcOXtMR058
	 NJL1t6ulr7/6+/od+OfyuCX5krjpWF5O62p7eilc7G4gNevZHoll29jiDPRMfakpAg
	 i8WyzYbomz1amRG/vqVm9AUkkUaAfVoNLv1FVfJuKmQyOqZZiP/H6vsaxcbSDqvYPF
	 pqB7J4cpjD7Fyv2Pp5gz8kb27mepbLgLbrMTQGTZDj2FnWUOup5g6wAoNgp5Lh6LQA
	 Ezwi2RCQuxA5SLWZX13gqxadYGPE+US8pYK6BEjN3NWc/4L9ZH92VKdK6DH5MU9ahL
	 Bzsxblonn4kdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18CFE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442695365.29523.12737426261318791483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd86c2fd73be22b7412241de1eea5a813a9a87bb6c4e638c6c0076e23a256224
Date: Tue, 17 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734426953
