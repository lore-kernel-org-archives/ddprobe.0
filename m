Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAB91F1538
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760101793; cv=none; b=EvM0RijVkP4b8vIV7pelW+rEHADMvZ3Y5KmCu1c/+cYsd1tgB7UGiUnyuG/P8H+fqcfLrSZeff1P9nfDrQEtAbS8gAf0CKqv4AC8aHLDO2q3iZgLViMf+9/YldshZfELGzmQuVa8SDVhHkdLEReC7WqIqJqZ/AAkNSS4h5avO0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760101793; c=relaxed/simple;
	bh=oy51ktl8zbNS22LsIUnQHsMxwE6OUI5c7zgPM9flbvw=;
	h=To:Subject:From:Message-Id:Date; b=qc6+NFXKNDtI3IIdFAjaCWaJb4Eg/U/h1goZ3z+nIwnhufU6FsbkdJUzGVnZXPqC6KgEj5UbZC0Hk3hsJ3yOje79xg/1ae97yS5dMjhzw9Ox2poojhWoXzBxCYkqgxWUMpHRP/KmlZ8b8l2wjKLtJlGQ0elFnHX7QokmhLAllUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NocPBJwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NocPBJwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB9FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760101793;
	bh=oy51ktl8zbNS22LsIUnQHsMxwE6OUI5c7zgPM9flbvw=;
	h=To:Subject:From:Date:From;
	b=NocPBJwAXZMoswY/PI0eg5fc2pRd+pRwhuDvKenO0svjEBxYGFF5dSKr+JPztVVWq
	 zS/xWnQbs79a1vD2mEuh+JEBOkJt0CcDV6sKwnYrd8gZ7JmF+q5DRjoeo62S3rTEOF
	 +EqKZ3qMqrOlCEs6yn104tV9Sl60zau7lbY0h9vcNlacqy2tYzcVjgeLEem20u2nNy
	 tgmaFzdhkmPEMkspBKNly3eWN+yOV8UDztYY/Jy7KuqEz05wYn7s/911kfj7ozMe/3
	 deKI0pEkXyx17r5JovKsS78JVMtAxojHbEhyv7BNk6Rc3hkVNau30ftcxx872+t8v0
	 nlHh7+AgvmLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82CCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010179358.27815.14448572184709078580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d731bc71b64cbeed4bed7005f6a7e8a944ea819ff923ea45ddffb10ec7be7896
Date: Fri, 10 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760101793
