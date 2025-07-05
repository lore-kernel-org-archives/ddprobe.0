Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE541FE474
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751717994; cv=none; b=OrQaB3cPgLam2E0Gc/hD6NqzWejlAYa2AWrqrOLscCOjRST0bc9WcmxJGrEOJXC7dd6EiIjdq4cDFUW5toEgJ2qpkM4JrUChvLHaMO98o+BESYqNW6THOLK8nudfZHY4eGsQPD4eNBu4WXvuVaaGvI9TNsLm5AsQQh6DWz6DaHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751717994; c=relaxed/simple;
	bh=UqneT8tCqT1QdiDLNcr8ZU+HXNgp+F2NmxdVK61Siak=;
	h=To:Subject:From:Message-Id:Date; b=Spy502ODVShFnrIsBFwxbobwau4QAE+CA6fTIVWVv0bDB5xbFPSPAz11A3v1FDl5khqKYXRYvMzwdWmKWhKrWOLwhYgIjGJAInj0rOUDiStt4CXR7CaCrPlhB9MYj9NrlFqt+0CfUTNPSbK6qMIAglH9L2kNcZZKCDEitjZVx8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3SG0W6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3SG0W6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A03C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751717993;
	bh=UqneT8tCqT1QdiDLNcr8ZU+HXNgp+F2NmxdVK61Siak=;
	h=To:Subject:From:Date:From;
	b=K3SG0W6P8LSw5HkFv/OJbiTvFdAEYCdDRRmuJKAzF5YiWcsFw7yLJ6CKw/Nm2wxIO
	 Vna+JreEQzTJrWCx1C9XUJK/r3hUZgNcj++b3uWafFaMxipuR6ufm6rf35wd97XKfs
	 dXyqIF4C4uqWjICK3Fgf14gc0BazotkHEny37jb7lpFMPyu/nB7P+ZrN+VsOaaXPUY
	 O32R0yXWLBuyUWeauxkewsOVhjSB3Au5kY4+EYqA590+l8uX9OmygnWFi8d5N/EDBY
	 sZNp/tSOdfTT98ZenOkZ4bmz0673hHKzzli0Lr6y5Pa9oCXUJlwj03BBA3DgSTU6dr
	 IAaEOeDlK0kdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91295C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171799357.16234.6912204856031725081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b8e062d7cf37046cdb62ae70655ebbd419af3fc86290dfce255a0a94e8e3eb
Date: Sat, 05 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751717993
