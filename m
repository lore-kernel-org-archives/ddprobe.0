Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5103D25A2AE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761990594; cv=none; b=p8Ss3M/j3fCc7Gv8TrT8bWQqATexVP40jfuMlyYRjSkMuZmV5qXjInl+ryJS+6VW4e0WPq0w/o894zwYVCwzaTdApJHZEXWUcSFdroBVF1ycrzQvanfhL11175PCzhY5BypPmErmLOqURv34cIcr/t5OQyFUQ6H1H5vQllvcgsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761990594; c=relaxed/simple;
	bh=9dcTxcGcWK2g/Zi4LAljomBGU9TAdhnNfS18LM1mOz0=;
	h=To:Subject:From:Message-Id:Date; b=NVRX4UJeqV/Nrhe5/2c8WhdVkF8+hXc+amsKfNEJBsewo8Wiol7rqDibHGaQuDzTiVx+ODnLCAtkbIFeuCAhKwjo73ooPUEnxfAUW8kbET3zH3RF3JxQ5PEM0fGlwSaRmye1a0st4iCcbY5Kb9OTTOlPRfcAe0nJutkw1+n3AdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVp6d+0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVp6d+0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1692C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761990593;
	bh=9dcTxcGcWK2g/Zi4LAljomBGU9TAdhnNfS18LM1mOz0=;
	h=To:Subject:From:Date:From;
	b=CVp6d+0hNg2aFcdiILqbKOeC5j3CrQvQSOp/5Ch4zWONYM2zwaJPrIApdxNJ6GUnn
	 Zy9CigHcT+N4U42cBBeuaOL+2qAIQ6142VV9W0OuBnmsphDGxjcaCUmKJTpYTEmG+g
	 lRg2N4GMuuDNUgiWfQUqENJkWwM8R71lgAw+q8mxokSRbkLQkKt2GRi4GiUI/EiJP6
	 qUj0jQZK94D0LxJq8T2SqouTC0qykE5MzWuzTsqmkA3mm1JsiS7xOXIN+wDXBpZO4z
	 RX+FuBhEKBYZrlFQt7E1A6HUf6/zTE9IzeIyq/EL/O/NJe8iM/0QIgOJWRJg4Xk542
	 4rNrcg8dZjOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF35CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199059361.10137.3032870376744786728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ebf03d5961bbc4314ff2e33f8bffc9a0ec112d3ef729491ed4ca13c2fe82ec
Date: Sat, 01 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761990593
