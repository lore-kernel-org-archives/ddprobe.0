Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAD8382
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751398194; cv=none; b=HyzuyljHQeCQnLSmNiTFm+aKw9q+8Z3P1ueubyREz3Fif3XLi0phhiLVpZBlskOMl7s2qQn7pfhAm2mJqUQZcToH3Y6Kaq5WTSN+2dl2PA5FmCBsmm22UkabFSgUhFvhf9t7WSFnAT8B4P5HFY6dca+8kn+rNHhhtylkSaGe5+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751398194; c=relaxed/simple;
	bh=sNWjeOspHFk1jieYvK0UvjEHkv2MkHknNZ8M5lYTCyg=;
	h=To:Subject:From:Message-Id:Date; b=Cnr/fZ0ifLUWfuOXLn4EW6c5ep7IMy50FFNuTyUYswe9CYM+NzIybezqxJtLFh+FF636qe5v+ibhP25LvQPsxFyge0ETZsiHmByhIociLdA4180TPU4OOt8hIrDE1uQ/ULMS8YdLJ6t39SU+lKV6aVyC+7kvWxXcuww/MAdb+qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqeqy4W/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqeqy4W/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751398193;
	bh=sNWjeOspHFk1jieYvK0UvjEHkv2MkHknNZ8M5lYTCyg=;
	h=To:Subject:From:Date:From;
	b=jqeqy4W/qOGlnxkNa4wjpOc7T3LV7OP3FsXbdtsQ9qUebvY38Pn1P343fq73q9vf5
	 qOpXDvksp80NUuPicJKSC6MHeO6M/rYcr1wCfxGodtr9Kt4aMo3Vmy7HVsObDKOLzY
	 WicvC2JhXmI+imOUrHteYR6V/sdp8wqmivJ1Zmy2VEAINN2tfIlGegW8CoHjzB5RG6
	 /P2Ffyf1epiV4JYIGUbn/evfLJFAGK5NBRdHpLynPTzFz2KGbsf1jCtKyI9sOwxUPH
	 UGzMhg5h+A8gYBt6qQ6xr+g5xUMFPDrG4Lr/OcQwhJ2A6Yhpw+1VGul3gMh38ShHnP
	 Ps2L0YjxfngWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1DC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139819359.29897.15494122934768332374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f682e66aeab267788f96c8f9b323a0de0aed00f307c248acea661b52888d2ed
Date: Tue, 01 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751398193
