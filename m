Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419D640D567
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782130594; cv=none; b=bM5zbAd8wQVtZjWKRJK+OxWJ7h0Pd/zNlfOWlbiM87nAhX9+84mRcm2wLxTpkNVnxa23+0NJ74B4tgLjl827D1Op0fZaExd+VlTOLvd3ibszvDFDS3eZjQrsarNdaymPwaQi0imVvtnzwrwecOMMW1iC9AZ32OaNZsQO2zyVHj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782130594; c=relaxed/simple;
	bh=yPswLw6qoBnkbNi7adT/xnB1wocDNRVHn/BiQRp/4pg=;
	h=To:Subject:From:Message-Id:Date; b=D0Ct5Wkm0TbF1H+VpkXQINT/LsZcIXnMtYsSFBsVnoNeUb4b9PFxZgc0nOMO2eCpOgwL+Ifcv+LbSBWpbkCjgUtjD0rff3QfEYmFWpTwwTQ3rZXJREcn2VanM12q7/X7L9k+f1qg+84seaak/0E2yQZJsdzYnVNhgFU2LisFKac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9+HIw48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9+HIw48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AA8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782130593;
	bh=yPswLw6qoBnkbNi7adT/xnB1wocDNRVHn/BiQRp/4pg=;
	h=To:Subject:From:Date:From;
	b=F9+HIw48GMv7tvYqhygXCiuDouFGGp3omgtpiHJk5e68/BeW6V2Dq+KkOUYG28ynW
	 wpeaUR07nl6fOPExtqHz5DlscPf2RnDm8I3qMDWx2Pl2deQZadPVPDjlUuvaHENBHf
	 ORwz0Ggjeh+yfbGmntdep+XDtshhLZ8AdhJFCQ5BVSSuH0jjo9iCRDwYj0l2P4IowJ
	 PSdly/EwMGVYmtOmiWRXP2EmQJVnNVsTuQBOTw6dxRKKp9AHrP274e8R30Xv0KQvH5
	 zons/VuDfhiEjp7oPIcImIYwKEYHOzgFlaFVr8ZC4OQoLqzvdZI2+Hye4j2V+fTZsv
	 101KnJdRsAxeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B453ACDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213059372.10927.2196894223756481274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1f1f304b9639104c856046f872a09ef4a3fffd81945caba27e98b9061e22f2
Date: Mon, 22 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782130593
