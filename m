Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0E163CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790434834; cv=none; b=fGCummUKAbORQwmmlRS0aKjiIMkYMMjY5T01kO0+heEZrYGNgmZMvbUlKhdir8dpJHu5644/9eT8fK8xxLl0cVAAckwvwtuUdfIuW1Om0e2k+yo4r6jV1VwgeVtZadHDAagf/Sn1ZqridVKh5mj/aEcqtoa/0o6SQ0rwWiUaljI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790434834; c=relaxed/simple;
	bh=AyWRKvoYIT6+ivU274EvYCGm09RotrPTczyp8URJyUs=;
	h=To:Subject:From:Message-Id:Date; b=XohinS5Wjyvr89TN13ryVdHPUaqfzpHdFnjG+FLrlAuHNNmDkiFmkhH5IdAzbvguVQON3YbGGSQTcVRTbMNXkJCH3RMcKtLpz7CQ2i6RbhsQoqd/sR+yeikeBtUqJZ9GrOrP6Ipwjg4fsM7EeM3aeKJeSwzTm8VG1dyWOjcVBpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0sOo/wC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0sOo/wC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A66C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790434833;
	bh=AyWRKvoYIT6+ivU274EvYCGm09RotrPTczyp8URJyUs=;
	h=To:Subject:From:Date:From;
	b=X0sOo/wCnRj1abiCAZ/AXrkK54+p2CNQZNVSoDsZI5q0b+eRrT3V0YN6hzAPQvL/H
	 z1wsYSogUL0cGmgaQKU6xbYWQVLrCcFq0NAtGd40aVP6mluFB55MesFqcmkE6sdoNI
	 TsGPg5l9CD3WraOWZESjWxtwUanYzFccTXHNJiT0AJWKR94cCAkfVOip7VmlmeyNzP
	 3ZdCSLEDlJOqqwfoyyshOUhvbFjeHzl0yxYNSOfshV/s4axO7V/pAZht8qVR8X6XS4
	 0t9YG1m4XvFwaJHptHjiSYzlF6pNw2g4A+UBtOnvRQ5m0OxSyQgRqQ5r8FULJan37j
	 QXW3WgfTxoo5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCE8C98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043483368.17743.3199629428132274448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c358df2f51a1d0262ef391c8fc990fb52500519b9dab695bae9e4aa5debc14c8
Date: Sat, 26 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790434833
