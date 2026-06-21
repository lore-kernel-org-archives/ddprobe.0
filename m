Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BAD3C07A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782035794; cv=none; b=U9PoPKTTD+QSe6dfDR05Qn9nFvPG4WZGV71QbkrnmUDIdCsj3UMMRw17p0KgjGQiM7FxL9VXoEjXA2/T9gDfeTI8slVVjM99vpgxfPuSRSZsMqlnaf0l5lN6RmiluyJCRORQAC4WtX53RqhtDyBXrWS80kLNsfwF85PmsSkEQHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782035794; c=relaxed/simple;
	bh=oVah1vNRBsIThuoyNJuXS7bn0JhCG62BWyr0Ar2MVXE=;
	h=To:Subject:From:Message-Id:Date; b=RzP40xTRUge6YC/lsn2sejQ9ndZ7Gn2SP++ObODELOS/XvcoS41P5BaiVvhFvRVOxjocLB9yPHgj5NaLbkLxxWRUvnjvB3BhDUu+jxe5oCjC4vkBrZg8isI8+c7sAjVfDTZmPePQl6LbGn+j5YEIMb4af+eDLvUc4ZDaY+ZUxQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0AgXEqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0AgXEqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4547C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782035793;
	bh=oVah1vNRBsIThuoyNJuXS7bn0JhCG62BWyr0Ar2MVXE=;
	h=To:Subject:From:Date:From;
	b=G0AgXEqKqA2SSImzLtBEEeWhn1MjTB7JGPgwSCtXiqmUjSbVCH6cl1+AO358dv1t9
	 iEHT2sr26DKUpRtyvjq/H1bzt+lnQkVuiH+Hh4kY5QpWYCwYmixwHXfrVekhSDgXIh
	 AP6sxFv8owkgrxSuNGR9wiKv4MICAmjHV1dZyYIEyavtreua/TtcCCbjjjYJr+6crX
	 SNSBNFmAQXldBJdTQ3dPLBrKUfa3y1YYG8R/ikTrNYn3jjCv1yF+SPOta5ADIbYe7P
	 HUTRIk7u60XKZkqq0Xdm+FEGycI0DBQdI/3xLBujKXJX3j4W3U1JwKytSmczU7ZVUN
	 BPu80MtnAu4KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF932CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203579373.19024.17358747322450281642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aacc42e95413a1ec0cb3e6bfe175698d24e8a6d91836f2a00cdd2a9e1ab27f
Date: Sun, 21 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782035793
