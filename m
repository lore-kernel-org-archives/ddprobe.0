Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ED61EF08E
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739435934; cv=none; b=o/wl35B8Joc5jfTeakLTpQ2JftUVmop/DmWyhTg9d0yp5w8Sa3zoyq/6oMBzHogv8/DeFve0qOJoWbMlbnWvM3RCHBuR9SOJn6QPK1CCu6wtWkTW8EPkAzAKHxGJRkFOl7Nf9loGOT45KO9S8OJqg7+MrWQvaEn8ZON5PjdAl80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739435934; c=relaxed/simple;
	bh=A3m49zamSnVZqFQKTw7ScXEUcIdg5ASXGgS7Ol4Mj+U=;
	h=To:Subject:From:Message-Id:Date; b=rqqUPPeiIb481E559UVE/qSFCamdKXHNWayFaOChJ5xMEV+Rca9GcgIs0nMDYn9WxZauPp4v778zzFu7f/zcy58KIfTiSe9RBAp47+JLCq2DwaWJbCJiiUP0D3O/VnUTtWsPxwAlXX4qANvAz8jdqMyfSCZIgTEi3rbetCmfdEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFcq2AU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFcq2AU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC648C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739435933;
	bh=A3m49zamSnVZqFQKTw7ScXEUcIdg5ASXGgS7Ol4Mj+U=;
	h=To:Subject:From:Date:From;
	b=jFcq2AU0DsQjrB8TecZf92K1/N9qCfKIDS+BpxKIWWvaqjD1kaAh/5trd8MVreA2W
	 zj94/ieN485ST1ty4z/dZDw09lBQmhUT34EnzSCVWrubpn1ho23O2DQntrfm/2l2eU
	 hcayf+Sfci3ouz8zO37oe578m1e/hntAPhcxFuZ3QJP9+esSEpOKsIo6EZVQaziaH7
	 OwYGGPhyJnNVCkCIPu3WqdiWOIWIJtw1ngoz5bZqLSb1L+LI+KACkIIV2v4BELU6n4
	 Nag0gLaxBZMa8K2xn0mz7Iyq5Qtjf6X3vEop7Icqhsu/K3yDDNWxfTUn/ungEzENA7
	 fYrXsCMskMqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B726C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173943593362.13191.5925079659145477483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201c924901a84b834ad9e112739df2c6023fd009806aad13b234a0bcd6b8731d
Date: Thu, 13 Feb 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739435933
