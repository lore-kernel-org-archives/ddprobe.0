Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A47F20B22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752994194; cv=none; b=RtPPhxOzaqIJ/cWLURRj8FymvEw+U6OyXDKSQ/wEoKSdCRHe5dqQanLfnr5Ay1QKfJ4rWf3x18PYNemQ0bklrYJcQM10CCLkjg/YM4oYfxiIUzHmtHbIZhEAAIqVwtD0yrDiQ6vKtG1nlLxl58NItkbMyiXqac8OVzXdPh+5J2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752994194; c=relaxed/simple;
	bh=3I0eQP1AYhKs3E1TMnVozHXKCxXUqtT9D2fCLwmim8k=;
	h=To:Subject:From:Message-Id:Date; b=e9okHBcYKUEwOmHnTbhKisQfJDTGFfBzhnQOVIQz1gd5e7TU4n0vMidutMm7EMrqZ83YzqX7C82nqjcQYbwTEzGpARf3HtDQTekmq9bNxhVoiCf6aPqAPiDXPsQd3PSQ9/F4ZSy6d2QVXbroGFAoukUhHoQsALQ9la0xaNjq98M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buaV9Q9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buaV9Q9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752994193;
	bh=3I0eQP1AYhKs3E1TMnVozHXKCxXUqtT9D2fCLwmim8k=;
	h=To:Subject:From:Date:From;
	b=buaV9Q9VzlgJ/4bCC68ZWLPp8t3fFJLkVUaMIFUfKI9qddTiFGS3KcOdXrJIqpUFN
	 UyOscWxudlsExYPX90f43q4MMhaUqRn+NMHaOdIFXN5cvm041+tqbPQTyVhbUD/zI9
	 ALsE4k9+z+50TQf8M7BRYEmv8tn1Hxv0yz8Kb7SGBWfHWC3gESzYWINWyLZoacUg59
	 mdKkL3ekI7AKIbbFZxcJ7XTCa8BYQBX9OKm+e817p3m27K6Qcr8M25REYYthrjvV0K
	 Su+mCcSO14tiBAHDE2HvvVpRfObf92aO70z6B+uRTSIqqSFpJKB9fvlWYzb1Uucnzt
	 5CpIraHXlZm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB6C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299419357.17704.17201930058151219641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f360377aac492389264c4425fe9331f072f1eccc33bbe27d08ef3a932e077d5
Date: Sun, 20 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752994193
