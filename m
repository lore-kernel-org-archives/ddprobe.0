Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E640258EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756523394; cv=none; b=IMUBTZhZid9gzceZdbDL41wFe4k2p7N87/Nj31C5Qzsu+kAsE8OEc86eZYQV4eeuR9wSzug/O6dOFepHDTJuXntPwGmbQE2mzIhPb4IK8tRZexOAZLZyCEaTaXd4w0uQUHMWxJ4DK8kBkZGx4PGf4ibC3HS7OBtVk1IoXIU3qxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756523394; c=relaxed/simple;
	bh=EhJcjze9BRzoxm+kC0u8cQgai5FFta7AaUbB+gf5Nts=;
	h=To:Subject:From:Message-Id:Date; b=LxQKoe3hkBSSJ9xSQsj/lnssSX19NgSD1RrLFi83fqeOs3a2++xvErgvs3LQ28wv2EMuQkqKWO2hIOHhmUKzUdNRhHaKVGQBowcO6osMYzDgRyF4Xktni3VpZET1/byS+6cdSOFUmffA/83sgJIWNck5NPfCkymMMPN8S7LQVjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQK53aGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQK53aGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160EC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756523393;
	bh=EhJcjze9BRzoxm+kC0u8cQgai5FFta7AaUbB+gf5Nts=;
	h=To:Subject:From:Date:From;
	b=YQK53aGrFNHHGBWA7KfFdlMPgE+2ay6JGO7S1gLJ1RJ1PSK3d71AhtjDJp+0iBQez
	 mha545+DwE6km74efGL18Cs5SL1V6P2bkWnk1nYPUHfwgozCmzM+zNhUDLWt2dkr1A
	 bIpVlOaf7WBnXk5YjlecXcwas5qJd7JxZlIdMgmaXsCjSDG4+f4JI41HAjZ0ev08RV
	 2VLgiD4L7VaTu6hyZ09ByexqDIjr+JVviAYcQjDZ5CjDP/Slj9RN2Gi0PUyDyXiqVu
	 oSxejLhgUck2B5Byn7Nciv0tj9XVYS05ADzgQyu+hdwRB+LuEkcIH544tR2Upgzuqj
	 phOdMtzgbbGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC74CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652339357.21450.5425363228429782202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6206eebf58fa2fcfc778d98cb8d1f563831a01bb8a4a959a84626fa0fa1c766a
Date: Sat, 30 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756523393
