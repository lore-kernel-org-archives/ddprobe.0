Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC0423C4F3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761259194; cv=none; b=MOeBFqjFA8UdxN/lCSLagY/WIPEbyjpiQdwoO0Db3fYu62EMbGrtNZnAmgYXdPyOORxVBxwaGTbTmjD7E5ljYTKQpXHbtC+8DCBb9Yy1vbONKmtS3uWPvASWYbry8BVg2IwruwLrCapEi6gpmUnWzcod59tt5qaqYFCht+DweIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761259194; c=relaxed/simple;
	bh=pM42DAY5xXNZebuWXRd/efYH3Ty/J5n3ttYiAW3u0e8=;
	h=To:Subject:From:Message-Id:Date; b=DkZpy/KB2av89WQRfoJ3yR0OrWVchTJpNBjwCmCEtUxE4IT6lDZ6A25CJmCa21YRznA/pmduFQAv7VednKaWPtvbR+Y1us+vgF0h3VeeQ4neKFfCFjD63WXYP2o6fJa8cKucuQsO/Qg++WFij2M04NZzlS8xNdnccrOTYblM7po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw6hzEoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw6hzEoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4849C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761259193;
	bh=pM42DAY5xXNZebuWXRd/efYH3Ty/J5n3ttYiAW3u0e8=;
	h=To:Subject:From:Date:From;
	b=Rw6hzEoFW670/3XTrMZZ6zuIgOU+oz2ZafUZSJdfFbDn4OfNTu6Fc4J+BmUmpaCHz
	 nuMTY5Jv6KPiS4Ce67/e1MPDt0Ur1JX147Jf8sT/ebT30UgkRIDWDPrpvVKZaa5siu
	 YBi+svEeoWpZRzlKkGCtPBcmtEX99jcL08T5FaAMwdsiIA0phj0mu2MFJ+OiGB5dtH
	 KbnBc3CNVlmypPBi8QshHRzIlPOjvULD9fyO3ZfFacxKcqoRGLzvMksV3WVyZPDFXW
	 WLIh65+/wtIh5Snjj+YfIUflsnM9jFC3hEz2NUCJ+TbdSg3pyLxfRP/ROfhzxUqEtB
	 LDGkvONXo9vRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCACCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125919358.14037.2426197693057641853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ae60c0b5838bb21ae4a684678b8bc86a4f0bb7ae75fa51078c37d28ca7c007
Date: Thu, 23 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761259193
