Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4679F18E023
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723124754; cv=none; b=octJnbfmQOKfo5uvIgzH7cBIZb3dyBOIjPz+hfPQBWk+LkjChAr7fzroBOvxLERjb28oCkk9n0hpxP8WY2GjiCPrd01USKKV2dgRlyCX7NjsbaaaTUkQpIK1WyYPnCB6OGZiFDQPAAR4GjXK9jv3K9XpY8rYab9TRq56y/ulV5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723124754; c=relaxed/simple;
	bh=IK/Htj/Le9ncI95sME+m9jhWZDdTzneKV6FMkqhq1Wo=;
	h=To:Subject:From:Message-Id:Date; b=J9j+ssH7x2oQtGLgKh378l3Jm8lb94DM5FzzkY4s4gdTsaNmcC9eMCLWdzYXprug3O/9818bxybmCpss5z5Rlhr5sMOmheufiddB3iGC3oexoZrycl8sDpLtnM37Q3XIqrOMBLcXualcsIwYa8G83iVD28n9j3Tt3nBQZ9kWhRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbDmgwdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbDmgwdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD4CC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723124753;
	bh=IK/Htj/Le9ncI95sME+m9jhWZDdTzneKV6FMkqhq1Wo=;
	h=To:Subject:From:Date:From;
	b=NbDmgwdKtttg9qtG9RhCdDWl302jbS5/kd6W5A7AGqJccjHdYP0oywrg0MQWjF4b+
	 E9yvg79h1qbLjYSGoVSSq6g9mrF4HdcyNnOjYwqX4W5wlSST8ouaOU+t5QqrzKzyCa
	 Csuk6GvwhFUjE44QRUvezf685nqzSgHdD4V7g9lDxdCdBfUfe9jfzl0tKCqL1WlzCL
	 R6fSOCRhuY57V+TF/Em3L6on5BQpOotbaB8OBxgMogj8zpBm/y1zkrgL8FvTMDm53B
	 2eVIxLUwTgLjXc0KNFSyBD6I6Ssrx5ORMtXOffktzaK6kaqD8fiPGz/ksr5az/E1u0
	 zXHRE5FE7chvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B85C52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172312475359.22504.8502529976309955763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eacd73f867137a271b4a5aac5e9338886bd7ad85a062208a101763891a2d004
Date: Thu, 08 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723124753
