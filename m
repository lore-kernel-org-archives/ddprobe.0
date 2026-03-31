Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317BC36402E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774982094; cv=none; b=tkh6jMaNhaLFfTBJbM54CHaMIYBxqn9THJcqdDI43quq1icdtGIhhJMfJ5VDRtusi0ndhbOM7mGV5+D5JMEkzsTtaWcx+kbqgDP5de0VfEhNKxDLwy+5AF2HpTqBupekPdmXDemhs2yr/xQgc2VNkVUzexwEde4d6WizFkidI2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774982094; c=relaxed/simple;
	bh=QjKCtkysQW+2xDNP3GDBfNCxnlc9IZ0qDvaYN1sJZ6s=;
	h=To:Subject:From:Message-Id:Date; b=s97K2a1mtInANdyCEqsVTmuAlCorHFcQLXfo4BWIrjwdowcazCHxs479zGCPcb0mjmNKFXFIO3IGl+xvxmejgo5gJnVrhFE0QGL+SpCmXIzKWwXEahhNGHSzWbyeI2T9Cx5kXC471ur54CMhzafzud6LblkQMgSaRT1TUV1C/no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSVyMJOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSVyMJOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFC0C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774982093;
	bh=QjKCtkysQW+2xDNP3GDBfNCxnlc9IZ0qDvaYN1sJZ6s=;
	h=To:Subject:From:Date:From;
	b=PSVyMJOCAWs66wFE2Z7W46Jnd4+QAbmaa5pAueFFpJTSzRPLm1vO+ig/yAAAj50iw
	 0omuh0zgyRt/p105ihJ/lZ5N6ccJDdNUOZNhTqd26ypblhqpgwQhycn6+9RDzAxyWv
	 FhDu+9jIv9/n15mYM1GzXARbNEeesMNzFcR9KWLnqbnZD6LsSY27iQwzzothBUTujY
	 cwWFoPFROTOcm32cc/OI7zsqSItE2L9MHWverNxfsEoEDUCPZI4DIbI3PFzUJi8CCp
	 yGzo0ukoS/FbrH8iuEAJhWQoLhWD/DEbfeMyT3OA7GEFkuysDKPiUrHFW3QAM9jnFp
	 Km8PeS+VQ6jwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BDB10F92EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498209365.19254.17625960983391081297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6bc12b58ddc1b12bed6165e7aa4d38d1c532382a6abf9fe5ce9758863fb1d0
Date: Tue, 31 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774982093
