Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D4115E5BC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718735363; cv=none; b=gHTJh71t2F+VS6Ut8dAspadI4WmOJB0D6c3xM64cpG2ViMfaJ1jhF18YPaCtSRM+81I64qY8NVQmmkDMdvk/EOD8tdD7BRl3atqhxCuNcR6QRBFNmCYJBa7JT9YQnSuuAmWbMw7zvyz1v56mvdy4Wcb60gIZPttSEJInM1V7wXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718735363; c=relaxed/simple;
	bh=IEEmrTAY9w+wf3TmKs5JeGs0tbTCIeMPQjZcm7exiXQ=;
	h=To:Subject:From:Message-Id:Date; b=IGiTXMGQri0OiUL+/4UF1MtqeW58oPe9dBgfKJBUvjCO5R9K6WtQp5MmPZYtVxFIK7Dm981GV7UJ5WvuycAx3o+k6JX1rR+OBNNF8zHqGanI0Z3+RyrCRHbT65Dx3QQO2NZgULSys9WmMz97CN2UegCKkHbR9gWmjzQ2+9wtl/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9MYpV2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9MYpV2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09FCCC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718735363;
	bh=IEEmrTAY9w+wf3TmKs5JeGs0tbTCIeMPQjZcm7exiXQ=;
	h=To:Subject:From:Date:From;
	b=K9MYpV2mXWEFH3dovoxARddIwx0kr8DsuDZb8c4fasMc+UxHISo2PDZ2XqKet41/g
	 wp1w3MNb5CiOPVSfXPnudy895JWKovcSVWWvzx+6uj4UDdkUaphW2t2OMdeYLQee5/
	 XiQgKnOaqHgvrje3OzXR2uUu5RRhnmhNqCsZ5byeAObJ5pCLN8MMmJ3ItONWayyQNb
	 yFMdDtNZHqzXJ7KirnVHwY0g+cqkJyjtj9s8bqexnGoF15f61aKcxXNII8xioxX9bY
	 NHrMwtrzB03JHAPKn1BETAOXiZJdj5KurrTluPhQM5g+8JEAWSkwfBdcZjM1lW281c
	 CkoMc8DWsTBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1330C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873536290.12504.1319543327092964678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e07d6da6a6f38a36bbb5b92b9d07fa2a23f8d38f444c19c095a501001d9998
Date: Tue, 18 Jun 2024 18:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718735362
