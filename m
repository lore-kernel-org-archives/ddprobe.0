Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E626AFB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747121995; cv=none; b=I0zzmzA/73EU48o+038mU14/KYkxyGhJKFWWachM28TJDYaiFa3c98IZsZxhjTeqdfj5Lua16UdRY8OhhGdplWdyaa6QF3gmYC38N6MJSez60Bc5RuwiFZ5F/6MSEb0/dO0L/dLThmInSLq4DkFhrm5gRQwaBpwKZ5dtSXOeiPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747121995; c=relaxed/simple;
	bh=TivFbvBA3BWFxmZI2+GXCt6ZjbJUwvHiNhFyblT3/MU=;
	h=To:Subject:From:Message-Id:Date; b=JXDqvngzTwQmwEekt8iLGAHZmcYmahHa42Ru5ukBwgwKD9ZWuijPtuVDEDlhJXZj0qju90Z06K6SEz3STSkPhcY2O7Ng4RbK+V3QWE0jqwCY+2cDEkiD0TFky1mSsbfPmFOhf+yYvpHJvT8iyox1FEjsmTSj08CDTBBBZ+4ru98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5vYGnIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5vYGnIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E918C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747121993;
	bh=TivFbvBA3BWFxmZI2+GXCt6ZjbJUwvHiNhFyblT3/MU=;
	h=To:Subject:From:Date:From;
	b=k5vYGnIR9KLCzp8c4diSaaxUE4+Iq1U8RojjhwogDjZURQ1j15Zsmy//UgFNxoqYR
	 O8/rID3wK7fSXQYeUGLTd1iN8twY033UJVgDBDWX1FKaWuVq0PSFFC1kpqrq90Ll+C
	 gpsy1Mc8m8EsGfPby+5JQ3qDUSsdSbAOYRF4yTNwEEgktwdGZZhbxusmEG9XxBTmhG
	 HUp3FZh3dLd3a8R09WkGKUqQxrb154GtzHcEbncD6qv8PQ3bb2YZ9WrhwHAL/wAwmP
	 bPhYqKypR9VFBUttQ7HveMY+I9JFYAjr88MK0bydwFX1rd7C7o8lw2s8krWS1XSp7Y
	 gzSZL+ngtNVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96BC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712199357.25850.10239783101814969362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19d210e44ca5b3397ab1cd0b98b371f01bd89a3af98bfd315808b6d748b551f
Date: Tue, 13 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747121993
