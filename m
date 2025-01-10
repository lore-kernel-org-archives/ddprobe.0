Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161DE212D81
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736526354; cv=none; b=eoUZoLyy4T0eDbt8hCL5oMV/fS6/uAjG4BtSXbvac/xXSMozpfnWfUH/l7PjB/lqADajYLwPLwAeBM9oEr/yE7AS/w3WeigExVs8yhL2e/cUML+hhirCyRmkKcg7nMZMACb8zgP25Y/5RgZHEXct5uwJIccj08ZacxR+e4XFxKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736526354; c=relaxed/simple;
	bh=fgLZHSXmVRispKarzAk0A/nOu86HGLcZbrTGaL9oDDo=;
	h=To:Subject:From:Message-Id:Date; b=pKFpcXi8YlaBURjUcQXip8RMGPJag+R3g3bbrzl0OW8E1d62B/syUcoBmapCcIsSpaIYzLx0/7Q+Azm6AQqYI/bcownPt9kEO4CZ7gQhF1Mi5tOJ8AaYRKrRL94vDjpy7x1G9dqwHyMJRCOn1MYYGiJqp3WfWW9FywpAR4x/s/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkDGsd4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkDGsd4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84CFC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736526353;
	bh=fgLZHSXmVRispKarzAk0A/nOu86HGLcZbrTGaL9oDDo=;
	h=To:Subject:From:Date:From;
	b=CkDGsd4vMSK+gNHW3CRnz2YCij4ub1hoU5kfySyGIU6C14FO77MEdbSkV34Rf/PP7
	 lyA+YxjL/u6C9sVKcl7+b3UvNAHQ/1ae3lhjrODASh/HsEaK7RiYwsNilQVcqAnHhb
	 ymCWcMdprvrq1d5xlWDJvG2t2EtkQnOdsvJIPU+N4RikuJACTDIFqft7tuAmFxyBLB
	 WXIVdKLdQpO4goxUluVsihSXEy2rvy5Wp6a/Ejm3fridrISSqKyiZtlXbLA7LoC7+p
	 p1RQbcVP4gP/Zt/xh1O2k3yKqBrq+gZqpvfROWVM0Qcm1ev5vp4GR2X5V5T1oKOD/h
	 7BpX9HI1BBi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9494EE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652635359.20227.16616671065168956759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809ecac4971a5f8e2d6226e5654430f0bf21e90019aed980370db4d960be7ea9
Date: Fri, 10 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736526353
