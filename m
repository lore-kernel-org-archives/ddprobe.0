Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421EB194A64
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736146554; cv=none; b=Gaq4DPRXYTkum9xHVEAF4pUm4t/a6qGOmKKSwIqx7ufzCAziYC4yFJfmhWp2mtwKsUSj7oT1kzqh84p6ofR9vn9B9rHc2Nu0FN3skM4SVr30K2lMbsE1YTekCVv40vV5Ul2PLHTj8pH3attIehfMyaW/p2v2k3GcpHA774NYvlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736146554; c=relaxed/simple;
	bh=GHVgz6JmbIbn4s5Pv2NYUywwG/oIkboiWzeHChICXsI=;
	h=To:Subject:From:Message-Id:Date; b=LqFD7ycnacXpfyNYlOMa1K7P1NmJzg+xPwHomp+Ybm3qS+elePs7RXbHipAuR4ws2GHnq4FN1RdMUPoqSlcms9Y0pfDq5Vddeeulihvoy+gP6xaxqOD0tPIznNGL2rA1a8ygJyvNEr9TZw4S1jkkYmanAqRbmtxDiKOXrEbQe+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRmFi0KQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRmFi0KQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2563C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736146553;
	bh=GHVgz6JmbIbn4s5Pv2NYUywwG/oIkboiWzeHChICXsI=;
	h=To:Subject:From:Date:From;
	b=oRmFi0KQW2G8Q8Z+0W+zrD+a5YN3m6bF6wQiNG23lMKsaHvynfJWlem1VRs/tKRHu
	 +9bRF+9WMZWuoHpsDbJ5N6SutslagUPEz2zRodMspRGnMba5t2k61lD0/8HpRB5L9L
	 f+whmrBoxewXWLjnCuzHWZe116bmbJVCgsTzjj8DT+ZPhRuABBUJdLYGoZ7iKDGuNW
	 tfbZJ0Rf7hJeaQV62KXJMm4FZSAsnR1deNpWyHqnezoi74D1WtykVftAvX6H8+lXfw
	 tlDeDofW+TjO9ApYAG0/g3H2MfyN3s5r8O3FOM+jKEwgozSqLWIBm2BGTb423PgilB
	 Uae1V/obBcqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B68E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614655358.10886.15350939934675923047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80afc0fc762778cecaee428131155ba0703df7056dc63638a2a8873c609347a1
Date: Mon, 06 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736146553
