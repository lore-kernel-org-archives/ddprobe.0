Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CFE374EA
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759684194; cv=none; b=h4613zSdXjX045h/0EWRBJN7XEu7M1t+gO9mQsPIl22+iWIKPfRGe+WMiAmhlK40PwWk6mp3NHuisvrPIrO/MFLigEUwfB+zdD8FvMu+egQpfFA47FX4lf/RDTfvldAjNM/BjDXCW0A5LDj+RiWISQeE/twkCN+DLp5oOr4QD4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759684194; c=relaxed/simple;
	bh=yz/UvdRwm4AfB8BaRyIdpkKnh6htwl3ZxnK+yKUmZ5Q=;
	h=To:Subject:From:Message-Id:Date; b=qhhlpfGrZWPEujWPDlqd6/w4oXseQZ/F2BjZZg1XzJOPSHv+p/oqnUUX3+FJQwnZuKwgZ+nFnViVriA/ZBmKNzvSEFYsq9tdfsNrcw24qN8xshtQj/rE0IE2J0GbeEKNa9Vb93GxFtlrOpC+OEeKXHjze/0C4ka1Ervo46R00FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFy2PlHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFy2PlHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EACC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759684193;
	bh=yz/UvdRwm4AfB8BaRyIdpkKnh6htwl3ZxnK+yKUmZ5Q=;
	h=To:Subject:From:Date:From;
	b=rFy2PlHaaV8vu3OogR2QwmcsQgT7XyjrYyFvPFPPv4LqxqBjlQ/3coHjDjzn9b7QV
	 D25z98qNwVbZppBDTFUwK89SyZMgf33cf7vasiA+CiFx+invHD3qpb/8x5I9YE7BfL
	 0NUR72wz/QNmAfsllh+gsWzr0BpggEEPxj/AmYYrBqgX6nTya59SJVP3lbpKCy7/QE
	 ZO0sVWmNUy+ksxb9WTenQpOP8bhMYqqc2q/co1EVvNElRMogL3XjzZBmaDZZrnlJF1
	 q1RjopBDgM6CgBIS/RFk9VWfgdY6OfmhnMW7XOY46g0d/dB1kiKrQ5FzXXG3FWEydz
	 pSbszyvv6r4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8B2CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968419360.19566.16916432716525873541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d0f118ad1c339a55a020c81bf6d8ec9f9fd9fe1cec2275ba45ea5d755ee08c
Date: Sun, 05 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759684193
