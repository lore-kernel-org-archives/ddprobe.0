Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8C1599A27
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792096234; cv=none; b=Zzj4S9nhCtQOUbezwyRARCgVJSj6u0J+Db9CeJCpKYG2zJs5RDfTTY2t+0iqtjg8/oeaAxQl8+cYSOBjyHQsp7oKkwHNyTEWpFexJXPGIzo2CD7iS4CUVcmNC0Lhu1dGV80IRje7IvJUaCdtuVZbdXpS6HT65wMyL3/aTEZCYMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792096234; c=relaxed/simple;
	bh=s480hCH8kfqQ01v4eY3jjbZnkAjIoqe9Rq7RTsun4hc=;
	h=To:Subject:From:Message-Id:Date; b=s/nk3A+2GdgFQuRGTVgNf7v7LKCrVJ0JvSvEiy5PvczxNSCqRiaYHl7FhgO6JN7hCKgHUWCFnE8lE8ZNuehpQjb5THIwLoO6hKcsnHPxbxAMPll5rFAJFH76fQVGn8SvpnnxefdYb7rQQW4m5MiFTsf4JgTEstjOwsOn3vjTeJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxWU/liU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxWU/liU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFDAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792096233;
	bh=s480hCH8kfqQ01v4eY3jjbZnkAjIoqe9Rq7RTsun4hc=;
	h=To:Subject:From:Date:From;
	b=kxWU/liU0jDOdUBudHBP88m/TUvpjrfxr2XY2vEf7KhdObLJ0hRTEcmCjADxtngKR
	 KC1Gd81nIVq4FcbhwVexabCUQLnWT7tvMh+fl3jenq7npxKnhqgchAp4STgtfpRANL
	 ueS5PeATq0Z7AUy4joToQYan7btPqKDfr8Xrcylutdq5orIrnBuUlxm+/ZgcrN0xgq
	 SqG3YIR7Tsv+c4nOKE0xKCkeK1MKin9xu3dSOO5f5Pv4LAZpJCrwf9uq2RrTbP78Po
	 vye0t4feWoCqEgqj0rHvmwIeqdPjv0nB479Zda/8mqhsstBpYRRdqYkHgENKsNXmJ9
	 M8c8SjnQsLttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB7CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209623369.20609.2053106658420961431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbb0efe5f759750211e147f1e033bbf092f4da276b52d962530c90b602be159
Date: Thu, 15 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792096233
