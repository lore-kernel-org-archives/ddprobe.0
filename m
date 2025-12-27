Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1143B242D95
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766849034; cv=none; b=EUjoCxxoWgOWHl+LDy5mlCDSGRXjkEkFg0vcxoV2dpi955ogfItSYeeG4YOL5G9PcSUjRlSvF1K5J0cE9oHTYquY1UFrcncNU+w/nK4GWSxPlxWUSWdGrJmkbQ9YoE/xtK/5LxQ3zA7VezhP3i2g6NvQsxOoM7TCeoAzeQJkrqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766849034; c=relaxed/simple;
	bh=S+pMPpDCpqFWErDfzKPrVlf5NGg29xxZ3ud0of9MilQ=;
	h=To:Subject:From:Message-Id:Date; b=PQcGXtSl/3Yit3RHqAzcnJs6Gw181HrxMIrfaNj802icLfPk56LvVo8wUxmbW/ChpVFEYnrPtwWwBbehn0wYzpYNXRgbLydb1YBSsOy00bwDZsI3F9LH4Yzizc4kFYuIMnQKgc5BRJE6U+pBptMPInlVRSLGxeuS48eJG++wzRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg7jJQ88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg7jJQ88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99CFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766849033;
	bh=S+pMPpDCpqFWErDfzKPrVlf5NGg29xxZ3ud0of9MilQ=;
	h=To:Subject:From:Date:From;
	b=Fg7jJQ88rsAW17H1kyaIMiA4kZip3MO+ZuNr0GZA5nzf3g/NuOgGX21rJCVhuE2d2
	 qgYOxWwyNf753lQh8RfnD/+yGKw/GowNcsRTqftjQN5MAGwzn4n6z2QzdDndW/2n/u
	 CjUpJ1zLjIlFUDX9EEuU/zuYkf8oRzmwvyNT1Q5mgM4RtN8cYT84XQfDhAwiXax+7I
	 q8bN8wbycdq9GIi/COC+K/CP/ExWLRiiRzhi4In3A4hkHkJHqJE2J5ibFyT2RXM6MX
	 azfVNYr/Xkas5MjAUbGOJzYMYhs8y5ZpGNDh7UkWyNHID6mSN9ktkegIVt9rVf5mgn
	 +Yk+DzRXfD8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A00E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684903358.29739.10464131306408383526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8620eed471f9df549a783dbfac9d1bd3d275a093604e76a369a3d5c5b052e7
Date: Sat, 27 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766849033
