Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FD1253F03
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759343994; cv=none; b=iSHKNUEfd3DdtZSHMLen4ZmGVnozDhirfgTW0CJlavbZMV2grYixhuUIiSlgx+5wOR9e0ewKIbi/7KCXgl7oXDfnO+UrO/Z0KrbpU7etvszlcPjNJrGwi6hjN+0kYYsti7RKmV4mIGE+2J8LXFAjJw0ciGzXEtsmJlsPyxWcoyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759343994; c=relaxed/simple;
	bh=lZwkW9nqNtNzq54Sy/kzSb79sGmE/tIgkJkRMg0Zzwc=;
	h=To:Subject:From:Message-Id:Date; b=R1q58LdpQXxcaT1lRq0sUphfawBTzkGh/QfXFVyPoMtjBaI8HlPbjsX4lHjG/Ok0AzBjtf8ky8uS78h/9tGBVKAGFvmNJkXzGQhA6TZmdLq/d5hlrf42hXbRp57GYr/ZdEE95OSN/RbZvvtBZIB0v54s7c72CtXJ3O/0EbvJOIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpF4I+9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpF4I+9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03EBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759343993;
	bh=lZwkW9nqNtNzq54Sy/kzSb79sGmE/tIgkJkRMg0Zzwc=;
	h=To:Subject:From:Date:From;
	b=dpF4I+9o6oZTVzzpbIUZOeZ7Hj0GWG9m92MejgP9V1OrJ21OEOK1XXD6Esbsmvw+W
	 8VvuJL0v8imQZMJk4TinMo4Tiamf/0gQNNS8bWLZZRYxzfV6i0UiD7WGSAzZNdwkuR
	 hAHvkXiqOOBbKck3ro+ZOSOtq7SuNvS6Qnos4Ew5FwWicfrBvGx8m/SUiMOzBPJwji
	 SyIOHbPXWSrxbppidGCmBA5sIWY49mjBhvvpz0z3jbfRh2lJYWE8FA6pnXY+Lnon4M
	 LjgkglDzQOT/ZUgpcX2rSOIfVy6kt0Lsj/1CEy77inM1EFea88LVx8JVOiLGY3CKdh
	 TQa2K/GDtji7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB83CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934399358.23934.12572772727818032631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36e9b940f7e1f022e2a450d186ed8e4ced70b25df19f9cda31991b9881aed42
Date: Wed, 01 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759343993
