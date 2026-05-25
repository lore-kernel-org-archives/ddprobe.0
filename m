Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA7326D4E5
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779744754; cv=none; b=MTSKmlXTtq1u2/EGMjM5cyzcFCi4MwDSu1niDlt98wLHDLqKnC6F3wH5m7r93lyCh0QnDcAO2bc6lpBzS6IzRzrTX40+570s6+S18uicCu8eZeML2ds92tNquaoU3Aynl8ZJysAX25pm8RHKsMpq/ydyFZ1QWMfa+PDNTMDaUso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779744754; c=relaxed/simple;
	bh=I/8xD1w4OOBHzdFj1NTW/oKLa+poB1LNreQ3x6FY9zo=;
	h=To:Subject:From:Message-Id:Date; b=knl9C/T9YK5SWERND0sRylFF0dJGiyyi5mkES8G8uRPVlg4qxpY/c5U0ndQtStezDRne+fGFz5xW8v5K2vaMDArcCqTpJ1co5xlnmEsr5/buN0D3fHM71H+6rZB91jBXl0yTikKi45tRF5AhQyDGYNnvlIeYxezJxCK0f5fiWfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TItvj+wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TItvj+wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD401C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779744753;
	bh=I/8xD1w4OOBHzdFj1NTW/oKLa+poB1LNreQ3x6FY9zo=;
	h=To:Subject:From:Date:From;
	b=TItvj+wfRQJyRUM4tAiBduQhXzZWhNzTAova9hFBlSe/eCepUIpC5Obqjh7BVYQq3
	 Srvj5Al0PYVtkbhxmDGj/JvcfwkPdsG7BjPtaiCDiYbP9jxZfspXeK/7EE40KHadTt
	 fhN7wqSNPzd18SErf3njlCfrxJioZI8E2cR52UVTcpO0npZ9PV9zPsSNI1W8xC4uME
	 xDkFMr2i0I20zKx9nPjnYmioOJ7a7aMCczbyPQvk9wH+w6lONs3Muke1E2ieJWai5k
	 dkfovWvGuQny+DOk9R7R4uVhASpoEtYc1GUyTHKYfm0tXuSxa/idVJUTgmATBv18Av
	 +agb9POjquNuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88E4CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974475368.21263.9174869584780695087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c806b59a6021394ec20e4a6e4382dbaa5ed7ed9dd9c83fcb93aecac797353f74
Date: Mon, 25 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779744753
