Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC96D2FF
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751700595; cv=none; b=tBk3GmNWFTqOi7sjcLtBLdrU0Hj9KgdV6VzM0HKX7ZuAgXUWAqfbRet63Z6YLrjdS1+6JQW8v7lXIupSrSzld/0hFH1pYktlMCQjrPfjhf0PDPThTcbs8Xq/UCUgPqVd+7Q/lu2T5BZ3oD0ptfIuRv4sh+Q7YZKnJ6T1NxT2U3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751700595; c=relaxed/simple;
	bh=QxF2GF7DAxIHyD5Xllm1CnKihqsykg5qznQwKbjDaFI=;
	h=To:Subject:From:Message-Id:Date; b=VCZ0GrwjPOfI99DBKRsSgGidM8BTstsa6yxikY6BdXxpu/gRTmSHWhrw23cwcgmBnUVw5CIkGG0fSK71oWxEh+nLbuBcTpiiX9d3P3FR2uE/rP+RItLvuTssydxcALRHhDts093jrQiiC7oz6W4irdY3rp48XAHldrhU4G+8XWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bV7sD4yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bV7sD4yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E38C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751700593;
	bh=QxF2GF7DAxIHyD5Xllm1CnKihqsykg5qznQwKbjDaFI=;
	h=To:Subject:From:Date:From;
	b=bV7sD4ydrei2KQB6tGr3QRCyP/66xcSONEq5PHCswwmfE7GORnk5LY1pTbDLVLkfP
	 4vqzQ2oOJ9CtrZg6CpkB/goDggrynLJ5UoQnyCRarGP2SWp9pG+0u6xzykiJPLNl4d
	 mppDl1jno31OE7MRFO4NKZ6ZyBX7ZSN8Vses3SOw8cIy2RThDygQiQK2d6M0qYPDR4
	 Af1O22gLstUCqYftdzk5FFODhovBm3ITHf6fEEKtwdcmjcNP3iDpDpFssdiykzUgij
	 Gir7MwGwVepo68PzQm7exxclkTVyK6T9pS42XyquRTjnOzhdautNwY6jPBi6zYgRUD
	 0frUXPkmJuzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9FC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170059357.5404.11318992688380558385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403b006336fced06ef048783f4a6b2ae8b1fe4d0ab2abc77defcf8fb559d7ac1
Date: Sat, 05 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751700593
