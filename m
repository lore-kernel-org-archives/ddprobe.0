Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC532ED27
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780401874; cv=none; b=NoQ7MNziz/sTohXbBMlBuF0FSg4r2QrzRDN8xUq4IhTOxtnMeuJ5XHiwj9YDpRE42E6vg9kNjo9pqZAjp/3gN+XMzjxq3ycPVhTla5JV3QsbLwlwpSvLw+ViQtFEkfWYL7UbJ/2licGRTjOccI37NVbis42ELVIuH6d+wnQ6T5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780401874; c=relaxed/simple;
	bh=sxkShf3EixTlfcI5slyuJNjtGRnVdf06lR+3u/9ld1o=;
	h=To:Subject:From:Message-Id:Date; b=iV8And3Krvl8BOhf9N56pIou1JBJusLveeu7qPuYa5QWMR8Vnz3FCyt+yWYEwzpQlyLOg79A9cAmGk+l9A+p0lbhF6tQ8Zxut9bAFsrUiTeQea9KCdAaSDXlXMWNXSjNOgsir5Q+shU6CiLMb4HJN+k06VTnYOw8LkoAbpeEQYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfsaqlxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfsaqlxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD48C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780401873;
	bh=sxkShf3EixTlfcI5slyuJNjtGRnVdf06lR+3u/9ld1o=;
	h=To:Subject:From:Date:From;
	b=qfsaqlxs120QWcopJG4uDP/AKCuKriJ7nX2fTYqwC0QsvmZCoVJLAmk57jGdNCXOO
	 DSyYtYK/XSuJwuFNP0p6rSpCzdq+ZIimS//5f5qLSEnMWJaDlnsJQ0t9yXtnqddR1w
	 K/1RcXGXbUoV5NbKIpP6fDZVMJul9XTjmKATfIvpKy0NjbaNczy4Ekfjmm2wu+YcwI
	 jAoTthszjzxotW+8PgYl4tGyHc2F4xSZmrLaNJkNkpcABVcY9nU/Tp0Us/AjgEZsLI
	 dptdVFaOB3A/z6JVGPYi9ixYPxXZUctOnX7LcWF3LcNEoPimR0+4ZN2wz+rr5W34IL
	 ff/2k0Xl5Z8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB682CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040187369.20291.1263103091897822493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9493b5c53140ab6135ea3cad31364573f3383084da38cc1e97740cb50e8adc5b
Date: Tue, 02 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780401873
