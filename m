Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227B35464D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771908294; cv=none; b=N87cbtUg/gP3awWuOwFWgX65a5masQRqqTTJHLdrns/CB6TNtaGZvMHOSbUKM2qg/7JR6pLcCYGKvDHR4e8AH13VTriTHg3nwiVJy2lgl185VPVdFNOeOvcGm1UBSElTU9KmBprGcJb2MXvLwWI/cZxaUeFRjVR+aCjkG03xjww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771908294; c=relaxed/simple;
	bh=j/5sq46B9Fw0ia1FdfxDbr2uwnF+WZI0iQw+qsMgyqk=;
	h=To:Subject:From:Message-Id:Date; b=c/mMNnKjHGjSq1L8scQYOvGig3obYeqd9VzIcrsUUrGw8/y3vfgMQeVMCvv0ZXLwZWooZRgcHgnAsvagd6H6rFc7UPt3RGhOlqInMme0NmsXLO5mThvGwEN0DNC5t6Aa+L3T851HIljWe7hjpugg3JMJd9iiCNm0hU1TBsHxxbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1slfzI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1slfzI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81F5C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771908293;
	bh=j/5sq46B9Fw0ia1FdfxDbr2uwnF+WZI0iQw+qsMgyqk=;
	h=To:Subject:From:Date:From;
	b=F1slfzI4hsEpLHD8l9v2YFOJK+wlbvzv+CYLGb+/V4YbymLo1C+D00pEHfzDzlgj9
	 PITZBpjlgcXFA3BH9PkQU3yneG59umlbgyC71Qj/zYylHHTGy7NED5Bksm+7pPbnEn
	 ClwzBbImnbfxMq41qe3s9j/ASCyd4iLG/0/3XrGUiZdYO76+9q+93cncEVIrZ/AEZb
	 7x+BQlr56mdya6ObLT27RQTEiz4twTxkJ9dNPRpYUM+7+KtjT3xOBGXFzIIY/iQnKH
	 xS1pXzW5UTnGzPUVQoDVBwMqKi2cwDRjv2ArffssC4rxoQwnomCfME03wsoIaDHay5
	 KhMMtNhL8YoFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BB5EFB7F6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190829358.29830.15450457086896984485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fe87dd5d8b96e6bd1e9b05122b07f8928de8f78418d5f7279e8ed25713d966
Date: Tue, 24 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771908293
