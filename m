Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289262F60D1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759223995; cv=none; b=G0Bp+D8HhV0G1GK/ZbMlpy+5dRPUdIIAml+zns6bZjNKeQ/VprhtJdHJF9TpIoDm67+lN0dFUBxsi+llDZsEIjAA9TJrOxFjkXfQp78ZW2E6E5TTga6OVmL0mDXpvkmgSB0IX00kGEuxuhUtFJ31Sn/EHP51WeqmXSIg41jSyAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759223995; c=relaxed/simple;
	bh=CKNYot9qG5VbIu7Jb43QyubhRVitBgYo+3RUz805GWA=;
	h=To:Subject:From:Message-Id:Date; b=XvLhncytumnAqTYn9cTfkl2qkZAExIJzg5cMbdzUT3Y+mIUtkwX8+zUxqIkDFtsrwqAs3X0/qG3GpGd/XP26r9mXBjYXuqtyfZatCRxwNAGDprece8TucnNrTCIhKdLLHPA3mGqLmWcSX6MXW9386SkrUGxskCX2CnYvMc97kt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tov/P6kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tov/P6kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759223993;
	bh=CKNYot9qG5VbIu7Jb43QyubhRVitBgYo+3RUz805GWA=;
	h=To:Subject:From:Date:From;
	b=Tov/P6kNPMXUKEB7HvDIhZx062ErTtZhODAMocLfGPC10O8+MfyhGew0SItGw3p+J
	 51bwUbMmqznTU8OcvZ0XCl2yF/ynAj2u0+baU4KfKhe3qwmEADi2q+O+Etw2AfwBVn
	 vjipNqlgVQ78SJOspJSusJztNOD9LnrGIgPBXDsIQ79kYuMKKDZMUCJRDMLQkzPtA9
	 7tLvOQr33O04GRtZHh3LgVGt4VB7pxW7MVzohkzsgt5KmK5ELJiNuk1PH5bWAYPHpk
	 io9bZB2Pz62Ljk1GSl6tSKj83FsH8WY+I0G4DdDEITpjW69pa/xJI8+zUt05q2Ygfk
	 BiZ+8H0lJmD/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D05CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922399358.22269.9237438895945639163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c210eb6850291ac16201a4decf0a4056bcb66759c1b75edb2a5dd99f3da0711b
Date: Tue, 30 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759223993
