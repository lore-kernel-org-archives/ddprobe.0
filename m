Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4122F72623
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781068534; cv=none; b=PnGTX4n0ng5HDVQhSWwY8ZRPXXEvP3Kyg+KsYB5eDxkmqdCa0XZskukR3ZHnpTh//+WFQkEHNYw1p9Pqm5k2qGZNQ6kCaYZx4eqvTabfXL8zfH0Zecft0EKUSrvtNpB0f1khg2WH3pwobxR5yMOqasg4XpR1lN1te6kY6+6e+Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781068534; c=relaxed/simple;
	bh=/duTFsRAyAi79GVT2J5SizMXrXujB+lOi2okjd8p418=;
	h=To:Subject:From:Message-Id:Date; b=kZh2Ia3v0ATcjozrrevi0lwg92yWF7BQtTaEUnFLLrImOK44TeARkYalD0XhuqEsCyaAjvpGZHPR7w99gk61AUulL5wEKJwh5JI/rFbT11jHyISTtkWpAvyMF0jTUxfsHn7SMt20yiMpSiN1N7b7dbq+qUbXNsqNv5Oct5Ln474=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7hdMBtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7hdMBtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0751C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781068533;
	bh=/duTFsRAyAi79GVT2J5SizMXrXujB+lOi2okjd8p418=;
	h=To:Subject:From:Date:From;
	b=X7hdMBtAhYRVA3XyIJ6X7l6lLXa/c55EIdCTjSYiu0AN4VtIjdg9I+EUh5kjUc8Q+
	 gJm8M/8WoRAe7VWktMZmihQrk97cGSR5gn9Kjx8XPdunnYAnd0i11+p12FgxJ7G2Rm
	 D3SA0qwitiThLSH++Zm2wY+YmmBUFpzBZ6KXUotFltpFalyzy0Z60ZXwdMoKrrIQJY
	 gWD+YZr9IjtwI+aNTrjDrRT+PT9LrDoL50T0huouaAu9d4zS43ApyXDmGQ7Csvt0qi
	 4h+/UMHEtUBWwFfFl3mrEyBMgtFQgYx3ftQ5w0lG3r7rfWWzaUkDrHVWyQeZSDEd2N
	 Gur+B/CKteB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A809DCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106853368.12093.2135999930517416427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94a023a60043cca6974ee7fd4f7b374d884e918844e331be2171aa93e7f9e24
Date: Wed, 10 Jun 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781068533
