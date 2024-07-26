Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50BE748A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722029153; cv=none; b=p0V6MSaW6XP+vIaKqgYLiwg7gPX4WJg95yrFLggcWuQuiWYF/AI1tTDymQTFYvUYNZ7brhWFgIMip2XMntq9gjy4MbZQBzEIkC/Nie7wvo98CknL/uK0GHmlQHs0yTRsbzTjCsr7HXcrucLM0/z8UISskVXQXm7n4aecz9tGQXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722029153; c=relaxed/simple;
	bh=8g7xLm0nv9ual7KSX6EeHAbjHvPBo1X0aSU5hI2rAeQ=;
	h=To:Subject:From:Message-Id:Date; b=gsftC1EJrPnaFuwmHrY2HQj99aYyIzAjDHrTyVPmyJAmLDqC0MqwAgMROtFPlItpKuD1laP229+pidCGEhse4ehsVz4ymctxrBecald3Bh9k9r2vhMp9hWS/Pcm90QY5K7M1AcqenVk1jJYtKSOtNnSCVfRSvuymS8oTsa/MzUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3q6ORO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3q6ORO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BD7C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722029153;
	bh=8g7xLm0nv9ual7KSX6EeHAbjHvPBo1X0aSU5hI2rAeQ=;
	h=To:Subject:From:Date:From;
	b=X3q6ORO8pdUJp2bq9Ch7r+IR/eCckb9YUXVDkmAJrAoJDr/sGQVRu1rGdfk29b0as
	 0YeR1LWGDExVlxeUjmZjbnWW+1Q2yEaJrW6pw/mJ3BPoQUjB7w/t0ukOFnVtzDY7hW
	 jeExYO99ej3TnSnpEHZhcWlC0BaJTt/b0lBxWvs0AA5FAJyJ2NKKquGcHAdiZppc+3
	 1kE8L5dAn8tjkPUGlHoNblBcukY5ePf9lRL6AIej29HtQhh7kFdSzL1G3nxi919ftE
	 3PuooBh8EHCQXWZnF4cKBfZAVTuUvLkTLoKBF2RqmFxAqVQPKaORNN8W6vRiX6PYpU
	 mIxj6iXaqnqjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A58DC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202915359.29767.2160802236486456772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cd60424808c90be651f1cedd55351b3bac2e1a0e994c0464ca6016618e0d37
Date: Fri, 26 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722029153
