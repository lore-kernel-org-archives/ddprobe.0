Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0C4A0A
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732356954; cv=none; b=JS2j/DT1UcjWu8wCzuXX4F4czFB/WdxUDpimQZtBwXxBpHyLpvT/jyUC9ZWzlgPS3m3XfvDan7EQ0ZKdHm+VAiyZwclL3vRAJov/q7v51gLZr8snd9ORiIpTqsBtyYGqHhC0Tj8XkoUrUrvTAQ3J543BBYCa67ADonbiHrHTJjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732356954; c=relaxed/simple;
	bh=3MTvL01nDkOvnlU8OfWvmiTxot679iIdE8heXUBsYws=;
	h=To:Subject:From:Message-Id:Date; b=rli1MCLXZ67REk5P9OCRujFVp8Gg8Lj1pXnNspf9H1cMcVM7HV6z1B2V+0Z+fElRwgoJ8rESx0iZFZpqyVdF5NsNdL7Dx2Z7q2rqPL2WtzaALR1/4ioDJute0dwYeHK6oxNiO/fEKfR4Zhhni5Jee+YwW27p7H9Nbd5Af0o4jG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNvPLs99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNvPLs99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732356953;
	bh=3MTvL01nDkOvnlU8OfWvmiTxot679iIdE8heXUBsYws=;
	h=To:Subject:From:Date:From;
	b=uNvPLs99LAEuaLDagtmKXutBHeiuZ5w3SwyZbG4ZAjBEJDO9FFpkM+ARA06GuCm61
	 FRhU6vKfD/U+I6WVL4x6y67LulxFikmfF4gs3D39x1Zzq3W9v5gHHZFqJzShZ2l8uQ
	 CiXtGzDeSfbQLtG4YijBTeZ167HIsoEZhfQUgDyjdNaYhGj0GavdTrTzzr3/VMdUJS
	 OIVfD7a3sq4kvU8Ptlz3BFXjZN7MKBqNhfs3F0sliPobgoqd39daHkE+a7U6Bd2dqt
	 nlws1TqYVt2qZhBZxZ0tFR8JSVVu721LZ7PtuxV6l333W0F4YqtcNU1um6AMaIgPPv
	 AHpB9z5ojYVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDAE6ADEE
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235695358.26203.1296863384506852793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982594c2386366a548919dcd6b437a33c80eb55a9082c1b3374b8114c7fdb4e8
Date: Sat, 23 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732356953
