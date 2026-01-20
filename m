Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055743ACA6E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768942434; cv=none; b=gu3uek6a4Ehui+lhPwHIct7JEJrhvpJcXL/0pUYl9UeOzy63Cb5yc+SUz3fog1mB98Ahjd2gft3C3OHok2qOBhr5m4QQEz9ZNUuVwH+jWeiKZC00R2agy8r89jTWWNs+w1m1paCaSDUanh18VXXQLWTBjissV8rG13xd9qVx+qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768942434; c=relaxed/simple;
	bh=9oqqyyjPUp56rBmbwlgqm5qty3ja7NQUMIIXOzACY9M=;
	h=To:Subject:From:Message-Id:Date; b=EjLx1XXZukPjwHnuyxhVj9f9Z0xpHjU2P0qQZfQh9FFMuQk6LmBpKE7RbN9a1CAoC6rZmVOxxwlq3enoX5d5j8xgYfS2A+IcZ9ACqwRvYWQwAYe0r4Ds2/dk1LNoAGWYQw02Odft5AeWJSldse2rSbEZlrMSjZcJHtiNUjKEGt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMPXBuwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMPXBuwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768942433;
	bh=9oqqyyjPUp56rBmbwlgqm5qty3ja7NQUMIIXOzACY9M=;
	h=To:Subject:From:Date:From;
	b=MMPXBuwg8aC+dKrojko8v72jUifC9W1xR/QEefrkYd55w49I/hCqTX3iwj1faf6ek
	 2fTe2speMVxJi/Gi7H46xvr6SG0evp/FCc4aYfTBgEdS/I9mUEPPTZz/meCaEbxAQU
	 nsjfJUnjef25ibIw6+eDHu+9vazvsYHRucQsSlGb/r7ra/HKa8x/jgCs6uKTyEGbSA
	 WUkOrmF9FlD7WpHMRjCd18bAeJ0+JkrjW+7XsaCT1dQOhl4Nwa+BlSJ/3STPPR5ET4
	 Rd+i+dyn3NzPAXzl0W2OUnCuEtAGHaUD1YHnTfhtUIkHq5yQxMV5QPcbMyRSArTYYG
	 2hAkLSk5+wb7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADED262A0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894243359.29619.1568012975263682664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f886b0ab387745be81c88424b0c47006023e61dc3be9336e5f640d8b7caf054c
Date: Tue, 20 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768942433
