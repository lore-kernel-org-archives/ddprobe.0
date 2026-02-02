Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C065354AC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770071634; cv=none; b=PB6HC2qKqxDiRsuK0oHpZegQ2X1cGQOEHViYSUK52YRz+SAJxKjC4LXGEj6JrpsKaVJ3VJeAbn+AkXyvmGbmNZbZfYykedKjfAi/B5uPq6tEfbKUUfE+5Inz0ODXt6gyBdFkrzn6Zz3frRWvgHsWvKZICP2ZtgJNxE4JCxSeBu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770071634; c=relaxed/simple;
	bh=IrjAKAc0qoIRYxuxPcmMPqoLee691wRRONZ9Iv6v/+w=;
	h=To:Subject:From:Message-Id:Date; b=tdbdLCqnVtA17TficjjqNQ6Aw2uMQyh0YajCx8654OfkLLOtGqhdUBklLr70ayacXYOtnODQVBJpm/YYy3Fd77q+cU0rCXLF8sw9I9P9l/uYpvIhMW8JEmZNlzYTvG95Ia+Xrc8sqYg3BkQD7vuYBZtHR3JaGM3O74VQ+6s//Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syVgnMGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syVgnMGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB80C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770071633;
	bh=IrjAKAc0qoIRYxuxPcmMPqoLee691wRRONZ9Iv6v/+w=;
	h=To:Subject:From:Date:From;
	b=syVgnMGie8N1BnNFmX0V8abgDfjXIiSBqTdJO0npfnEQq1lRSybUyJpPFVtEZ7SVy
	 EMVoJFZsx1R8PPz0ozysifkyaee1VPPC3wOdwTbDCfm8q4QzxOhZZMHy33otSagQJk
	 jqJuAxvOZP2U4Q9Ud13XSWMsB5/lI/OIgV2W8LajWjwNnN6BhHAGzUS/gsIBb/rxt0
	 njnttRy4GjEIDCJovNgObEnNjosQIf9gnBu+G9x4cbylYvP9D+vj4K3spqNPXX5LRE
	 mq3xBaJBCApztLP3yG7puMxNmq6puTz1vuIxN3AaUTwLcJP7EQ62Om2nhdMhsy0rEE
	 bu6mSgp4gKxjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95063E7FDF2
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007163359.7214.17183117150378162918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f94e844ad3527c65c13668c573e63ec4c52de90050fdb836bbe48e5aa9d5889
Date: Mon, 02 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770071633
