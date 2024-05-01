Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415BA4D5BF
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714600343; cv=none; b=GWJIedLmO3HmF4XXN7GXqB9e2LerEKjCFi+Asv4NwahBfj0bXHVqApGTSbmexlaK0gKp1OuIWXvNPQfW7rxdFz4FzhEIymI12f2Io0i/zOUHzi183onMMFQFfQcAZKanuYC/wX2g8YeG0ZtFeL8G6QHx5ajwpsWz8hZ28jTkklI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714600343; c=relaxed/simple;
	bh=FuFYguB+i1NVLb0vMUPpM8fP2gIPm7/GjddV4X6d8bY=;
	h=To:Subject:From:Message-Id:Date; b=ss4Ix4mOrrST8FPAiSmEt2PcHLgNhabBQ54n++0qcp741DLOP5te75zwfdhFkE4+f81UEnbFHhrqr2JxmB1fy2lqd/froiCC2EXcX48UkVmmNqdHF5WbejkBYfJJwqnslwpOj86lrWK4sNLw/bEFNxvydRhqJVVEQLD2J1qIiYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Wwuthh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Wwuthh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81C2C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714600342;
	bh=FuFYguB+i1NVLb0vMUPpM8fP2gIPm7/GjddV4X6d8bY=;
	h=To:Subject:From:Date:From;
	b=C8WwuthhYcXeR+Y/W6Zt9yhLM7DD9AlylstsPsmGpF4fBoh7KAxMtMedZAEokiG/l
	 3KeF6kD8OY0Q5QXhZGg2kq0egULWy0bvO5Qx5XqWzye2NM8B3BBV7IzAV9/awdtgi5
	 N1UxXUykgovDV6g7YPUF/nY8gwuZQhqCnfFkeiFSdo5B+Mg+3vxNOnYxr++h2RJivX
	 69JI5cknwqWn/dbefGmbaH472vT6Cj8SlMOVT+I2+vwY+3drNFjU/q8feyrXPICH6u
	 xc5T/HdnKBphEUSbmhs2NF1FqUsbc+T5XcvMT/h2OAqHzeBNU1GsxV31nkSocET8SU
	 HVlmv58zjwZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CDBC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460034279.22571.14740282657338977306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecc2d1356c40fd44460351fca6f12f758c3fa5c53e65bb2ac5477e97828460e
Date: Wed, 01 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714600342
