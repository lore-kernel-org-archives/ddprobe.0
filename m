Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085A72EBBB2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770362034; cv=none; b=pOWlAsCZHmUHQ07w0NYpGJzZz1f+XDr+0sZIyZTLjb7WwvS/tcWMRQBmOArVgVElrQ5VPdkL6wqZfd93QH1gMUVNbhSGFA5GYIFhHRHERdcf0nwbn5c1Vsj3MpoTRh0/sVZKmt5xeO+FX62KVc8OXYFn/OK3VUryoZd5e9mslro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770362034; c=relaxed/simple;
	bh=6rjVP7kXx+oUWycpWm7gYd+iPO88n1CelXozjCNcrx8=;
	h=To:Subject:From:Message-Id:Date; b=JEyTFP5iIe85iU/GjSlAvlPuDcuf8HNk/ludSgxAMSgS3erVPsuzm+7JEUoKg4G8SHwqVyvFcyDvP/LqaplgRqwBkWXLcbVO7IOawlwbW/S0pbf89VttThlbDkaZ+Kv/9hBUfuOB/epMOmo9en3NZV2jAKUDVpUSAwe3OqiQqpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBhPrKuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBhPrKuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770362033;
	bh=6rjVP7kXx+oUWycpWm7gYd+iPO88n1CelXozjCNcrx8=;
	h=To:Subject:From:Date:From;
	b=XBhPrKuMcKJ++vvilREv5jNZgTKU/AZvgwULS8HJBUqWixkihtMfi4C/qRc+nlq1F
	 aXWqynbaZ7PXSQv6STsxaA7GS0dDwvJbwXn04ma7HxrEr8fzLr4PqCdjAFcd6ZzYIh
	 3ylr5VYuZrztyhgqlp9F5HFtnWqKy8CdRV4N8aZ6j8U52HTYPIFdP75b1nRf1ubrFH
	 ekouhlZOZT8J2a+iZ3ghDI5A4399EG1m6sJdBmyvR+VcplTqiTp5A3k2tpj3uR9Rb1
	 +tt8ViyD2gvFNz2uSVQkv1QfLfvwrMymcnKoFfQZz6HNRTUXW/sGK62qTRbWYqdMGF
	 M3G4oCrPPX57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCCEB28D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036203360.25289.4081243042596125433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e457f6531d1369038f75d7884e78f92cb6f3d73d22ec3de540f9f1295bcd68
Date: Fri, 06 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770362033
