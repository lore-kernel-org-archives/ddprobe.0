Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBB227602C
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764358374; cv=none; b=IxM+eX08pA1WkERhVzKS7DNEbyIHaULmkATDeLH70gUaSjXL320OU4eTf8IsHwj9PHjfhZ5JJ7bImNFeu7km0dQt2csEw0fkXn8xxdXpJWs/AA7XJ859HqqPeY5tlOUtFFGipJs11QR2UnzQ/RwIQ5+KtrhvwJyaqtBSuIlGOIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764358374; c=relaxed/simple;
	bh=Vm9uS3Um5SKVvZ6w0KlBEkMun3qNZA2x6A8RVK58y1w=;
	h=To:Subject:From:Message-Id:Date; b=b5w48RH6zqCO7JwfR+TSVbYwn9dVq3XZ9xeL1a9IqQM/4mkTf0ModYC9FapWtabSYwyq4AeWTKeskdlBxqs145Y/Mn5LW+QyJdT/rW84u3msWQJNfKHkxcBmQ9R9h2fzqgu9IBudAjVoI2Rme+NfIxQtDmLVpZnvo+c3tj02EXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8k+a7hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8k+a7hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C06C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764358373;
	bh=Vm9uS3Um5SKVvZ6w0KlBEkMun3qNZA2x6A8RVK58y1w=;
	h=To:Subject:From:Date:From;
	b=W8k+a7hr4npugHb2GcNOFP8dWX9idlV5TOH2/jVrNFDmEr8lgmUaiSodTydZr1H0p
	 1iD/euNLPjCCEQICvDZ0nH4bAiIMFrtsTOiI73cjvYIBhapaefSmai6P6J4+iO+SDI
	 7RFzwSY5io5i/bT13knFrYnsXT8FQwkrO6WWIKFAkQw1RsQCie0qAy0UVq2e/GK6r5
	 WlAH6mBW2Sbibfyn/qVz5wrO89Jv3yWN5OudOBwHpc1KrxPnTmwIP+4toPcOAoLJbv
	 ZL893BdIdB3hZATcATNFtYyDxpoAP0ZMo+KsoX3gvUHVX4LVBmbKxlTTpxNftyFg7s
	 InYGK8g5Of6ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94730D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435837359.32660.4564716968392661394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edc5ea75187064d41e5b6c98e3637310f20b969cf4f2488fb059cc7d0fb584d
Date: Fri, 28 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764358373
