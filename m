Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C5EA923
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749626394; cv=none; b=PqJCg3pJbxrR6LG2bMx0AW6Xdy5LrwryFz4pvLRCB0rq3y1AHHqnGk7RIE0T7I7fZOLW301FUXkG/W3WM4teS5SHkco/BpbJOehpwfUkYEuF0u2RJaLRjVl2iE8f5jxCc5QDvPyy5UdGS/CuBVda73TxKE5rsoCXncNKxC+mZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749626394; c=relaxed/simple;
	bh=omyd+I/rNi7keblFf5QzljYmSu5brTMq6CU3GI+vt48=;
	h=To:Subject:From:Message-Id:Date; b=YV0XiCZsZqME6zgpre24nu5TK4/tWEExo8tRJqiKK8UCI87oNy33tz84PqjhwnC9O35Ar4gEmrF/0dEOIZjt08h5NXQgyKznNCiyim3sd1Cwj2N00SJ8/LzCyasfv2kLJQW52vrrGJZioMvw9aKKRAzo5ASvMww/UgwFFp9wUVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR2TUm7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR2TUm7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB52AC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749626393;
	bh=omyd+I/rNi7keblFf5QzljYmSu5brTMq6CU3GI+vt48=;
	h=To:Subject:From:Date:From;
	b=IR2TUm7KfFb6x2T8FwA6QgSHBAYy5xTklN0/ZNnAWfTkwBsOeUrEsvboKHyOJNNpF
	 WyxjoUzVUXX+ckgawPmBOOY5SMx6Q70qgT+jqnQq5jFUgOVHv3mGXmZQ8DoHMKBaQW
	 iPT6xp7q8mkXKIntFhizrcGmPduKdwciQaN/TrMF9zzAh+eLybIztQJtKfJmLxRxVv
	 bTJ+tXJoZT9vmdUON989laAFMOBSsO3AL5ebVSZK0nbASHJ9PelSMjH7AW75ERqx1C
	 hoUq2wdnhHO/H+xhwGA2ffZ0IucgCW9m0KZOOPYkTnS7J7RjRr1uDE0MfrMDgAGXIX
	 e+QQYhQ21mxfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9506BC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962639360.22602.6479461992038583317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7361a10b8ed6c08414f4db25a09d667526efc241d2b861b33a35a67265d5a298
Date: Wed, 11 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749626393
