Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A9A259CAD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742905794; cv=none; b=cnJKzjtCjPujRd+A1iYn6R/Z9fTiOGcQpHoA9VPDNKFn+lybUwPRTLcqYFoeZwOEn4wJio/9xPnyNtW5Zjcje1eGD/H0ERp5KhK8qCsS6AfTO+nVdv4gRDt95uwy8TwvkVz82OudOoiNkx6wJ8ZlqDj+/+zrBg5sk0Z20x8/4L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742905794; c=relaxed/simple;
	bh=UsiPzQ3cRN382mXB7sEpODUCZu9A9x3su0BiVWEoVi8=;
	h=To:Subject:From:Message-Id:Date; b=bMqkJJ4XrYKont4hjKyW6477ng414RMIlILF7gOzrOZ10d39oUMboqh0Dj2nVLHrcPB9AWit2BGBsYCDYw7x4vLMOK+vx4EkfoPyQhx6XvE/bUO2T+0aeqoLya7p29KgOIxiC9ONt0txgdZ79bTBXHz48q5YFesXyGBpLBKJKA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTwiQvoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTwiQvoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3F3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742905793;
	bh=UsiPzQ3cRN382mXB7sEpODUCZu9A9x3su0BiVWEoVi8=;
	h=To:Subject:From:Date:From;
	b=bTwiQvozEEjw82t5ICx1W4O0uDKl9en0aMu44bCEZsjdbfutulSTbZKCrH8Yvbndq
	 GI488PsaqSAAu/VUS+kQnA+byW5zEuug4Kww7u/rjyVv5MBizMU3XMfjuIhdDhVdTP
	 mjKVOIhmqIQjEYMZ/ybnQceSx4b4+fCPFBLh6wCKljif3nlOwdPRBLK0cfperjaDH6
	 ud3JEZA+2hwsKkZLjo5Q/wWHmaZHfEERsbdRQiEb7YfHgk4KEtBT0DO7cB+GAgGTgm
	 bK2NUtwypm5VSluyo3bQJz3dE+w8qWehHWbW+HutZWah8hqU3yZ/hOnupJHqaYt2kW
	 YC3ASSx8asuZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0007C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290579364.4759.11382723023630482945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a849c0a6d7fb3f4353763fdb378738f409236669d768cb4c9615f65fd744d80c
Date: Tue, 25 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742905793
