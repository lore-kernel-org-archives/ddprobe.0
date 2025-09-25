Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A5E2E7F07
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758779994; cv=none; b=Kuj21mAGv3Ef8Dd0d1JhqNVXhKKCGQ49vmwbMiVwJoUSFnj9NW/MeiNMQwalXPtwChT0dQlLmXXDLC7GTci9eCDktpk3rS+Y5M9MuhLp5UyrazfY7mS/sOLcdwYAMgfaZGX/MMSQqqok4M40z2WUcdJOMUKZaIcyoL2RCei9+U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758779994; c=relaxed/simple;
	bh=V6iwKoDA6VyPD4DhsMw/XWQbTb63IoGm9wfqvb91DqU=;
	h=To:Subject:From:Message-Id:Date; b=JgsRLdu2Jj1eSLJ9aNwZzoWOXLfJfPzUTnz1m9mKV6IMTUF6kA/CwX0I0v6853SPHhEVRj3lO+M7MKSfy1yK29nCnV9qMoBvQOoc6pov3qkSQ+hVXLauo94Ib/29TQjDamMSQ6A0CSLkUf4p3jVAmaQ3i2fE66bZmnS4iQdDRxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9Kq/KKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9Kq/KKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE2FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758779993;
	bh=V6iwKoDA6VyPD4DhsMw/XWQbTb63IoGm9wfqvb91DqU=;
	h=To:Subject:From:Date:From;
	b=c9Kq/KKqcNmJSbmlbPs8uplfr9SJ3amDNguVIXieeTuMNAYud3jAF8WjdndSoA1kN
	 hoSjPgcgRlaY1BdkQO6n/PDCQKaUNhkeXjLj9rwTxsVjIrEnaoqHQDVf+vENTYrpyi
	 2RKjhj3b6HBDmt9pJxWF+Xzg/FUahKdBHLFffjIPOEVkfTQcZahlH6/i0nexiWRk9K
	 eLO90OP4YfMl09QeF74uC6MTejZaA0uflKjp4xwoOuh5rbusgGxtxM6bDnouXmE2xv
	 oB4TVcVquLyZ+6SuN1dSHoPs4Yr5zjgFDwLEcf59xiY5iyW+x6DcLRgL4p+FQuebag
	 kyPls6jsl0tww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CDCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877999357.13140.1079528670691855906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d7aa88b558c487a6275adb8aa278d75442367bdb8150763fdecb408963d42f
Date: Thu, 25 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758779993
