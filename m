Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EA844470B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787917235; cv=none; b=D4r2DaOqPbbXCRvobjFhFGttfLYJxwX7b227clRHJO0Z0RCPZ/EAyW873Ot190cwVjfy0ivsv44duuTJ+rlzVvMZeqe5fPHkaiVKxTEyWk2QH50jcFSKfx6ntCU0n2EileVqjdcfjb4rZlwFW109QRyRc4L8cXgaZkGJtjdNKOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787917235; c=relaxed/simple;
	bh=hOSxarGmZXh7OJYmbK7V9leJQCVjip9EcoSoDJvzMkM=;
	h=To:Subject:From:Message-Id:Date; b=FlLdxBKW2W4ObA+o7Vjk2WxohZlZq31baPBpaWpNXeMpddUFkd0zhVQjmcApxcq2WXoqBzw2TqerIUWXtgDz14NZq1Q+Y73mLxZxNGPGCsUeQLaYdImu+lFPN4moaazL+plZkARb4wMgpzRBBzZwIEUYS7EozmO7Ni8xpm0GNfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPmw3XH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPmw3XH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A66C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787917233;
	bh=hOSxarGmZXh7OJYmbK7V9leJQCVjip9EcoSoDJvzMkM=;
	h=To:Subject:From:Date:From;
	b=fPmw3XH/KAuE4ziva/fOIzryvgP6AGs/0hZUOj4KNkPBpKXQiCe1/mn/aMPzhWjxi
	 d+RvNYsdI/rND3NebfTZGZ/q5NVQQNGFnrroGZtwMEV6ekxNBbghPrpwkxLAuxZW47
	 f5eR+4vX9Lb3U8Q0pP+lnK7ADIx0o/CCf1scnrIHqKSEKgtqwYxrzLnYqOG16aAjpH
	 aHgF3uKn58S7KJ1S3L7DWSd2LASyO2ai/gGaMZ7/y7sUPYULti8c7VSJ2126FsyrCs
	 ao0s90YB812kHrDKha8S+tybVc7iE7WAYE44HRp0fatGn2x8Rx1oqHrHF2rdghwaAN
	 pWbWFQSrOI5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0CDC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791723370.5050.8021381940175995506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6bce126ba02d21e195bdb23bea032a17a0cbfbbde1199fe53dd6607caa20d7
Date: Fri, 28 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787917233
