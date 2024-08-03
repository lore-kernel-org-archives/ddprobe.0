Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEEAC8F6
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722656154; cv=none; b=pBliawpARdavbkwHpVFhyUT72ND8Yy2O9O4jfyJ1E3a7eiHV0Ije8jiJ01//Sc9aj7ECiBfMmIsTqfkjcie00KVn2XyY+LL44nxNwJcQbssL1IuMbzjzYOFA+d7zaDilZCqz12b0y3QfublV4ITCfOGwS7ArFT0AoTXwZSZawJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722656154; c=relaxed/simple;
	bh=J9gGxQfUPMUNOdGBoUAhL07sMDzMlTYKyNJYiqWPCRs=;
	h=To:Subject:From:Message-Id:Date; b=VH/nsZ6EBH0DzyroI1U3H64V/eWIzrG3nVR8ItiykQ4r13PgPg8FQQqpcDoDe5baOrU5n29wrASdTX/74jU6AcF0eho6smfFuN9AD+3EvsrTlDLjmbAgm/DuGleQfZ2trPpfm5QtwxG8cTpi2geVIyHL7bEvCmoAi0aQj3m/Fvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqmzAqgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqmzAqgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E02C32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722656153;
	bh=J9gGxQfUPMUNOdGBoUAhL07sMDzMlTYKyNJYiqWPCRs=;
	h=To:Subject:From:Date:From;
	b=pqmzAqgRjVaVzszY2Osa3bMKHMGq4Mm39gRRMHjSemTyOQxK786FUBdcvdF5L/wfH
	 SqO0s9v2KdaU8QAfRT/FbiMszXpq2ebsYHWnY6PWa255ay5NqIQdj4lhpGsVwWKqQ3
	 zGOkwG0V0dJkE1iiBG9akeQq8H82fCDD2DIZOdXXMbGRxr2k+G0bhmyYkhSa6pihmP
	 zh76ZQBHBw/jtKplLKp0tLg6MZndC3phFp4IJenLWt8iPzYRPX5iIORl6bU4+e3SHM
	 sL3eYTZo7PGNg7K7637xKpy/YBJ5xFStN+Av7rJTskcHD9oK8oTJoe/8BUWcJ1PoY8
	 U6tEZWRUiFXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3BCC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265615359.6267.10800465771194629734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b889d730c98093d817922dfb1e2565d160503f32b875816c395e8ff80a03a8
Date: Sat, 03 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722656153
