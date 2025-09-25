Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688E2E6CD4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767394; cv=none; b=sOGb72KVQB6UGRk9tisBhLcjNfsEKW/UmwxiTClQs9N2ZMGekxces85UdynMf7dnRBBZg85cAnPz5b+GggFQ5ohpNrswX9ca+62X1HuV62wgtzUh0MZ65HmO2k7Nvf4MeK807RtvBxuMTJCgPff+JYq7XJw1+s4ui5caDLiGN2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767394; c=relaxed/simple;
	bh=AsIepm9pprnnX/trgd2ivfCI2+aO7H+G12W7oRQh3Jo=;
	h=To:Subject:From:Message-Id:Date; b=Avlw9vemzF5/go3ooTbP+mRl3cKS45J4sb67NiizEL78yfDQyQxq3i27Hd2uGeZs6lnMPQVm/NDeCpJF3MMXw8tLQdzd51tchwebQhmkFCB/3bnkL958epWgGz1ZsRpigWW6Y5IFTJ7s8dGsZB+0Yo1aiBbrq+oyigNg8CxGQ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dw2GFkbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dw2GFkbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758767393;
	bh=AsIepm9pprnnX/trgd2ivfCI2+aO7H+G12W7oRQh3Jo=;
	h=To:Subject:From:Date:From;
	b=dw2GFkbIAuDEuyrksh4izpeQ532tqc3fCc1NL3+j1NvK8YDYQbQGJSPDmnDBY4Uw8
	 kRG2sf+DG+VtPC2Z8LFc2baapeCFGY3VC7XJpipbESeHKkj39iaZIB4ZNdEja2B9Sb
	 r6Q9W26DLnvSW6FQkfVw1XL914RnGtGWUrJxTsLke5O1H8A8R8KaiW292kerTKReou
	 q+zP4MOvQztP3pZJq/Tnn7uy00bQCFCGkxxNUa/OVWNMjPVl6DuLv5d9EeRq0frdje
	 W6kvYtL1nSTRSlW8usfpTFTVx1r202GB5g9vzsm8wYOTF0XpxF1bzSatULC+pSZs09
	 m5To+giJm3PwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9221DCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876739358.1889.11804836965941630909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be3bc8fdea18b5088a03a43d5b7c4c9e6ec905726d65b627dbdea78755923fd
Date: Thu, 25 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758767393
