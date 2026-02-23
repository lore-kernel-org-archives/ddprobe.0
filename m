Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1650B369972
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771872894; cv=none; b=bElf105kAJkT0gxNyUTaM7xtqzJ2wRuINVO6Lb/A0buZyA+ZAOGDySFMFOG2W7QzYvlpsFZo+0BF/3Huiii8PSma0as1PN7HUzsCduztJUgW5YzUV9x6hSgdxEuqlLHg4hGuA+d96GN/96YFslCOrIv1Ti5sOsID++dMmP2k/Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771872894; c=relaxed/simple;
	bh=gBDVbh0zjXSdlmAWvZalUHlu53ow/B/FSr7vqTLPrmU=;
	h=To:Subject:From:Message-Id:Date; b=gV5emmU1TRw59ZUPMhIX/2onp9BHCllkBmSiLAq7CbCh/TtBhY1ZqqqKFgyP1gR0Rm0MtuFhmmDHv89yt362H4UQYwMPIfgih49ga43PXoSMbWirmdyL1lO9F8H96awE+37vGnc38WBDThRlREzOJSWFc4/8TAiTq+Z9fgt29hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4nJjvUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4nJjvUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09DAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771872893;
	bh=gBDVbh0zjXSdlmAWvZalUHlu53ow/B/FSr7vqTLPrmU=;
	h=To:Subject:From:Date:From;
	b=I4nJjvUtYgBa6q7GC7TGU/gkDa/7fjK+waBhVRrcZbTyNeqg3BRMGv/w86LhwSV/P
	 2oAQmqfDlRYsfpRB/JnBcZi+ZtZWON8BJSf3Zg21eY/Qj2EEsYXTgi+RFkgV96rP8L
	 qzQXfRMz/mr/wStT76KtEjnLGMclgwBxBetFBMI7zf0quuryTUHK6mgel6CEQJw1Ex
	 dhRwhDLhMv3NGWCSXisefba/+k1TKrnV7Qs6j4hZt44GDadOg86/qVr2fjTIxxG8JF
	 WUsXjWMAECgzEJXSkLvWjvMwA3juyviCE8Y9HU14Opv0TimNpaQvr2hPgx5Vhte/VU
	 i3Sm/upc4N8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54AEC111A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187289357.14711.1044247357384238998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677e9865d180ee52aa70b1bd358ce4c0604ee291061f7266d8f549719d9336f5
Date: Mon, 23 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771872893
