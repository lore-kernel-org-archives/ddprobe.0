Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4286214B941
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715112143; cv=none; b=XtEv43KyfAfbFFVmn7+FA/4QjYeA7mQCc05Mmm3MoU4840KZHePSnucA8Di3q3uuLFIATkbxf1BSkUA+CyB8KBfxDZKNE1QqdyChzVLz+GaSNNSaifU+ksPgrD/VavbwUzeufiN3fUAIYgoNUcm72uDFIZWR9hbedIQJ+xCMl4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715112143; c=relaxed/simple;
	bh=efsjea/ZQNmyNj73P83IY6geNXp/oHJmS567ykVkTA0=;
	h=To:Subject:From:Message-Id:Date; b=QZKRhGpdz7oebjPlwWQomjcbCuuFj6unMSYBJoJXXYFVEm68yhlPsZRq9U4gTPQoNpe70YwVIoKWrj7I3BHlTgZ3VucTu3aoByDis3ed7+SvCxSyjeZExRF3no1AdRLGP60j3wrByjbsTF3tbfRvv1EFanhTaWP9Zhb0WZqVxPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxEfHMpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxEfHMpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6536C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715112142;
	bh=efsjea/ZQNmyNj73P83IY6geNXp/oHJmS567ykVkTA0=;
	h=To:Subject:From:Date:From;
	b=AxEfHMpTU0FxaJ6CFwHbSGd8WdixUE8nK2m679UqNT2EWjv8cmO2xzJk+f1vTKyQ+
	 mWT423RhQD1nbIsPYJiGR7IRUxgat+oRtFCYFoAeogDwlFojHB+V5iNj6v3Ykbodvz
	 m0T2saq3mE8cR4+BTEt9LYtdhk+RECiw+OdnzR7DlO72mkEDYht50pG6/jsm35WTAe
	 RD0rqH3ypLSTSUswy+DYKt0wBPMmQJsGEjGA7e5Je4qbwSpiDRExAjI2D1L61oYNQ1
	 gmbByQnNXwCl3yj0XiHX2EprK1s3nxHWyDNdDOR6cv6lauDKC1ztPN2qRUt2NPxY/9
	 m80/mrws/8V3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C127EC19F4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511214278.17078.15428013842025408192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4681a45208b74c77fbbdcfa28358851448f44a07ee25920f288c54e4bd458ba6
Date: Tue, 07 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715112142
