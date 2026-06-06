Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0B613A3ED
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780729474; cv=none; b=BpFPo0eTFpCrrXdMqs9RPf/O84gLyzQAFjIxE4Wixf2+S6pYJ7jKDcdL8JnvROO6sJJWjS6Nma1ydKBU/WoMu/DaNQYxCyorpk6oIzjFdtrFM8DExMGBbsXpFjrzoO7EtwgdYc7vcabZAT7FPUxjgfiL1SnTKTpVWKvDO67sMeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780729474; c=relaxed/simple;
	bh=/TQTpK2r4OJijLNQGjY7A8V15PBlB3Gg5FasVOmRWL4=;
	h=To:Subject:From:Message-Id:Date; b=SHFp9vwRJVO9OQMJ5G+Siqo0Blzo98Rmu20EqcMcxzplgS2yk/90u97VjECrytoxxy9eEUz5hklwAxqNDT+BO0dBkqiNJEFJmq+kMJiwhZxwcQVjlekihD0iQIHr6/8djeQirhPqD96Jd2UiicZeRhDj+U91uwkjN8nzXJQL9C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICEHROaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICEHROaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE693C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780729473;
	bh=/TQTpK2r4OJijLNQGjY7A8V15PBlB3Gg5FasVOmRWL4=;
	h=To:Subject:From:Date:From;
	b=ICEHROaZJhis8HkWYcGoi1AP0fHDHr4Bw2lKaWv5+9pjHa8PMwwKgCPEqdNKG93QV
	 qVMZ6PmAPlFNCWaC6kDlU4IQNU8ul0GlitWgzue8c9d9niRKqdOKKF7pifcqbetc1x
	 dLWB5ax9pDAFc0AhA29yY9kn+drlP2sjkWRliug9Mxqi6kZymAM2H7ZFN0n537b0rB
	 yJ94pxc1/vb0bFziHDl21ecqnUOHjjd4bGe4vR/BLI3hIMnmQ+gIXKxJxJJkKOXc1J
	 tOiLBWG0eL80+6rnceNYRX8LI9wdeQNy3rN1gLvMTvG2v7fklMp1tG4PZC8MCscQqG
	 rFED3Vb8SGHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1720CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072947370.6161.12554435749508816339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958f2e7539367386afe325aedba49c6cbfc65cda330f75690dec999f9e3fad3a
Date: Sat, 06 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780729473
