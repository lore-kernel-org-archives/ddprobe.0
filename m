Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C6A1F94C
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741386534; cv=none; b=C9lmEcaN9b/oBpdglkOWP0RwAJqF6oXChqLyFTTOy9b9E5ikfXV4uRi9aJM1IZZVfxzSqaa35mKLCOhbZT+q4DFH9D+pmrJtplLlYRBEXwbiLFJ8lWAnutYZhGy2SWUKqjLo9X1mbpeR+FTbxi12VxhiKD5m8L6ow+2fbK7Igqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741386534; c=relaxed/simple;
	bh=blFHlQwUQlHUa14Hjw7KRtHKF2EmOz9ZLlhdRtAfiAE=;
	h=To:Subject:From:Message-Id:Date; b=CqO9ryxBScnEXUIMMDlB6j6uKRQS1K1JtXcpFUE1eFyWUdgdgfZ6a75klBl1RuXAZi2PWNXkTNu/EOuKBpKxt0ceJ+sBvrqRXtFZzTtuJUlx4RCb72gGwxIzneZug2UwjQ0TEKv0CHWEpyJU00RjoKRgek+4LMuqTDh7+qwBAig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quJJL8oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quJJL8oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BF8C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741386533;
	bh=blFHlQwUQlHUa14Hjw7KRtHKF2EmOz9ZLlhdRtAfiAE=;
	h=To:Subject:From:Date:From;
	b=quJJL8ohr7IxIwJ/rDhFJ40gqit8jIKBp12XsQPF1GcZoriGYiDWr35TPGmSgGjSs
	 CpwvZs1trNXylPPDbxG4RYstyEmcARpGTAIyICjeTBq3WTr/sLccFEErrj6fhTKWo3
	 W+JXYYsBHpxDMj2PZXvQMWmeOYkA+DK+6eDCYwztkaJWzE0ScUV5mbWMobx2lNdDEq
	 XBYFAVQMYKYM7BxLswAVWtSd2wdy/oKyPCZTUB92nRrdOdJa1I/kPOqrWNxBJZfWDU
	 Dvaz3TnBoHm/Oq887gCYkfJKHeXZW6ghYclnSqp6NUcjI0An0n/Cx81oRAhHHXylAx
	 MQs8jAGsokqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99984C282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138653361.22613.1763690775899492799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ee93b1d7f9e9ce8e66d12a1c52af79df9e19008bbcb07ceb11469c1c1cf2e9
Date: Fri, 07 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741386533
