Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3479322C9F6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737042954; cv=none; b=V/0AJu+5Aur51g6mZtR4avnX8vt81YHSRaHwOPNUe45NyKLDB2bCHgfFWCpBug62HrUYxjmW3M9E32EwZYeY9awF0Qe9UHxdyEWvwqeDEe/2e6lI/WcW1M4mDvIOtNUpnYNM5bilqaoeB+NOmNZt8VfZ4LZCAhD0GoUhERe6eWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737042954; c=relaxed/simple;
	bh=RmPga94Y1G3c0OwmNtF23tv4nSFLG2S2u15ecPwGKjY=;
	h=To:Subject:From:Message-Id:Date; b=p6opfvuxV/ecGHw+GjrCHy/X3zbtguJWVDYfI2Qm1NVSUjNI3114kBmDzCGRqvH+Gm9qK0JHclaY2crhmYitG/zyRzOFZm1Sr8J3wPc49zrgtp5GBkdMH+syn3gpBhs2NQzdfHrO57R9FSA17RBvgxJk1Trk85C1GuSlkCcQPU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tv1b2MCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tv1b2MCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC4C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737042953;
	bh=RmPga94Y1G3c0OwmNtF23tv4nSFLG2S2u15ecPwGKjY=;
	h=To:Subject:From:Date:From;
	b=Tv1b2MCP9TGY4zMq62H08sRv8AUkfEy7wC/91Bd9IxDyRcXOnU73C383+WErLydpE
	 1FYPS8YAm0kwruJj9jk9CtttNtxxIyy2dIUSdsQU0iSxh3eS+YN0FdnRzBb1GHNQOr
	 zeruSS8Te7RJLap2FraCw9l1lzVzCMebEwuy25toBP6+Ni7difYhirav1MpuplOZGz
	 VgEWl1nURsozRm6DXUBDXUvKpmXgAVQM4Na4CAZd1rKbKJYd/WCpFagyhdCYqvDZaM
	 x/+6nVSOXI+RpaGHxdZEiaiy43hJWYxGIcV0wGvlTlmYatyQl4L/mQIWyN3c2EVa4s
	 qFf44W0bcOr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B58C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704295360.17300.286646876882425854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fd287f85b00b00f686eef09435d27e885eac71040a068630c97afb3f5732d6
Date: Thu, 16 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737042953
