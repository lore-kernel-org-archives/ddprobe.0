Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108B3A0B2E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784284114; cv=none; b=rcxxQEZ692tifGG742OUDBBD3bF2/U0AO8NAa0RVgtpg/WJ91F4Ba5QqtKgiOtLIwiIvnNfkKpfZFei1DTyi6OTk4mdg4U2Q/7ZDOe4W9tI+JR+Z/TgLlULFDQQjDjO2Z5HmcBx1SzXqP5Ruae5bqzGlFe4hQRvII4Rw5c+mGgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784284114; c=relaxed/simple;
	bh=XV9oPAVZ9wOP/DX6pQoUG+VYllGoavQI4py//hScPFA=;
	h=To:Subject:From:Message-Id:Date; b=ifheO3Kit7WxxuJzlmtczQAjQXnl4ZP+Fy4ox41PeFUh+ETHL6/ia2aQPpmxuBnA68nF8++PdB7KMo0iXgMfXIqIsZcsgI8CXGOXOVW0Z61K4uBUW2usCaYmCY25F1tZJxzYJb9qYp1XMPDovwU5N27fjsJE0LpvslQUSPtv+Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RScQs8ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RScQs8ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85F1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784284113;
	bh=XV9oPAVZ9wOP/DX6pQoUG+VYllGoavQI4py//hScPFA=;
	h=To:Subject:From:Date:From;
	b=RScQs8nyL6fsBihLaXfZ6wCNAgjj/PBYhGZp9EjPLP4OjipyHJZtpE+T6TtyslbgA
	 c8cWg06hmr6pWZ7F7xx5s/d22NCKa08LhfU3D3odfNtKXe8s1NpSQJQMrCzvwolsjk
	 +OFhL/yLbqCJYAl6zKC+M1TKWxXqle1fb4RkPznNyvv8zrcu4zdvjNJBEv/ta/VZ68
	 fF6myK9tITRCF1g3FUn+B+2ZGLx0QAKSVo7jDGWgcy3TShZ3cpc0/bAqgDWymxJApp
	 Xeiz3I4XT61iuhlLFBHSprnVuYS8EGKr6gjKksBVgYL0iEYFaCzN6rkLxZ4gB9l6WO
	 iIXx33wfA4Fsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C22C44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428411373.19380.7226759855835764594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52a4e29c566a5e1861d1b7a1b77a82360ad5afa43724e1bdbfc3d51da50624f
Date: Fri, 17 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784284113
