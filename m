Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6711D61BB
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757380194; cv=none; b=byIyPJ311bsDpVlMulz26gCVd8E503C8aYPETfYeXU7AyHnOV+QgXFbEwZ0PY8SS3k3G29vSBUMPMIBJHdwwS+31hfLsDS9yqMYKZW+Q3gCyh8+j21gy5SGkjw/BQPa+K2rQGKrsXzm3GV0bYczs4eDupufhztvLrnWATAGVjjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757380194; c=relaxed/simple;
	bh=QDPNOiImts4UaXwYSp3bWvVL272OOr49kfDyL9qfvRE=;
	h=To:Subject:From:Message-Id:Date; b=t1RR5HFHreadJmuZNVRdBpYaAgIqWwJqJKb9icd9sLmzl4kE+r/lkUYpvfeqzL69ga9Kw0rhxgzuJarfNKdpkmULIdl9bagi7rPFhG5b+2jaIFcmZawPTknXz+B7GXpwx+JVtlGvw6L0qVRk9FDUdW3w7Pj5qkNcmtOOtfg51e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwptj72T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwptj72T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC58C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757380193;
	bh=QDPNOiImts4UaXwYSp3bWvVL272OOr49kfDyL9qfvRE=;
	h=To:Subject:From:Date:From;
	b=cwptj72TEFHcdRmQpHEZpbfVkLVmSct1s42A5BTYpaCRwsRqB0pTL3X5RXmFAEaAJ
	 1viFuHAGSRPnlFYqkdMju55zd8phs+d+VTLBPuGpUbQJr77lY4TGgAjTjPa6Ud/jKk
	 VyguoV+g9UciD8bPDLQEuQPj53SlBxjN7cKMWKi2NRfT6ixN3gWk3uZfKR+ta7yK0U
	 3ymej6GAI0uKhjb8IL4dnzIhQwGRIegz8JGzWAsDC14P3Z3sZhGr6i+hI0inQssFH4
	 s8e95fXeE6+KBVEfIVWVIEJWFm5iRfbd68fB0EdMwwhtHsNzZfIqQDxRdxYYQ6Rl7d
	 Glw0udeRTEMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4AFCAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738019357.22988.7212685054024335299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab64fad2614fe44102f5181c3d5204328c9b8fe520ccbd44d674c139e0b72884
Date: Tue, 09 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757380193
