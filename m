Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1113148C4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756280994; cv=none; b=ERhf3RvBoFv1Ql2x91kdZlJJwv2tRHmREMeuTr+nnwlQrhOmBK/gRgyR16fbkeTB66ak64yWAe5qsLgT2RP/wTYpJdfTKrLznuHOuHQYGwdvC6/Cj7BoFYVssN7tWmpvI+FDcqdHLcqBYXoz+oHOWjnKCODmqFNwLEBHuIQqreU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756280994; c=relaxed/simple;
	bh=/cz47/ayhVrHtRrbIx07IwSHlK6TfYoluVYjfBNqy98=;
	h=To:Subject:From:Message-Id:Date; b=aX0LaqhZj51oy0f0M1pGH353fW+GloK454f7Mfn1IGxuE/B7Q+LjeCN9hS8VkEWLJEL8fwwpUfsP5FiioqMz4QFcnzmKLytYBucXjQ9aWCwabF3V2JE2YG7NTO0ykReAZqJ1WgIIb5L0BXuph43n6rMaDEPm6ZiYW0OSiGK/i+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn39ijub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn39ijub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C2FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756280993;
	bh=/cz47/ayhVrHtRrbIx07IwSHlK6TfYoluVYjfBNqy98=;
	h=To:Subject:From:Date:From;
	b=Qn39ijub12bikHuhtWMvphh5vDMifoNluxghg3ClIUUaL1nKT8s/iGfFhKbBIK6mm
	 ufjRyS8+1CHIsAIuw4+26ZbjKvf3gqgCtzKd1s5snoJysSICwLIa8CyJoYcxGr+qtg
	 YJFpcvvVlW0G4+5da88rB1/aBGGbhuqZ41rKQupvHzMU+Y7OtaLmWYiQdj93m6gKUj
	 yjpyYC4c+MyckGfq/bLIG7Rmo5y0njmahjAXHsczwaluNp5LlgItwa4CXh/UPwdm0x
	 S2bSsoIcw1XrWGa9PCP3e+B2rvZ0Ogv815xA0wme2E6s2s05T2YbFzWz0gGnGwitc/
	 qOy8Xii450cPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F9CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628099357.22282.16344117043097658728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5d200e860b4299755df1eaae0b7f3dd56464154501620b0e0506f1cd180678
Date: Wed, 27 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756280993
