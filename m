Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C31818CC13
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752447594; cv=none; b=ll2mKEDONolSoCOjJ84vdL1aOlMKL7nDliFkwtp0ihy3kwsj5PSndsBrwDrsiLqjZ7fCUjpwFh4BthxgkafieVPbPuWD5a5koxgXl+6vRdhEJsQz+I9sOcopBp816gnzh15Jvu0hyzuMBWBhD2qdSUXGQD0s/8NrcN7B3vx5G2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752447594; c=relaxed/simple;
	bh=IHStzqJvRdonwbk10q2vS087bome0IgQ0YMH0SMvats=;
	h=To:Subject:From:Message-Id:Date; b=mmTEHXhaa4bJnBtlTg3uyR9cAj2i5UWGMKJCBK40UO40uXbBgVq7mTi1VMqca2131dlcJ3sFvUisFrollt4riwLF2ckddx3wLNI+BIfeaBX7i5RxleQxxBNscGtkkl6RfRSrWoxGPeBeo/twcRgqaQVqQWW4ssHG53+GYQnJ09o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7BMw9dS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7BMw9dS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A796BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752447593;
	bh=IHStzqJvRdonwbk10q2vS087bome0IgQ0YMH0SMvats=;
	h=To:Subject:From:Date:From;
	b=i7BMw9dSOc665KtIh94xb9wUJUidfoFPHsvuGFx8Y08Wb+EqoDu3F2fQikTj3dMj4
	 1kY1uJ0uyJN3O5hR0bLGCjSMGpVdgu5LStCLXgDlaYViwzfT5+ao7Ch1uHV43faP8a
	 V/2uRbEQrNSen+PegmgqeStq1HDur3HsjSSmlP/sx71zIXk6je6lnm2utqfJrIRiN0
	 Qfr+Zrmhx3m1fMlpn5Krzw4lfp3ABO4yJbOLaknQ6TAdewdKaCZy6RtLyrMaLVbDbG
	 gpstTHaBUyKKI7jItbDKccZYrDGQUxul5XAvejESTtoXopW1/PzYraRK+uNIPbZfRk
	 vP/rr6uKexvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276BC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244759358.28389.12803254091879066954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b4316b0c0324be4a3b10d16d9cf307cda67f974c69c63440b51cf7108638c6
Date: Sun, 13 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752447593
