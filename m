Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF9249E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761384594; cv=none; b=E1Pp3wPG/NODBQA2ulyay/Bg9G8unrwdR9/RCD8r+Ak38ze1NqMSjyAT5SGRaxs8SExaGYBjT2g4By8KtL1bRG+GDVNrJX5j9O2uIsZtwazcumm0nwuqfC5UeDnkXC2+dnWDstt5cq2Z7IhTn/tBz/qNVuFt0DrU7BTV4CYk33w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761384594; c=relaxed/simple;
	bh=XmyENKuz/+oZXl/FhBB+zIlmFTePjgodRHP5i/VDEys=;
	h=To:Subject:From:Message-Id:Date; b=renY7/lcpyLpM1JuNpyGNgUjyx24D5pwRc9DmTRgTbvlmrd/tfOXjkkXF0620zQn4VoLU36NIJFtoVkb2q2fYrnsVxn6WvfU+sR/SDnBcKxsLf66VYX5XD542p7ITRlzVpBeJF0v01aM+zVy2Z9y48bCBBlcxfaTsu0hx9K5STE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOSzp7H6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOSzp7H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C79C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761384593;
	bh=XmyENKuz/+oZXl/FhBB+zIlmFTePjgodRHP5i/VDEys=;
	h=To:Subject:From:Date:From;
	b=cOSzp7H6WQCEL4bDpXdUP7Q9StitvrHxcyqQTWrg05GPBzpJZmm+knx0rB2SgKAHk
	 TMIMuab8TlspO7PfQIk0AdEFuFTuntINSaFtSvQc0K8k051OBR7l/ELpNTvsuE14W3
	 UYQHAfvIO64du90QcyI1MsXkmjYlu5kR+f0XE9ODm6CXYsZ8apXr9CvWAMFHLV7lHb
	 LMsRUUXK+HW3onpXPtf9yX9ByDQMvif4rwNQa1On2flN1/iTacpr910XVYXib/5eVc
	 nnOpx0xZ0OQJqTpyZJRIqLVuQTfHAYsdjo+5g6dyeqQJDrPMv3/QqIRT4KRnk34wK+
	 lJjhkLYOLEJcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EABCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138459358.8269.15192702822608942107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23db99b72dfdf56ee152167fc64aba81dfef294c46a8d4ac666a1706c34da25
Date: Sat, 25 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761384593
