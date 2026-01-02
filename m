Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A611397
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767389634; cv=none; b=sGgpThoDKd7HXY3ukpodFuWk0JE4SpTyLLaAEMQOfAMGeiuAs+rm5ZvdodtY9pXF6K/gNH/SrnNQl9w4KUCbMiLFd5FQpOpMETx9fPOhWuScwPnnwCFVHHB9ojo/scaGLs+r5bKb73IEosTf/I3+LHW0yOh2O6atqODzXDUX6bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767389634; c=relaxed/simple;
	bh=tT/luxWxEalt3IqIFe5l8WqLrtEDxEC9ZBpu/ALnd4A=;
	h=To:Subject:From:Message-Id:Date; b=TGTPKdJqSKU1YQP3pN3GNlS+OxfG+8Wl/zP/SK+Nsj8HrSnsfl8s6zHGsIBwgDwRoJTAPaMuesez845KQB7+8/9ssf3Q8Zmnr1q/nfjcq273oqCMk9E6cH6+V77R4/82Va2TDJsVc5/5aqk7eenJCKBrsXGRnx5EnJu3Uo196F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSjvhICz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSjvhICz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F335C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767389633;
	bh=tT/luxWxEalt3IqIFe5l8WqLrtEDxEC9ZBpu/ALnd4A=;
	h=To:Subject:From:Date:From;
	b=dSjvhICzg58Gv7M0NDeyZvZYn3Mu4pPVEJM3LmB4Ey1wo3uoKMULHHfWDkvw083iw
	 +L+fFL3WlExjYb6xVWFDQT9Qw4O1TVbQA/Ln7TuXe/zbKgvKmdl+lJOkk9CDnk7LHe
	 w9PHm9ZXtp+cvRUY4Ov5dRLLzpfWX04VObDT8sGAA/q0mmUWFIHCMD07Riy/zeTzE6
	 6l464TEZOobakKbo/ovWVTYZLwqvDDDBoQR489H0I+H2UD8CZ9hbZOU85xmsRpsKfj
	 Zvean2pwjLoW9kJEVBIpSMvlVA3xVTM6RuH9Ut52IUuPuRUSNH4Wg+fEnvdliLhIb+
	 1IBRsf3IADcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF1FA3750
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738963357.24534.9111317211903058056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7b7c47819e257ca1dba476e2230872625166fe58c37ace4d22bd692be1a8c2
Date: Fri, 02 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767389633
