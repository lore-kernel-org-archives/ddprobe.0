Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6C815B0F8
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752097; cv=none; b=RV+xAJpk2gkjHqkY4ienFd1l/BTuRSk0a6JbiUcyUaauKqiUudTS9uluksVTKmVaqy0f49oceTZKUCUXEoqBKjdOefy8cQkRJZ8JNhgPgl1IhpY/EVaw/zFwbRVWVQUw4bqI8bMTuJE/ed+L7MVU4lplageWGMMChhGYHGM+ydE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752097; c=relaxed/simple;
	bh=CoKoqPPtM88VZGiZO0ZnJKjyxI32HZN+yfjf4iMMzUo=;
	h=To:Subject:From:Message-Id:Date; b=AaV321cJgBN3J6oMxl3Bt9sdBu3tKrHHWjqJtcJpWB1eDIlQ13FZUN4DXQISAzWb1w4IOFYb9fWQAZ6O+NhY5ihmC4/bxnFleb5F+SckRLnJXiYQ60hNqR8RtIDg5ckWhlC+ROpkvKDPj+T8IyYlMTPNsHUtrNGg9YvmNI4gn10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtJZFnqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtJZFnqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD45C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712752096;
	bh=CoKoqPPtM88VZGiZO0ZnJKjyxI32HZN+yfjf4iMMzUo=;
	h=To:Subject:From:Date:From;
	b=JtJZFnqWJ3iSKSPrposKIuotcGPMHZMzJZWnIB+e3PI/i1YisaqKhdFFu02DanAfP
	 UeS/5OTjtSJtW/2ZJybrK4o7MqF6Xo2ZbzypVqmh01Q5Q0aA/2F2xoV/gPHbusLs03
	 lT038RVijQxUz9snR1sJfgQTFXfibM+SNRMuY2/4ok9aMw0Fl0OqXQ7OvO5u9nXe11
	 VvGY0lANzjq1Eu63PPz5xkFjNv1j53TiDfQiwuAM7Z37uKnSnJ3atPb2DQiNQo5+kB
	 F6O+pJ53tyz3BlBud7LsGdXiibVmI+ei4oWC6ZNfHlOD/Z5CiuSP85COF04HIqwhin
	 hm9Kv6lGcrMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67129CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171275209641.31768.690383289258941483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b621fd6193cbdf4f73c1d9644023f782fc38aec92631189280b7685a164ca2
Date: Wed, 10 Apr 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712752096
