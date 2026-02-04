Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A238E5C2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770245034; cv=none; b=IyjkMQ7eFFfTTFKMm/rI8SKap++E0TFKqjrrozJ4wdcpn/N4Z/2OI1cVxb8pBxfnKGjSCjnfxJ/52pvXbDJio8Z1wLd7KNnoz9vzgo0M21MCsnz+1wOE3/582npu6o8qwpe2NYnIzHLImBYxT9ejbGOGGanwT/EUyU85BmHS5+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770245034; c=relaxed/simple;
	bh=ESCXS/co8+hLtIJ8JlJX7gwUmRctxjHc7XJyZOe2U/0=;
	h=To:Subject:From:Message-Id:Date; b=gkpGDZvADsEtcMRRoukMH5CggDXesg90M97veJEBF3ce5+EU53UePMzacHlbBnCf2To1ECvQTsV0TAZkljsyqa/sV/PAo9a2V8nLXtbQvjS9xvwlAM2fPtlKVxMm4titEfGh3U6H9GnJVABgEHYEnymcVJdeiUax5hn6mDbg/8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th5/STZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th5/STZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65FFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770245033;
	bh=ESCXS/co8+hLtIJ8JlJX7gwUmRctxjHc7XJyZOe2U/0=;
	h=To:Subject:From:Date:From;
	b=th5/STZ72QnRBMTm/o+AOa0yHSz+D0pUywpR8lzf5vyYy0nD8QmT7UAigJNeaAkCK
	 fadE/clJ5aYtC5KKx5n8xPWN4gBrP8n9MtvFvzmyhcQNaw2xrrVJBiyBXQ0pM4u2fP
	 GYcnWGftQ5EkUq8tV3N0hwnWvCp7ff0wVb18KgEhXMC3EKnVzxjDo+7IGJr6ji+pCh
	 53XI+KIMGElAH2YKFt29xBkzjlVIk7O9AYyEORnVP21SFKC4wLwDgWqoM3ReWptYx9
	 Gp5Bc2WNVPr8t47lIQb/3Qxl0vfKImRnK/wo+fL6qbbf1VgVsFoWcApx78DHrIHICh
	 UoqBBe1MrpV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F8EA794B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024503359.734.12600085180252151070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347f47ec132c3fefd7934b781383128e89a776c65ae7e28906b1542d3dfbc975
Date: Wed, 04 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770245033
