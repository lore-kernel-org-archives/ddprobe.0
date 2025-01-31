Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE4F1494AD
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738356354; cv=none; b=CzSNQ4KK1cfhHIXKUUNvf/lDOE5kcetzBPmjYTiaQjBqXB5/f9lwtHDrROFCHwKyB5FyZER2HuDq2O4IHj+vDPXE2CcDHdIlGz7ZF0HC6jbj3DV+vqxh12UcIandB2h3Xlw5WxRj7+O6anzut08mzRS0IJIu8iWirr71vTM5Twk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738356354; c=relaxed/simple;
	bh=MbnuoksHi1/jckwUf9WfBDJKVWW42t87VsLHhu37Ews=;
	h=To:Subject:From:Message-Id:Date; b=kIrpApdmupa7MS7TVqgtdWDk2r7AeHE+4tguHm/5EqQ8oShX8HYNZJ63/TlfEucEFRv4FHJ5CqEDLeteyJdCk+bx9iZtQo1uqz7LaDIKdpM/piHX/uWUqug0dMzZy7LPPpmgf9AhOeFu7ot3a2RUcHD3GAfcbvySL5V6m4zZ/O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk6kLNX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk6kLNX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA26DC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738356353;
	bh=MbnuoksHi1/jckwUf9WfBDJKVWW42t87VsLHhu37Ews=;
	h=To:Subject:From:Date:From;
	b=Uk6kLNX4apLubdsXJokWGQsKbpG1Qp9HAO01wrRAVmm6OUPtWI+TWTUdwEn0/6uO0
	 00nD5ufr++KfTplLyY2OvqTKT1g4GiSzvSGMaXeU9hCO/dXJsPNcTMpKyE7IIkQ3+G
	 9aKe1dLocViqyPrvl8oJOiEdZhPtilZzT5gpkWKoR2wS9FKWb0RTv1aeM/m9FJHOM9
	 e81cTNufzFY0HJZvEMtpWfIRw2FYycT78PAayBvfA9C3iiafOcfrEgqPIII8wmISFn
	 5kYxTy1ieCkpIbBZDjOrhAHT+C6TC7l0hDrQSi1lD4gfPEZFhndQQmm6Y2MfZBlVoP
	 wa101sm52ztLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2239C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835635365.18630.8877827801267050520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313821b963a3f9c4faa66c8c3b4169376783abd72d48eb944e548b46a2fb713d
Date: Fri, 31 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738356353
