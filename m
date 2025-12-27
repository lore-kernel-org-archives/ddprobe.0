Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280441C3C18
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766830434; cv=none; b=ViHR0gqmkAHdK5i0PNVRQkzJWKS784ezc8i1s/yAMZy6z9DvF+1Dr0mU42+ufw+sZopmJAaJQMDIzdStw0x8X/DuMvEHnXZfoS0UHiFm3OFKIcEKOlbc9y+OaHlcuoX1soRbGqJYxVYcNI9GBCOKuzeBueG6FDEOColVEKkuB4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766830434; c=relaxed/simple;
	bh=c2aOYLQ0sJXW7aqqUAGI1fTe51mgGeVIKyVopVg2W2s=;
	h=To:Subject:From:Message-Id:Date; b=CZiIL4OLDQJ5XdfV0TQlMMdOTWe1frm/HNjkkzJO7Nd8OLAllj0uu+9WTtLQJO4yW4oAsTvWtinQnJ1fyyExN+rWLtq+qv9UshHAS/LhrFhIdMxtMNfZtBs/mHiJnKyTdOqaIIuL2plJWwenc84IeJB6A31HtLtTm+fT3BYmBXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRRdx6P7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRRdx6P7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9432C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766830433;
	bh=c2aOYLQ0sJXW7aqqUAGI1fTe51mgGeVIKyVopVg2W2s=;
	h=To:Subject:From:Date:From;
	b=lRRdx6P7MriK0HmOxb4R51lcSexpkZI/9QOGflcXllJdM7l2t+3gN5h7JiXTIsFZE
	 i8DYeMzxWsiz7V9k/qNTR2B4A0QRjGSm1GUxGwvTz12NEaKcaVPjcpI/tL+FfcxTyY
	 c5xzafoB3OK4BLeKBrB6pTnyN38+b8l0yr9UqAIbukpGhSl1SHDTQWr3fu2Gs4WPyD
	 pakj2+ZjGPFNXBplZX8+IBuY11rP2vsj0qzndFOfuPX1HZ2SJXlt/UMas8fHNsun8r
	 IptHjdhsrLPbEOjGuogcgzHmW3TkiOErrPSsdSVVSo9kNaRfYoNadrbsVSacUh6hKK
	 S8xNilFeZ04bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBDE8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683043359.10063.14081411971103931683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b40c1b4cae1ad7e23bdf6d921d1b9a8bb26bc18e865fe3c6d377e80a0d955b2
Date: Sat, 27 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766830433
