Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B51A1429D
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788833434; cv=none; b=oBhqWl/ZRy9qAGXrw4AE9M3wEqOlZrM8+AY9IKr/5JZSko3TddFxGyadsGd0MQQ6lJ8nDQrw1ln+pw4uF9n+WVYmDomC39CVYeUaVEvbaHNRpCfIgKdpWIuEOik2u8/rYscn0WIP1LMLzYf9oDq1J/rMU7c8N0dqQovD9HtPMww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788833434; c=relaxed/simple;
	bh=ykIwGc/qIPUWoa2wivfdRc3zcOmTVOFqVQ6LuCJL6Qw=;
	h=To:Subject:From:Message-Id:Date; b=CIaY33BLcdenGEAsSfFGpkrVv6/I+GQDDA/95FIiL/jdZbxnsO2+UVWemoIvioR9Cfi4iB6fbfQjZ8XXo86yuIxInI1y+PSuA3vFzZxdi9LVXNiBvgKOhatLbgKT1m5Hrp7vtmRy4ZM1HpzSWU6+nI9vRgMXRnPEwc7r1iuwm2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxEr3NO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxEr3NO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1F9C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788833433;
	bh=ykIwGc/qIPUWoa2wivfdRc3zcOmTVOFqVQ6LuCJL6Qw=;
	h=To:Subject:From:Date:From;
	b=VxEr3NO28UG0EiXaqh5gDGwSXbv4sbZKxBK/oJFVaKMZ6YdPW1NmVzyQvF+FPZ+0z
	 Z0rHvTtBRN/f9YBT28StBqgYc+3j65a+S/thYis6UwCI+f5PdSL8CacmEoltVZJR10
	 sxreGkj5kSSr4sDYDylaXajqRm9JXEbj5vfcNIBEXMMQvIf/dBU5YyuJ3kTaIYlbLH
	 Kw0bZfYyY+XHCLRuI7pDSXdLYNrXwhlL41Csrxmj+lG6PunaytCTHCgX4jsHRZ7API
	 lTko5J+BzYRX7+wvi1lduro8Zmy0KeM1ddr3e2FLI4WWmWVZYeyoyk3HdnvRbvNtot
	 b/n/ZwQ/59fIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2820C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883343370.17793.10599467452725354885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba9853588566efef0a627ba6daf5a28f2722625d6fb70c3dfea53e07adf6db6
Date: Tue, 08 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788833433
