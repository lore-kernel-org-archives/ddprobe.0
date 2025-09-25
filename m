Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7BE10A1E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805194; cv=none; b=tCIYIBtaQ5WaS8uslId+YR3yk5T27erDAU4mlCl9R5GqE6esTlIvYutjdaG0xQzL8r02X66PtUKPFBg29Gv9UfLjCLs8UXI1qC97zTNS+wFm6uGQm3jSHIHyCdaIXJJvdrdOhyk3Ff3pImWah0ecVq3+JXrstYOgyjeN5kY1ois=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805194; c=relaxed/simple;
	bh=nOMXSdD/zDgEUHtTWSVaL5Myhuz/JouY2z2TnMNIRws=;
	h=To:Subject:From:Message-Id:Date; b=t2aoWF3UoMsKLmGZKUJS1vkxSEVsgkTmIisoMWQCRYoS9pbTmY4YeuH+E5Y2RKvnvErbHiPsSmdfgigYHcKVtKV6H0iv9PjZTmoPIJwcJAOnQbFBK63ppTyRmdWVDNhJw6YIxQ4kBwxHFh77j7FfqJYLVHbcbErxUweszkNA1iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEruk/TY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEruk/TY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0BCC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758805193;
	bh=nOMXSdD/zDgEUHtTWSVaL5Myhuz/JouY2z2TnMNIRws=;
	h=To:Subject:From:Date:From;
	b=cEruk/TYlqaDpJKsfVvP/xfKfTE1+9TvgmR7K315h/+e6Z8T+FwH0czEXdzq06yCQ
	 fiDo0i+bHmks+tQMMIP1a0q68CA5w+q27rrPSKtpVYXA9PFBOlgd79w/kT0qOTZBUT
	 rnHzXxxVNdN+UPeM1xrJSqQNu9Wx3BDR+MnJQwIRjiIeEqeerj1MxuwSDIPfgzvUSe
	 yTa4V/0FB07a8ZFmBbnO0Zjpy+TImRYwSOMwL2AQ2OhiPLYiwgqENIo3xWr9K/Aloh
	 KYynGd+1EcWm/Qljw7eKjt7wOhCyh6brW7x5uqYRF/H9ykWnFHRwEpPID3u5drgJkP
	 xu4VtpguYG4EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141ACAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880519358.16150.10581542102162403941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a0c3c2959de64fd1324c493a0aacba95896e7e3cf64d4da36f82799867e0a3
Date: Thu, 25 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758805193
