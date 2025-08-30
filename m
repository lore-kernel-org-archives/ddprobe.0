Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E32367DA
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756543195; cv=none; b=gvFoFlmC8iTKSt/vCWyquO8ULyU6wfdVNLIvkQxdeBmkUiWKwLnuMth4a0J8xyjl/HSexbg9a8b5cawRZAr5kk+IUtug1hRqQ+YW08f8PwMeGg5YzWSwCFIg18YnmMh2lZYstmib/qtCYn+H3BfrtX4JrWMGDWg7jfse7BoqKjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756543195; c=relaxed/simple;
	bh=FldasvgKm2yO3ncBP/Co1U63Fh3Qftb5t3Ob1147uOY=;
	h=To:Subject:From:Message-Id:Date; b=W0RidG3WoRVor73XV/DaT5hCk+HixROyIYm+ACnEwyMStOqUS5+tNy4goqMm1C0mCYSq95rZRh25f2aSBu6Ro/dvpEXa33j4lDFWJ45ZhgULnaz2xRfzMDK9L9817GJnq9exVPVOokdy6WTdipJyCSKT4UbnBXNLWstXDFuBKMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1MuhJon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1MuhJon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7484C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756543193;
	bh=FldasvgKm2yO3ncBP/Co1U63Fh3Qftb5t3Ob1147uOY=;
	h=To:Subject:From:Date:From;
	b=o1MuhJonQeukGPZ8EY7Yi8QBNDYRpFykrWjptAvuxRIyFv9KdlHa4b5KnvsF8CXQJ
	 s61ARlbessqRHg1PBZh9M4Wt6gGx11TmwkBXhB0E4cpC4/0I8N+AGxSOBD5p5RLtKE
	 u57kRGZYaT81S6XhF2m/rkXYf7v6z+IcrpMFzAgCP9nqET6C0EdH6oWC9rxdG9h1Xx
	 fuYY9WAdb60ndzitaszIK1ZUbxG6fZesaoGfNxlqFEE5SFxaepcWsTGR7YuNIWDTM0
	 /EDSzK3McqJzwO+V8Cs4CbXsWFyif8uU3wCiW0SGmEp+2pvHzHWnC4DN5Q+xjA0A1r
	 V9Q3IxIZKM3Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92356CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654319357.15492.10893820628936204575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367e7672f400575eb13bd438ccb51424fbf6a8254f2f477b214dcac10c2538d6
Date: Sat, 30 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756543193
