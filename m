Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CCA1DF271
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759570794; cv=none; b=WEKwt3EtssxK3BoGSIPl1X3jFbwb0RwNPj3Wkhgs3BwSsdKe6NZGuD4wupUVSivy35S2aGKRLx7PhQrJ7sk8SrB7BeaMfQM89WRditazD0o8KT2mbV5Q5FIYbPnX58HH2g7jlv2LVENmA5j7wcorS+xTLbpbzL6xyOdNAUIcuTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759570794; c=relaxed/simple;
	bh=JoNNnOK+hIhSzQMFhcuSuf1FgRVfFCLO4W85nwNzrFs=;
	h=To:Subject:From:Message-Id:Date; b=SzjbU/fLX3nOB0qeSgfcJbeyZ5892qM/fpnVauGEa2K6vOgT7HdAw/T5kcD6OMlgW+O4ZziMIK8WrcoYkNDUTn3U87h183v2OYuqg70vkFpFBlj4+iNzeXHoN2ILBHMkLX171jIR4+w+lENVqTKx+wXg0HfTjGEa7LAa4yYrrWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuMeG7nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuMeG7nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F99C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759570793;
	bh=JoNNnOK+hIhSzQMFhcuSuf1FgRVfFCLO4W85nwNzrFs=;
	h=To:Subject:From:Date:From;
	b=SuMeG7nByssAjWBLeIdzsrEZA1V1p+oYPBbUwhY+2YDkNKcn7kJ0KwyP0X1II9H7b
	 BtnZhl8ZNdEigEspOf9HwScxsYOJmUEGAEMIw6XuoNXm/x+mJ1eLJNgNdbUjqG3cBg
	 tnosLbRUnc13Ss3idce2RIrSr7NKVsi91DsJXV2THQpBjNb9WfsfnxgRbfJ2yX6UT+
	 B4cto5jJLimgpDRRxwDFLEj8gmRCQJ3G8grk4m7LB3OwZkMJfiFy2nIZuZcSumCSon
	 pYeGM2aJBudtI1fZpIAu4/oOrID9GeiT2tRHU+UY+AdrRBKlfxVZNtFWBGtnwgGpia
	 6tWiirXO3sbrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD18CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957079358.23284.18230617431407777328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b8132c18efcb21dc40e8a8f8f0ffd41fa48d01e0b4f47adad2916f3824bc9e
Date: Sat, 04 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759570793
