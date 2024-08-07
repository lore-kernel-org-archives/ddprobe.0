Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC4372
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722998754; cv=none; b=CawPMe9Et75ZY/gRvRWaWyrYGH5OaWFOgkmuw7up7m2cnwTq6+PpdUf3WsxAwJXsdr+hkzedA0y488IUqHzW0lGXHnFp318ws7bD01aNVko9irO6aYSZtZAjDJ4JuWd0FV/HCYix7J1QIBZq1VMhPexthJ/H1r9FgWZZNhl9Qlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722998754; c=relaxed/simple;
	bh=up4pbNRIR+fTY5mi0NARZj3Lc2V0Ee97DdjwvEz0aYQ=;
	h=To:Subject:From:Message-Id:Date; b=q1jBQANrV2zVFBn23sAz/a7qRJFaDi9pUGV5hSymjdowGpyexaQVyXnSx+9sXcrRIilBuyUaxDSRd8FZo5qp3J77mC+GIVIu7Etp/H0kfNsyyDVFn/fqkX6Eug8z2KHJxVN5ZMQsp38kO2gx7JwNQ3ZyTXIYEKk4sWHB/BMeuV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6+p6/am; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6+p6/am"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2881C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722998753;
	bh=up4pbNRIR+fTY5mi0NARZj3Lc2V0Ee97DdjwvEz0aYQ=;
	h=To:Subject:From:Date:From;
	b=t6+p6/amaJl7HmY1kvFbqyIb3PNtWFWomrsi9viFWYQ+DGNXn15zQq0agu9AeQT8r
	 gAAQY4CZAB/DzMffkq1N3PM+FMWO0uOn4vRi/RysNZv+E7CgnYd1rcj/8bFMpl+WJH
	 EP9rAGjx3YlN3LwWZ7/4S1iDLNGFUk1D5qAL+0E3HgYz17AiSNpiKWZU4dJrPFsVER
	 F7aqfaqdSQsBfHD2c60XEbzP42IT4m19pgCOfL2WhoRZcni3MG/F9STIkL0RqCtgvw
	 lz94mehO3uqrXxfK8PpqeXu7dHTLvAmPyJuG69kvlE/PSG08PQu3blAI1bH/GWN4bd
	 buAsJiRU78HaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D7C49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299875359.25519.16659018454754651604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9346900fb36e00f1d9cf95329da9d6fab7d7d8bd2d6758ec82d99ab28ee3a2d0
Date: Wed, 07 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722998753
