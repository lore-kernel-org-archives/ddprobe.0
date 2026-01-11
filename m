Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0881FB1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768111434; cv=none; b=ig1a105qwyLv3MUkHxKayyV4RmN4q02rB8XFg3mB7rG2rSFecedR87S4S3+pMIPO9FH8xKxIQUrJuArZyjdrchkFmPXTIuRe1Yslp4lBNmALSrn0/F4pBxUWbJwSNjuKtal2RHcvU/0+wBtU8A3wwen4zddEQn/Kr/zP60WHifU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768111434; c=relaxed/simple;
	bh=aRV4fk1bJp46zyjAMbA9hwymBZFAt0Zc4myvSrEKS10=;
	h=To:Subject:From:Message-Id:Date; b=jF3NYE2NZCbJr6TDpJjtwSDyw5+Yj6FooA1RFUULmQCrKbRYqle+Bf6CzN/qB5fC4qWiHsqoWaKDgAPsG7eZqMub7d8VYu4qR6egRWCM+FuV/T08M2nl1DJTdEzSozrUhwAouKOizkIvmIajOSPKKlQHIPdSlBN7vqCV6EBPR5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmuI5GVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmuI5GVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC77C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768111433;
	bh=aRV4fk1bJp46zyjAMbA9hwymBZFAt0Zc4myvSrEKS10=;
	h=To:Subject:From:Date:From;
	b=ZmuI5GVk/8qlhLDSgXqHdx9TnMRggXCzCAnNelViLoPEZd/bSHuC9ykdb1FCXWBGr
	 WCfvjwSJi9T70naHjdDZ5z6sF3CrfvaWtD62gujTRDT0efDSpXJlBsx1PqJ+NIu554
	 g+w8ac/OHSkwjBGDDitrzo6FDkq1ihXg+xXB0GNqdjZCIHVqFxKhS8606JCGjjSD6U
	 2VsMV6jvUIgXZOptqDncysdP5XPbRYELSSeUl4ESw0vF78vjxO8WzS5JhIsv6cCPgB
	 23rnUlcJQyIDoggTtEh2193nQXWGT3Eq3LUW8cEoRq43f8BK1/5xhBKCpdWzxJlm6K
	 t7vksRmni/Nhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A8D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811143357.18659.2570946697444767901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69bd9bcc78f4e84c799975054cc17e2d07d5dcb669e4bb81c6abc266be6dc06
Date: Sun, 11 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768111433
