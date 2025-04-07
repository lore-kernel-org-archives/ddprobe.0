Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419C3228CA9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744069194; cv=none; b=Ff5KHYNAHbrX4eLerd81DK9f+/dC2G6EMpgEpfYAeooBskiNQJF48pvhU7YGa/V/uWZwnuqACgoL7VThU12D067G0psowDQ4tDEDqoqUbP1KvHofTgDBaNWK0Nn1CiQxHICF/wT9CrnOugW1mois4kETWevXsQxURULOdL1jFL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744069194; c=relaxed/simple;
	bh=2sKYv8lJ/5VoKJviE68DUGFrNGNvlPD4dPfpbTQ49qo=;
	h=To:Subject:From:Message-Id:Date; b=tDxqA71Bdl4dMiN84gPVpVu04nx2Y/H5owb+iJT3wLfGclUOMKrWcg4p6AVkMNNIPK8b8ebC/TI9AkBtjyQ6q+AhBBKmHFDXda5wvzkZ/yqPcsGXeLlQpWmC7yDUQ2SY4sQ7g8XNaopdB8cLyhpEOjLFNMND6Vw1zg2IisR7Ir4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI2RqlvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI2RqlvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744069193;
	bh=2sKYv8lJ/5VoKJviE68DUGFrNGNvlPD4dPfpbTQ49qo=;
	h=To:Subject:From:Date:From;
	b=rI2RqlvDPnQlXRU7ZECjeA8mrPo8dnzP5uCZizTPVAKy8rW53QXXsVlDnxP4cwVVi
	 TeOnXUlvgiDkyaF1N4cbagj/L3yQd6FMqljBzXAAj3TJa8czrVXG3Txjs+EbUlcb9r
	 jCMLWwkv6u2uS8i/gFKfE9aH94neYhlUXHWX4OCdY0TmF+CyuJNLPH7H6rv0nv+f29
	 ASd2egadb2VdBkFNq0bynwnpidHSirJBVPSN/DqWOqkjSukSGyPOv1aTHP8OZ7vlv6
	 xjSTmTYagChPc4KQBvsoMKr3169Ca8Afn3LaqxhtdGDkYydIsAIeBjGJ+T5Va+VVGZ
	 ugC6KR6NjtA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406919357.30105.5046383369186438567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e34cf17ab91877575f151c4299412bcbeff72e24271751f00ef2178b6b7cf0
Date: Mon, 07 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744069193
