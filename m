Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD823ACA4B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775212534; cv=none; b=f+VkQwQktQYTj/ruKaEbjI07PrFFZKAvXRTq+FAB23CZyC4PYR9/hrEaBabrGRlta6j7hDoS5HlD8kRDMA8dIhzz93lOSkLdUAtYUebqJgZOcckyHu5nXHMbPUJUoy3VVB2W4cxXK4Uc5u8wqoJLyXnKbDG7YlGrfffJOK6YNj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775212534; c=relaxed/simple;
	bh=BTAJdwTcHK6Oc/ApbttrFZn1axG86iUEaZ+nh1wvKE4=;
	h=To:Subject:From:Message-Id:Date; b=OUxCwZt4saFf6B68GrUx4OTtLIDfvOMtUYKsg7tZekH12CReOFbWYLC7gusITBEs84aRRGxv7NoS05vAl2X1bGX2W6ISmn/cFqfqNF5daDKioI6N004cwVpbrO5Yq1/x9GcbcAHVXicKju0SfvowsjIWgfWMLDLdc5tz7e5cqEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXCzQPdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXCzQPdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9AFC19424
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775212533;
	bh=BTAJdwTcHK6Oc/ApbttrFZn1axG86iUEaZ+nh1wvKE4=;
	h=To:Subject:From:Date:From;
	b=MXCzQPdYXnNdBieyVXlvHud26QltMwCpuKU6Cz97OiqC+I23xbHPYVNN7DDSg1dxg
	 CNZoGHxJTu567Po7Y22LYHgfyf0wljHM6SgMJilDCpryPFwWhO8AAMsgwBELm4Adq6
	 JPDvYY5QoKo4X5AJ00VsNCJ/13iAlK/6rPv2y70P2EXfPjIxr1emqKictObPNf1GtT
	 ZQsIi9IczBHbW3gwmaPy9wI7pvYmK/98QQSHhnB4i1WS43hqkujYRTbLujt4lX5VC/
	 Ql/4xk5Y/M49ylNdfokWAMol/WvByUNF6dFERQBRY4sS6k4KNq50xSGp/ePEQCUnHZ
	 Oqt0fJ5k6u3EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A88E7E36B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521253368.23303.6694447754086345632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898b87c65283f50a6e706dacdc8aadf1917cb37afab9a9c09239bcfbd257ab62
Date: Fri, 03 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775212533
