Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375512F12AC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781837794; cv=none; b=fUWB5eYWgQTK5EMaSLaHSZCZ0odICgKfXsg6IMx0VaJw7GLMBqws+MO1T8hZIv7qtd8Gy9YeNo8uK2OC0/nlor9BXImXEMxkdmC52Ar8EmBPT4HWlTylFMX6h0yK6qvVdxv8maaBFZKD+3lklkCCn748E8y+Fhg7x2O2PtkjUcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781837794; c=relaxed/simple;
	bh=vX5DEoSuRPbzq/cUVWCmtzEVNEoSYIO1XEi9K2ZAWJk=;
	h=To:Subject:From:Message-Id:Date; b=UbT9kDbjElqlBvSze54YxHuErm4vU90EQO2bAM+0wbo4C4XmwvlKlbco4dTJe60GINm0vAu7ezh3fmwZ2CmzjYMf+BFWN3jipZp7JXpO1lETDxGWg3i2AFtc2BIwSBsWTdynQoNjd+rFkAzQG6X4BExevcFqJ1Gv8XISYx5FCmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXeqtQ1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXeqtQ1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46DEC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781837793;
	bh=vX5DEoSuRPbzq/cUVWCmtzEVNEoSYIO1XEi9K2ZAWJk=;
	h=To:Subject:From:Date:From;
	b=LXeqtQ1SA+VRlSgFwdcBc6ZrRbvIxA3fKSHiN72Uj2J7sMugK6lXO5kEsj0MeZ2o1
	 Xb7D8daDZybZvKiucNtnQM+92FwlPvqr1ylbjGgUMIJRB5FbDGsZkpPa+bDZ+nJ9Cr
	 f/3KKEzcHpHqKV2XndFKYS3aJsbOjgdUdJ6jBP0aYn2Yj1HbSpQ8iiA0W3FkL3C1E1
	 dLuNfL8cmgPeaZ05lDZsaWJQ+GxC2v8w1DsPIfOBICrbI1WxeNQkPlqc5QYlCUu4Vf
	 StQaeOqCpqJRYaMTiVmJ4bpq79ezd2I78KM3tKJpcMMJ2TpJcq28yBOCsJh77ja3rh
	 /2NB/Ufv4KJlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE74CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183779369.8522.8074905588188155763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9528b8b48175bbfda16db3653dbc78338ee3bbe5166e44f2fc7f3c7b69f0b95b
Date: Fri, 19 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781837793
