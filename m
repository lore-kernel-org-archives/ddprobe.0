Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29734436344
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205894; cv=none; b=A1TuAfOabweM2eg2NTgYX8jkuB6tDheOEq31ki49skUqefRL9VvcFDhUbePBBKFUXvgLa9hoblr0HH7NVV3lAl9PdeHA4Xac+1ZOUAex2qTHyzLwc3cpMaKw6UveLtnSY7+01yEdkuI77KvrUxwL+7TcFp1QBj4irK3qRbZ17kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205894; c=relaxed/simple;
	bh=gZN4D7sKH9zl125kxVa/ZbO60jZ02yXWuFDamQ6bRM4=;
	h=To:Subject:From:Message-Id:Date; b=ks1JLXXRuXhHmTFgItoUhwzahwVYHHPlWhoZHMY9NI6cfVgwWbkTjKXAW7I6XW2YHBDNQ/XWtm1YdZsTjncc9Jnw5KWfCvLoITL2VUJVwrvdwnQDbfs6YYxEu1DOY+qyu7b6g/p9C+NsDsDNcQaRK7668uTlhkvzLK4xvL1p72o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBCWvX9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBCWvX9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25B9C19422
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205893;
	bh=gZN4D7sKH9zl125kxVa/ZbO60jZ02yXWuFDamQ6bRM4=;
	h=To:Subject:From:Date:From;
	b=IBCWvX9JSBXzk+M2FVgSURTnVEgFqRYNFIu23rzMJIcQcBQka7v/GVfgnIOAHcWGL
	 LH/EJ+un1idrW/pbVEnKEVy4LHZEgnq0L2n3Nvy3kgJ9E0kGk3TV6+eIt3UotoJYiU
	 RowJjW9/BR4tHIA9tq7PbPWxnGtB4YgNde5C+fPtO/lZbqwGEAAdzkaaiUmxIRSdwB
	 WiTLsRK29gruw3pgcGQaJYY8P4vOB6nnxQOCbAddFkN8eN9ZGudhwSj7pkAx8OJ681
	 7auKgawgrC966DR2zegfNA/+JaHCpGBhovSGRhCsf4CJ0XbDFwsyn7r5QQDU6ihK7b
	 WZnioHfqniQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBABFEFB5D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220589362.16217.8915151481296299257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33d2539dfa5c1e26c61146b450e1b4c7bcf03897dcc72e5b11f628a80a711c6
Date: Fri, 27 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772205893
