Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666B11401B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720806563; cv=none; b=oA0Q1KxcsBqiJ/Y7gJAzsPuaj0LJ62liFlhCx8BjdVaHaQYtKf6t4s385GDbY1kvnhqnSei6Q7/+8daCOjLpfbBAKaAo5SOrrNWzVrSQbuBZD8oHc6+LAsnqDyeM7zqoXIX8jp4P5pia2h0lL3qg9vi0smAy+u2ATzcEUM9b5ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720806563; c=relaxed/simple;
	bh=R5milEgj+XlTiJm4vlNY5IkAvtQ1NFXkPrNZQW7r4NI=;
	h=To:Subject:From:Message-Id:Date; b=MqIZ6tVTtJ8+UUdaLxKqmYb5kK9wUkbWNacWjpAq9SfKqow3RM0F+5X8VHvKOyOowkwfha6bGyJomdg+9fWs3iFNjgp2ChYivN2E08051TX/P0yVgdn6Sx9rBmUsQEXERJVutCHfqFjxKHKsBO1163txSG/B45re75E3wW5jm/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdwKrIbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdwKrIbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE10C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720806563;
	bh=R5milEgj+XlTiJm4vlNY5IkAvtQ1NFXkPrNZQW7r4NI=;
	h=To:Subject:From:Date:From;
	b=RdwKrIbZBein81pfYpUAXOxN2RWOGc6gsOuuXak3ZcjDV4bqVd2U92kRdxXxldAql
	 7OBJdUxNEuBgL8F7ApQyFciuvVZxqr4Kr4amq0HdE5wB4U5SYa/hGevQnsCnwrcciq
	 s9RlsV2TgD3fLa8s/3W47IWRiCzBZqkvLQb/5WaasOgi/saN1OSMZ9fQGwZAjwOnt1
	 2nYZyQLLS6XWFG92PdnF7EST8S1PoGs1Ktcp1eclWMvCE9MsgImc9E6K2gT7+23c8N
	 QuXb5IZykkQoPIjw9ZSkRoABTUmFmwtulJeXzcO72Ky9oVq+qFMQyhfl4A6z36hN0w
	 rWkQ1axFl2WqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D41CCC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080656285.7894.11967316507401116734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d755a325b7d12acee5013ddb2ae0922111026eb73880ebdd42dc68e71d8133
Date: Fri, 12 Jul 2024 17:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720806562
