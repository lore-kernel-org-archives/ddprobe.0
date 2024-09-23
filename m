Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A50184
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727057154; cv=none; b=hXBDf2KdIEnW7dHnRftBq4LfSSnZ3s4h0xhVrQW9frgrSSCViIMzOzp6AyQ62IxD/qw7+z4mee7yCw9ez01BEx91rVATdHmejWFPGoNR+zOPAq6zDvwF4+T2QaB2bmNkbfHaodUUWr6GixC9S8rVbRuuFPkAfojXCZ5RQH8+ylM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727057154; c=relaxed/simple;
	bh=Yev/vOq/6CZ00DQZ2wGtA+GF8DWiARue19xELSvL3qU=;
	h=To:Subject:From:Message-Id:Date; b=aB3dUPOEaszlTkz1HgTN2PFlO3FSsm7JG8R1ylHILIOriPZjRZLUNydX39nfxT2wslk5LZV2zgmxYvey0tjVeEsenMltiwZxi8wzjBEhJKC/AmSawNSTibYuF9fzwZ7wy++RcPaTeSXmai3DtX/umLTbyQCqd2hzJqm3AU3+snE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhsns29R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhsns29R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6BBC4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727057153;
	bh=Yev/vOq/6CZ00DQZ2wGtA+GF8DWiARue19xELSvL3qU=;
	h=To:Subject:From:Date:From;
	b=lhsns29RBSQj/dq9gx7Vjq5kCr+uytraNAgtPFj0wh0ZhsEz1UqfO8GC+X2XOwU6V
	 TYJo7Xz6fXLTgROv8vAF6fXa4VbDC84jU1e3YKo3tfLSqo2CvIz6pIX261kdKmCCPl
	 iJfMpKLOMl2iNJeCcj2mdrWiRwWZt8TRe2DF2nHaCnXU7FFvRptGmplcHA9SYLD4xO
	 duhlYz00KP+dSjEi1aJjFaUEAJ7odmdwtgh7RjwPtd27rS14nOe36uaIgW2Aq1nna8
	 VFCwaPm0flb/WPvGQUTYFoZxz91DNvLoBfdBKRp8vDy9Kogol4G1wTy/FY4NZq9Aze
	 weTAu7nzdeSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97332CF9C6C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705715358.13160.15160190069371583061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134e68b84c861d650abeed7c7f0a9058b90adfb1d4583b9f9d8a6a4ee476bd73
Date: Mon, 23 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727057153
