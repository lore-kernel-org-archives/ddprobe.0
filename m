Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BD749364A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787394634; cv=none; b=NYBF/i+zSBdfbhQveMOE9f+BlAiDMpnqS+Z56dZbFcJMaDphix7p7ZYAHiOQ8xQt2sIEzsPkbY5Qcw+OTaJWKzEisdhtL2tcx6mfOPS81FHNXOyFZR+6SHOhg4RhtNbVR0oVE5iCEEZjExFIu1Vf8319Y3T5kAy7GITMJqxLaYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787394634; c=relaxed/simple;
	bh=VolEVV+NzH9yZ40R8TB7dHICSqrqDpxcNRNnu1uAQVA=;
	h=To:Subject:From:Message-Id:Date; b=A8WKhekbjCFB8NRo/bs3wcjz6oAfczuSBcJv0ilIslJNgtSDqPO5zlBZT7YHMrRa2Wr2W3AHwMz31MHmjCBSpYRCl0v2S9mEkuK3T89V+c4/5UDeDsgx5JT84VtQp9HUrvkg1Jl/c7Zzd2oV0MQeVEpK3sa9Vc4b5BLYQlgiWcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwYGVhYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwYGVhYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA68C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787394633;
	bh=VolEVV+NzH9yZ40R8TB7dHICSqrqDpxcNRNnu1uAQVA=;
	h=To:Subject:From:Date:From;
	b=iwYGVhYfKRlHkcVtB4edtWcvxwaqSibbYNLk4++5TdL6WRetmyqrjLf6PzWXqPLSL
	 82BoHnXOgq18XRJO9eN7U/D3vRIM+l7kdb2fpuR52Jd0tSgYOHXAJg1FH/E0zBuWjJ
	 N4cOe+CHGJkLzYQKrSzUUB1rFstSSVnwU8jjIxYU/JDI0aQ0wfTjhJSG47BD5DtYJh
	 BXz82QXo3tWE5tzY5iePwKzSFslkrSKMlbpq7gRPWK+DB9/uFf+Gpf/PKIKhr73Fsm
	 w54sgv1ZEfrBq4GWp5oIUeRJhweCx8k8Zu/7HERSPUiQENMVPbz+WMvcJziX56QKDF
	 ZrU7Erg7Of5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62D6C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739463372.18076.1065626674921862208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4bd4998d8a0e3f39e1064a59a7ded3ecb61f5d384bdc4ca5c7a489b40fe5d4
Date: Sat, 22 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787394633
