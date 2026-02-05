Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D61E361654
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770278634; cv=none; b=hwganGiMRNAQnKqMPBGW3Qa0Qz5EsIf/vhAYbvOMHRo071l/kMCMZzZn18OC5e3b9MH6e8x58Ol/j0zDairu/DZsY0UDfLQkWktDb/PCZtJSgIacfaOXcbMX/c2jK3QyIg+ihdXomQyycnmoW0gWHcO93n9ctXj0MbERG96/Ykk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770278634; c=relaxed/simple;
	bh=g+c+XqUcx0nWJ7Q3qOwSWzUYe8JRDQ9X3t20SYm/PVM=;
	h=To:Subject:From:Message-Id:Date; b=iMtHt3T86sH13DtcB+UJuYvLXPERODgwrhsxXRPNecPwYoXoAUg3juz+QABFokjlXC/Ob9xf0Pa9DrBDX1lqXdDOK2iLR4E4EBVFRCWxpIdQYdLjawWq3nbZcgXoS61HoVpIXZ39iM6b5xOVCBDDkt804VWfmar3ZqX4ubYxUQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq4YxiEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq4YxiEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B06C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770278633;
	bh=g+c+XqUcx0nWJ7Q3qOwSWzUYe8JRDQ9X3t20SYm/PVM=;
	h=To:Subject:From:Date:From;
	b=cq4YxiEtUDVQObEtunP9fCjs8UunsCdDoc/MNXKHUyrXTORl3BQAkPEJGXaKhpauc
	 KCR72nmfHrqZj1UowWgfY8xyz6YAoMywCnJVUTEyaaSg8fjpSb5O3DN7oaS+ck/64K
	 bGE7Fv2A5ts5/gjUjldbhJlcfrMO2Ahke9XgBpIpyFPuIz7biTmaonTCc9+tyTxsE3
	 HIplF4l146uVExTIatPAejTnNMJsTdu6p0Wr2mlJZp6KE8gySwPxOgFhD9Si/C/TZw
	 ud22ncnkhdMIl1Ffgsp2QIvOfcHJf8MfEG1qAFD7P2fay7whspS1rdqGXtxRc0T4in
	 L5Zm0rfFt670g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94519E9128C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027863359.716.3279632180907963202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdc85f4a1255665a17f0a082b4f6c9c80ac7651c375c844297a7e0536e86e45
Date: Thu, 05 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770278633
