Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB08A31
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734707154; cv=none; b=Bn792etn7SLVk0JcOcIfIVITv9wEAaceRXHvQlJVnVWoSS58gicCVDoAM5mMCep3lE69mzkQx+mBvrAV7MVEdLzzn28yJZ0SndgRbR+drN784E/3UaLCjMIVt+8FhwYVDdaBlQ9u2SkG5JYI/jWdglSqbJ5ZJV+ifgqkp9Rqi40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734707154; c=relaxed/simple;
	bh=XUu2CrivxBS0XdhXCBZwn5BEEBFigsbCprkDxzwsZJA=;
	h=To:Subject:From:Message-Id:Date; b=sNtkB+XFeqnRjCeaG81KtD2/ep8GciIjgbuSCpigFOqP5dYMjIjiKNKpbYrt4gYdDoNdhQei3ZZbK5I4Klo/Mg/qz+YlhM6LML0TfIMFNkR0+re6igGQljVKN2fBrzEc1wOFYa4EXfzJWPR/IdMnIciMYnYzKMbmKRy3MVCHpn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoHhroh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoHhroh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E6CC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734707153;
	bh=XUu2CrivxBS0XdhXCBZwn5BEEBFigsbCprkDxzwsZJA=;
	h=To:Subject:From:Date:From;
	b=WoHhroh7y4M+Fnh8VdKEcz0ZLNreSUmLmRAJc04lZprqzWJ07M2zBlTemf2I6R447
	 WJXo+Ruw6e8Yi1DmFV3Ev8FzLRk9EAUNo6+mm0mXH801ygpLeUwB880cQItNmNGc8c
	 TaSv/FMSU9CrUB0o8c9MmXrpUKBWh7tf/SEnwWS12ZbKJn2fkkm6SLG4Rs7XJUkTwr
	 XHkf8mPAkXobJf4+qfov9erPB+99wH/PdenXsrr5ZQxdF0mJZOmjaMo380VaDwOkl9
	 vLQ0gphtddXtaL2LAAj8BTwEiiuZx/ATY9rcoQSuAGf2dk+BfItdLPUWmU6cDCG7BB
	 HzSMOZRUP0+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7273E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470715364.28684.3688028946804223429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36184d4d825dc8d5144bc470b01fa13bd126c3cb7891a9d965f46a59327ec449
Date: Fri, 20 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734707153
