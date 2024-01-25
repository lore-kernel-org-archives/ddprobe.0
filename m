Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092D01E501
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706208497; cv=none; b=et7KoWqhpucwCSe3wwZb5NakEZ7tfipFHYR8uq2FgzTgOU35M29vZu26DI5crSxhhkTb4vrIfLA/DNAjqRZnu5wevJUDCDo96Aog9FFEsnlzeCCZMCBoBlWusYw7Id8z0ZWjXw5in+gdBj3PDLhg9CePONfxYoxfA+POqzwnb00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706208497; c=relaxed/simple;
	bh=jUyxKjBzNCNgjRSRRmBzM/6VWg03jJbfV2pdoEm0H9w=;
	h=To:Subject:From:Message-Id:Date; b=dnec5xx03vGgqLCDviFlUFALVICzfoOLlRcmC8gx3EdBA9bZD8rVqlhNw8GwUUdfOnH/qk5+SQPmuXXCddWjfWsAvKf49Za6WF7XiHS+MkZuoJFUhGmLhmOOW4+xgBFjveXzVJrKaMRPa9ghBMZzM300psUGRXv/fWdIUZsSoao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mggPkvAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mggPkvAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8ABC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706208496;
	bh=jUyxKjBzNCNgjRSRRmBzM/6VWg03jJbfV2pdoEm0H9w=;
	h=To:Subject:From:Date:From;
	b=mggPkvAPWDjQ3RSWL0Y7pYxTf9UHAbN8dt/ybH7AEJfj8n5kYCFPxXTe+uGwfXBmX
	 gOisDG++4yQKlZZeTAwvlhRNLb6ZmbddkgBjahLFg4fMCJcNrL6M7xB8Go4RpR8DZ4
	 2Pc4WloJlCKb6Mt8rgB3eU8uSnz0/7Zg/JVP4PHSg4JcmuMmOfNqc8yKz3sHTiP56z
	 aTkEVI6YSpilCup0e2Pv1QmqofuoLqa2AklHs3xhoyh+JRNlbANv/KU69VSC4FmmE5
	 fdEbSxbilKJygTYLpCswj00zGBmy3iBTpkSTIbbtlEFFh9ZfucBgS7vNpMXztDXQti
	 2xDigekEVJj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639AEC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170620849639.13271.11451552224348631519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a316c6e166d6f8a766b853fe4c60bd911844bd7c269663ffe7eef028299535
Date: Thu, 25 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706208496
