Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A751D432D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767474234; cv=none; b=lrz6KCUOu0rH93YKRr+tPBwHN5b2hA2T6Puy5iM16KVaLCL6r3LjFq2/kGb3pRK73flSQWZ8pb9G6ed0SiFLfSncS5Ku5ivVGH2AgwlMcvSSfkujsC+VS628drV1pN7GT9ML1+LWkFHVzIoKyyZbP1aEazCS5X04Z5Na9WlYIAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767474234; c=relaxed/simple;
	bh=J/hpABZLtaknwVpA1FsOHNde3/YTRYJt0ihBSwCLH04=;
	h=To:Subject:From:Message-Id:Date; b=qf8skdxlac6QDcFiXZ8eSBeazm/IwBs33RmMNCt5UWCwNER+NxpWW3MXHxWj8sKgI4PSEnaqhZRBo897Sqs9rtvLkBefYbK8DANxpDMzQQuGCHgsZT2ZPBpbh7hOZxPOYOzJBrjT4xU3nNUQc08seNxYaOgHtTXdepyPKTwhw+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJ8CTUaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJ8CTUaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A784CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767474233;
	bh=J/hpABZLtaknwVpA1FsOHNde3/YTRYJt0ihBSwCLH04=;
	h=To:Subject:From:Date:From;
	b=CJ8CTUaUdDER3GA1i+l4ouSruyRxEQe6JPUdaKeeh2JQCRy/qKMpy94PuxV0egoHM
	 AKxrc1mkAFvTfS7+CsYVQu2V74iYfzlhQcUH8uqkLebK3fTrGR11MakH9Kh7it1ne0
	 M5wSX5gUtS0oYAQFXlPdOHDjZOMqQ58x/jCrjoAgXYWWvDU/zLDLuqnZBPyko8PDyr
	 n7DMRMMfmPqlYJhTTjQYUIZEGfWHgawc2qsxrKPYovom7FL3E3OUXuFvC41erogyQG
	 dc9FPEKEWs6sC2pFyChg9btgHJjBwcAd+b1wwPo9SpBcPWT6pZztAiGgRMOyGX7Zcu
	 /zbVMAcjEqIYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97438FC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747423358.16881.17079330582192502408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d9c88b794c4d734931e0a213c2a744b46f51f2715d7190d547b8c0280d8732
Date: Sat, 03 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767474233
