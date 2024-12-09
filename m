Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A690216611
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733738154; cv=none; b=adjsLNyURXgexaMMkK5kAAwYST8fxts84RMASrkFuu0HjddubRf7bSTR53si2NEjfgR6bQBKWD2CbvlD3t21H4wffiJ76xfl/LmYP2KysiI4s3v63/T9J5pb1r7bbx6IjP+4KEdSd/ydmEITq6XghK1KnA95B0a90SV18aJM7Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733738154; c=relaxed/simple;
	bh=/s91HDOigDhMDuGleJvfJomnmOIfuMnzmNjFzY5ECww=;
	h=To:Subject:From:Message-Id:Date; b=VV3qtvxv1UN2vznbrRUKGsuM+FLvwpur1AWf7rg177p7fB75YavTYbX34+nguwGy8giD+NgzOyNgunaLfEFAqGUZjnkkQi/51kqcI4DUtcqdtYU/V8IIraz9phCOlmQpTpPwhZmd4GwppJRqf6cGo+l8b+LuwBxsJuttcjWkmX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXLkfNqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXLkfNqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF2C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733738153;
	bh=/s91HDOigDhMDuGleJvfJomnmOIfuMnzmNjFzY5ECww=;
	h=To:Subject:From:Date:From;
	b=XXLkfNqXl9rIcWJU2/UuNpKYTeVFZRodMpd1ZBdZr/eYHXGo3nPV0nx1i4jcJYjVE
	 uWQlj1wfO/X457W4s/ZR/rnELbQnWM9GcEHQSWacOydR+UjhigmUWoOxB66wlIv9S0
	 mjNpTukeYdPQH9D5vLvLTGbmMDXYNEiQaitouA77tJa4eUfsrj0HWbybttM17WduSA
	 G8u3b0jfff9+gYOU7UpviGJs0ZqBPAb9DfoG+OgxPSjUpJeRK2VwtX+8kd1/bsHnls
	 cPYh21ZJUVxHwvYMs216JbDsnj+wMGS4kjGfl3Yn2nD8itAGaf5k/XvasPr7nRCyWD
	 czEd40UISOADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94140E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173373815359.17402.725097053873536152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b510dcd25b6e7d58581cc072db7db171b68c588465e91160e90160a616b686d3
Date: Mon, 09 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733738153
