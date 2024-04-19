Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5100BA947
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713551423; cv=none; b=WFRVTX0ntKVCY/hDVzPouY3SNMXwlr4zbz54jnBkwixlHARWc5XoMC6WwYmXksrevXZCmYyrx9UDBSN7LiAadGiQgPc/l9sfOvfh70Tq98N9aeuybnzUZH8L6hy9JmiqlqR+mOw+1i3P6taRzHkqwPufeL1wndIE2pMSlH9diWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713551423; c=relaxed/simple;
	bh=r4M4oU5gsV1HAcgBykBqcbnlt1cppzDKfgCcKyX05WM=;
	h=To:Subject:From:Message-Id:Date; b=VPoMZJ6k2g46ByRdIOJ369yoWhj3uWGgKb/EtA3bpPAUMPdxvJcSy2G4bTmqBIUlE8kcWWozXxPM/rIuCojiAandGiHvhNIQjX0f5HZhgBclwpSThYhT/ou9uF7ZamtCna8eLlUWXpvfaT7LfX5OhO4Z+o8xED/ABne8o/Uh6xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzBmyyPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzBmyyPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB509C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713551422;
	bh=r4M4oU5gsV1HAcgBykBqcbnlt1cppzDKfgCcKyX05WM=;
	h=To:Subject:From:Date:From;
	b=gzBmyyPxGvzwhzSTXTdDBZiDDCWoPZVtiaECyrlFfRRIqlmhAhd93BMiUX1HhmdGs
	 7CmDYOt2j5Lfx9ZoxsxX0JUD28G5MdBvLpTUhe3VWxLKLoh0E++Wo1EJu3LvfiZbAZ
	 tac3XlVU/Tq+YXz4YNBZFld6EN6OodCbD/eF/FlAL6e2Y0xhz+0eHHqpHcsvnyFLbj
	 oglpE3/ZRTzQhT0JEQAx28NxFhz1v6mTmy2ndRvu1h6e7IS3nQo/La8FE8rr4ldHQE
	 4+HIuHefHCfXKgpbTXXkXpaoQa5irNo0lh1hzx0KwftcburMlYQpMeDHbwHNIOcX1Y
	 D7xtVMc+RXxTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A96C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355142279.2378.10195478766289368131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199892548744cac5cc9ad4fe1de931e9c6227046ded2a419497726baef63b8ee
Date: Fri, 19 Apr 2024 18:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713551422
