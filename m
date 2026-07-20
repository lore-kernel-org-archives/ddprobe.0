Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2623340D57D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784549914; cv=none; b=UkLg2UzODLw/G8BMrA798FvEfWllGrdLw7+opPPO92H3USut7/610W3tNoLxLuoNCLYP7JEm4YU1ecOlTaFWvEwII+VHXzK6EC5M2PRVthvhulq+GmvvypgQNz78P9qvCxkvdKwTOVp6Cnyeed3nkjzw4W8frniv2dw9OBQAtRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784549914; c=relaxed/simple;
	bh=J1GmQbPDeLHYW/1mZYWpm605Rq4DmTgeH7E2TMWEF/g=;
	h=To:Subject:From:Message-Id:Date; b=ttYxDHgTYn7/fe9cBG/DeIz+x8xBOXgeLA+VMFtdIeYePJTCUF+HodKvJNFWqGxgtTJMllRhr7zBYIOLmxpYe0qTYjEdhc2jjAhRVUvS7q6M/XWydttkVQ5a5tzpXM9/rSyzzCsUxnkZfMg4arM1CmG67gTQMqUonorIbMH+HKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELJ5qSiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELJ5qSiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF025C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784549913;
	bh=J1GmQbPDeLHYW/1mZYWpm605Rq4DmTgeH7E2TMWEF/g=;
	h=To:Subject:From:Date:From;
	b=ELJ5qSiCkpCqjZppqgAjjtdepxXk7hiqEEZ5R1LgnAQa/mfI3k4QJA+C536dvMnne
	 aaIDvdfEifQdT+bk59Oi8j+hSbt7bG98YVtF2KD4IKgt3qzRKfvBLnbElgGT+87VyE
	 E6tF2lKhMiThtKSPlqjGjHoCOZf6zOC7mZvhpapzoEeK4ubuC+oyxK0mXif7Eh8G0U
	 GwQ+I5FVfuZTFJHtjW4RJq7szhoNm60B9yaGdE489Uk+XvsvTS2w2lqZzG3YGhfA/N
	 g4wgJwi35GYHpVQ7870lmL5UfyKLloOp+50yWOy1IScOJH7IlDam9rBRYwW1zAVgOP
	 GM4j4G6RsgadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B8C4452B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454991368.1689.2238470768802165384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8defc28f767e761cc4438fadfbf749e4c0882578c38bf4fdd653db37c791da6b
Date: Mon, 20 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784549913
