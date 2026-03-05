Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1517B238C15
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772688294; cv=none; b=SDP4qWHJ6py4/JUsa1UGhYMiDXhSX90lQzCx5UibdN2FjSytkOyYABU7HKxrSGXMgy4wMOVg2n7Vr66e7BYjLv6GFdpyhf9RIR+p3jtgWOU5CScVElpaBRfhuA8HuaP1xWt5e7UtTHjPUU8VmJGU7w2AFGyBKBdmZlgg54G1GCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772688294; c=relaxed/simple;
	bh=zVMoUCtjUioR1bDxl204IgA3+TJ1G3s51JNtJZ51tGM=;
	h=To:Subject:From:Message-Id:Date; b=TszN9zTQnTNMZX1KOoxdntJnMM1TH88KlR3PM0t4oUDKW2tPbXrUH/lgyF8FvvcjR40SJDoAsbPZBg3MpIwyHioAKu23xtz4mRq34nJi7AD41uG6MDIYtET9lafHQ6MKifCvasRQZNypp1mSX1y5z28d8k9I1mGNgVrld1dlGY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0+Uhs1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0+Uhs1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772688293;
	bh=zVMoUCtjUioR1bDxl204IgA3+TJ1G3s51JNtJZ51tGM=;
	h=To:Subject:From:Date:From;
	b=N0+Uhs1Pdh616zETKakqUYDHb860AEE7fWy80twD+3gCiGupdY7Jsv1L93kUGr3fh
	 GegiuIZzXA0h1Zvr18WrcB0wHVTPKVu90zw1DWKsUAms4jh6ulOSpJlEmXionKRBbr
	 frIXbOkcliy/7pcwlfx0LrG8Pfl+0B20Atj16hzXx8PjeLWZTymTLFbVLkCaO5NZVU
	 RSzkYwOn22nVfHS52LXHm+jLvBlrqz05QuKRptYewfe9LEMVC/45968R15NlDtpK2Y
	 cPjGoa7koyg4HQbnNHsf3qGrJwS4TUOCHQkOQCZy4VGXQGyP5ZFdasKKOlzp0VrpF1
	 zUqBcUzkhMJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE7EDEC1D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268829358.19642.2776924646619134232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832ea75e7cc61025e68701cdbcd6da018e20c6f79e28fe748c9ced90b2d5a7b7
Date: Thu, 05 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772688293
