Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2911B4F881
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773474294; cv=none; b=aiGwTMwQFvxLrwlHKBbhfavN5yiqDaZAKZsOSCbig94gPdRp+AfORLf1U6GDKIfofgN7bXoCwCRW7i9GAx+uuvglpgyhtzrv1fw2ZAUq017R+9TTaZ6flXx0sNhXlcvLjjd8T8ynCJV1aj3SBftTMwOF+9e3Us1EUQoZr9x/YIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773474294; c=relaxed/simple;
	bh=X7J6evHX57Urh7fzhs6SgwAdHlmmNqDFwF/TRRkz4rM=;
	h=To:Subject:From:Message-Id:Date; b=jzqzbp5nwutR5WmPlgy/GZvTsiwOwBThHAmvUhL8XjqFYOtbBi41P/i7QjL12b2e2SFpeb8JLQQ5Y3prGEkAesV89GYTLzkTRnBDlymM7Dtomnfu2wr1xyVZnJGeKc5KOC+1xxzp9hGYml9NEJVL0hBhEKaeBc80l11q2pbyRnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSqIueOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSqIueOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D9CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773474293;
	bh=X7J6evHX57Urh7fzhs6SgwAdHlmmNqDFwF/TRRkz4rM=;
	h=To:Subject:From:Date:From;
	b=KSqIueOB3N8K9Q4F1C0T379ClNvFc1ROyvIpVk2Vbuf88hJBQazfmMMvLno1LWIr5
	 mr5ht3CEDv+5xdd9SlG+fHbIRTMKrYCOXvbLcf6OPOTfFS4m9ZI9RvJ3ax6TprXWeS
	 CcBhbvy3SzgnbGpJS0qwMOKdwT3MezTi9RFxlxWzDq6gF32N8exvCAb7U5NsIHBlpi
	 BjUzzqWxWwkKbR5HqHpVtWx6V1W1WBFPSiMCqK55tJWepDD4hGIXutjCTnSvu9slRU
	 Fw//vmPSDqOKajnG5XbgdS4XVU4K8UYYbUlYC9Y8zRUchWlvtPUW1d37jPePtwg5N2
	 RPXamDMipYB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92115107BCFF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347429357.10097.6027115978994190857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2523f668e047f93d5ae7edc271267dd3e3e897360ff1d761455e5eb55236fd2f
Date: Sat, 14 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773474293
