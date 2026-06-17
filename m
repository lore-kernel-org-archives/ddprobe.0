Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66235281503
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781656594; cv=none; b=G/PYR1mjOISEo2Zmj4tpVRs+sRffgs/Bqs3+pPyt+oQqbTiRMqKHgawpjVLeTyutgYnlcLc0TutfWluutktZkVhmbkqDuqmNxKO7cvghur3TXG89536lKXDIa02hof3JHRfabUqN3xZzFtksXx0RqA6b7KJmfvjUCKwyiZ7HmXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781656594; c=relaxed/simple;
	bh=jZsywQeAAHH8ZQItVk1jkuPlyfAbIyWcTdJ93Xl8M5U=;
	h=To:Subject:From:Message-Id:Date; b=qvBhlNGsTgozRwVgAnP6Xq5McvYX3fdnjjsAHw94210ivtAtuS69SNSbzuRZrl6FXTFxt+ob3Cg++OeJ0XyJuB10obIU/a1pP7oeu43oaoEcGexG5AbndF/LjhSnZ4fCT1hmvTpr2IQnfPYqEWnXBfWhP25EwpWXGWlLF9U4sXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQqk5gFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQqk5gFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD250C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781656593;
	bh=jZsywQeAAHH8ZQItVk1jkuPlyfAbIyWcTdJ93Xl8M5U=;
	h=To:Subject:From:Date:From;
	b=XQqk5gFymd5mivUb4QiubLAQgtRZz8pne6m343H7VV3GhugaZkPMYHBAMcFTDjq/J
	 edeZ7Mwo73CgJGYvNoV05Do/lzje0fRhopPatImsBvxtCORFZwJB9U1FA3GHJ/yqH/
	 X8q0CHmrvcEjp9vcKam/0FjbIcCWGpSuybAhXkAE8qCaWedqwsUBeYE8m8p5J67UHH
	 Vqrid5bp4aataefXgHvtNEbPFnC4TiC5CJv9xj9rR8xNrPexhOrxDM9hGfrP2YhZcY
	 6MCwTJb0C9IYkwW4u8LipdKJtdvGeLUUdzqxsbgUa7VsFSHcc4RYcom2wnO4i2TEL3
	 Fxx0Ev3OAgJlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0075CD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165659368.26943.609581252327086500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db61902c98c88bc2480c56675c38f91dab011c1cdd294e411f576e85cef2c81
Date: Wed, 17 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781656593
