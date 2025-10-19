Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9F017BB21
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760838594; cv=none; b=FUBDpjlVdF50hs9NZANE9nD/60FPmfeNm167/OmPThDMjtLcoCKu0UmV7iuyEz53guRrxlYHny1fYLg1xK3j/kb7gtjwy/V7S94jvdVsZnEwQfKlbYNo2jupVynGh38qKosNxI5M/g+tK3PESVYtaC6J9vTdqDZgqkNZ/ke/B9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760838594; c=relaxed/simple;
	bh=gNnBzgo5/QLnau3z9HjXfSym1+PkWPyS1rxX2m+c2BE=;
	h=To:Subject:From:Message-Id:Date; b=nuSwLc/DAU2UgwvORHS1EA3C82KSWSbKXt7S1cj989+JN3VceVhKKkJdzDvcxIGrTttNVhqjw3YMW2TBuYvFHHWC3hdurAjAGRmtJXc/PXnSOXzr2mrq2dizSQ2i5jdzjprBx6ncZKLeHI10SlYuGmgByT8W0KSul60Yf5mipMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMzSqjGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMzSqjGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB8C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760838593;
	bh=gNnBzgo5/QLnau3z9HjXfSym1+PkWPyS1rxX2m+c2BE=;
	h=To:Subject:From:Date:From;
	b=OMzSqjGyfkCsGZ4Cq3agpaOsq45dHiXZGtraEz4w1G7DWrMjZPalPEI1ZFTypXA4i
	 6yYkRUbXV3rVwb5N4J9ynPCR1JTq5tNHN9ojwVXMnjjxwfMVDijEJA0grayrgB5ugP
	 So/wRLFyZ7zFb2r0F8VwXw+90WzzUzlKqK9kwPd/6XK4F87W+6nQH1VKQqucJXl2Ba
	 zSH6Ehn8YZwTQurp1NlLYiCzupeq0LHxhnP1g9JV/gFu34Sd1nGgWNDWAJPvohF4i1
	 HKr34jAnMsYZxeMtAFoFvQIf2aAYO08FsQbD0O5gcsx2U0PCohJGtiB/viXJ5a88tG
	 YWiRMhbcjvJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E05CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083859359.5237.15924625737446727012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e361a56cb176ce24c2a954f640254c3bafd5617ba2706f81ffb2669cc9b0e54
Date: Sun, 19 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760838593
