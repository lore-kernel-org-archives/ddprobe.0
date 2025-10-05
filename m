Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F7A35962
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759702195; cv=none; b=HOnecBXk/r/RKJvChmDANoq3YkHMr1QPDAu1wSXsgQLibkExIOHvQ6cjJmY7NlgAyJjKvUbyYo5ighrCBm8uU76kVR0uaxQkyNbYCU12xZ4hWvCL246p7UrSEHgm7GoUUwSmmalI3EC9uA51oGwMtmZbbWq1TCeyyC7g+b123iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759702195; c=relaxed/simple;
	bh=nuXCnqFIF6GkhpDx93sCWAvACW6JQT36NdDfO0ZxlSI=;
	h=To:Subject:From:Message-Id:Date; b=Dp2VmWbI7Gcv6UwRMqqL9Nx2uNh84fLKG8to4G/zmKf33LehurUmcb494OEU3sscGDQdVP8bgs77pMtiOxm0vBz0YgqXBNT1MC6obCOvIQtIvjzWNrv81ZJgA89ieydVjaVXrH+ovdd3w1fRJNcwlCKuK/kSl6zcuY/isYTjYfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0JwXtOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0JwXtOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406FC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759702193;
	bh=nuXCnqFIF6GkhpDx93sCWAvACW6JQT36NdDfO0ZxlSI=;
	h=To:Subject:From:Date:From;
	b=Y0JwXtOnEc8L/lTdKhpgsvmX+d9zj2UnvT8KtmZZ5QSHfJ3kKKbI5S/v6V61hba33
	 WcHgplbl5tQIPJ+aYiP6t+zRd3vggXWOfw5G4uLKzQ3LXKLNfdPQDWoLDN/kGQ6Rb9
	 rAmgqSgxorouzzj1jKNVCBzD/NcbAp5igf/pYLDs3KA2M/TBe35vE/M7VkHR6J8+g4
	 TLFLwCxVrkEqeERHSPfBcIrl1JL6EWTTDNP1k3y5KSZKn9EaRE7K2m7qZDiVzaGHlB
	 6nuuJZ7i8Y2ViBAyduPhfmgeipEAsaK5cfigYEy5I4DuhoHo0ARAd8P0pNTAP/1dXm
	 FynNKflRTqo6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91019CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970219358.1408.11484400795180827505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586d25016a86c847b5e2bd93a1d61ede7b3d8c0755a56ba02faea161aa2592c1
Date: Sun, 05 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759702193
