Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7466521D590
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777379254; cv=none; b=C8qGeeAV7ivdIRfszgUI+M5mBI3HZKNu+bX4Yj/aVApgkZv5xLVlxtbTjtIfuvRP0RIkjyqUd+9/ChT5NHYsG04s5JG9pmaKa2Z12EvkEYz2VeyHdeBFZsCfHjnlA5qHb1/484P7pP/eZOeWH9i+70lyqM0CGO7M37O2h2rBpkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777379254; c=relaxed/simple;
	bh=cN5+anLhOZDC98qwZ/JTgJWudyKcrjcInxA90FkLyDE=;
	h=To:Subject:From:Message-Id:Date; b=QA0Umm+3sh136IdXP0zkP4gYq0wRznJLxkCzZUOtc60uweUG6Nwa8mx5wxHrZ+Q8s24W/bkOdS7kv94MxxTCHEZF1N08JGlEZjSsiNrkF2rE+hmZhQBNpYI+x6Y+VoltQ7qn9AobgEOXpHgtxPX2b7vtar3PqJNPbzr82cgRBh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsJv43W6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsJv43W6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FBFC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777379253;
	bh=cN5+anLhOZDC98qwZ/JTgJWudyKcrjcInxA90FkLyDE=;
	h=To:Subject:From:Date:From;
	b=WsJv43W68cmazj640iqTipwvef+WMPgCLv7ISvNVHmR6YxhUEoxwikq/l+OimGEXc
	 PRODE8LlQCrG8O4UavtpZSICcrtwbDHzl3yZVi54yzGwFE35iDoKeSvkTLmPhShhnd
	 R9iLeNJpUPFT0m6CHECNL5T9rzjy7nPrPicv605mFH1ZQ5ZRPo85XMrD3Hb0GA0Ww5
	 uTiBTd/Q2UwLZXt8/J1q2CfC5gasfdZfZcsWKwAXfdPzCK0YjHG4szEPTpi5m0pmBh
	 0zMnmA9OZOIY9/oS5BfcuI+BI48R2gi2KDmVCIr/UnpUtVH8T7W/TnSOsxCFA6MHR6
	 hYsMdKXzfIEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E67FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737925368.20720.13773535322861352078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5970663fb0d065ee54fab4a2e9362bf8d74524dbe0eebec0bb51be1a9cc393
Date: Tue, 28 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777379253
