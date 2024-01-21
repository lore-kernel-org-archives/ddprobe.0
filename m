Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0036D12E7C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705834697; cv=none; b=idvy2Qdc4SA9ylR5B7dfxJPICl4LXNVFrHOm43WS7KucCFKm0fGw0+iMz8c9mox40pqYBnTb/W4ZnhblvilnAh/x4c/ZJ7nM1/b9P1K7FQeZj4ieFDuzPZxlYcOnHn9pBKxEdV3ZLW2PIubT98gRncSCrF/cfmORbz+ixIjNy8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705834697; c=relaxed/simple;
	bh=TdqDu6YXW2lZd2RPMKtuiqv8RL88OEnNg7GWWvdSwp0=;
	h=To:Subject:From:Message-Id:Date; b=jo3oTNlHnk1pe4q40hkUOzs2KbMUIC8OB75qeCtybs/THxgYihGCe4SKmiZjedPvxk+1sAhquCMYKBUMXoNjTl+J5cTls9Dg9//cZ0+BR8ufQpSlWoRJvj3HMFtVuC/+Xjz7N6G8Fx3BxD/9FPhhI4liYMfrN5Xk4KiGru5XZgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUMUTl2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUMUTl2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F058C43390
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705834696;
	bh=TdqDu6YXW2lZd2RPMKtuiqv8RL88OEnNg7GWWvdSwp0=;
	h=To:Subject:From:Date:From;
	b=IUMUTl2duqWruCFXNU7L/HPWiS16Yi0bXtWHofq55NS+zi1/FyNTDxkRTsn0GPCu5
	 PsgtVTzIZ80GiqdzbtjbovTWV8TCBXhwwU4WHPYILmf6UDFrKnaREoKw3ogcmMVABF
	 zEXGJEOItHmWflC22L1HxnhvQ435JbR1mMYM4ZopOER+O7n4womjlGCTspCqAH4JVh
	 TwnpyEyd3A23NWbz22G9jg8ctS2zYwu9FSG/UMXRd3AsKgaarYfKG2+7v9Izwue2ml
	 rk1viAqh24kDJMZ5HMgVUelaSNsnpXDbg6lB/eS826Szeehch7TKsMz/oO3Ru40oNh
	 9iALwLAFTAE/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62353C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170583469638.30475.13527142357274856357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ab534556b22265329b15e7829b90b4c9cdd50231ce0f884f48b3eaf321062f
Date: Sun, 21 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705834696
