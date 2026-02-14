Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9CF8F5B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771029894; cv=none; b=bpKgwHql8M4dQAjVQDydQt3gID/Hccv4n5BmNlIiqb/H5zhXSsalMNCtaONZ7IpkCZWpbWfxpu8+yzKD1Whe3XJ2JkfGF/DPgmPthF0MPeGQuHreS9wLKTdbIlHA1diaYBYbTbHF/njYNST6V8TFXUsKTIE9lkAV4Lvk95bDmsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771029894; c=relaxed/simple;
	bh=7kToD0kXVGrl6ccWiPiXOO2MPEq7q7AGwKTG7S1DxaM=;
	h=To:Subject:From:Message-Id:Date; b=W/6qwd/8ct6SGfZftMm7ELxSw7C8fgwx6EscgajTUQ3QE1actX8sgsfH8Z2PcKU6sGAQVyyNK/Xwsn8Ki7jCoaoxy8c/lDpD8vL9P0++oS/EPWEU/JMfbG7EfwvmnUIPHF7yYjbw2/pzjc1w8KurgEsPdvvqiKcjsDepdlg7SLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxFPI2Gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxFPI2Gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE99C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771029893;
	bh=7kToD0kXVGrl6ccWiPiXOO2MPEq7q7AGwKTG7S1DxaM=;
	h=To:Subject:From:Date:From;
	b=DxFPI2Gzz9nxODGlNLjz0AfJKNIqBIKGybAgwhfkri3himgi/OtrsOg9k7GwtKkol
	 7NMcA/4DBgxyK868dhMs25bUWKClN9OcDNyNzf5ywn2yh8ZQhJ9rDSbPOy7njFJHH4
	 Y1S84FsNZE0zaMvxZqSCWv+XTk/nbnXWmSA/e5UsklsEpPqH3ntZK0LJ8dRS7jh2eQ
	 HVC/aPcNu4SPCSMlHrjTRU/3qGp8v/JXh3c7hHQUtA+TiO+alXvNGi48mtBko6Fbwu
	 K51d/AHYXnCEIGN5AXrRFXYXfwOmUc12TY0ZbrZGHKD6vxSbFV2YuBVlmZGxtrp6Lq
	 I764rXDmME+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F2EF99E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102989362.9211.6451172814145004578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3621968477b41868efba0ee5cb0aa0253df1084c68e91f071ad4ec4f9e20006
Date: Sat, 14 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771029893
