Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5557D5CDF1
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775470534; cv=none; b=qRmOamMF3ERv2/LrUrgvVcDuk4U8C/dyx6oRNF8HsuXT6aNnb4EZoK/sd+lItAFJWG4szgS6793bLdTcfXbsQSftEm0eX46x6pZJkfYRdiqkPTksVqaWSNWA5GX1Tu1ELLrp3bG3wPw25mNVY8MoIONKPsUk45N+38XWzEYHWJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775470534; c=relaxed/simple;
	bh=t2cqGgNq5lu7wwQkGlQNM7BkzvkAOSiXOtB4TU+pbSQ=;
	h=To:Subject:From:Message-Id:Date; b=Q4BKK8aTnpJn0PkN0wpERbkKikFl+9LKUrT2fqf+xFeByacaS8rt2VTu/ZMljYpQjpd1+natpXHokh7DGlOhkRqdZoAogeNaU+ugzRMo6JU4NejfaWTYwnfRT60GcvIfekhVrX85oBGHBgYNh94E4kaAI7DCgnJx9ID5hAco2K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGJVyU/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGJVyU/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C838DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775470533;
	bh=t2cqGgNq5lu7wwQkGlQNM7BkzvkAOSiXOtB4TU+pbSQ=;
	h=To:Subject:From:Date:From;
	b=RGJVyU/8w1IxzHMRqrBXPccxKDlvTpggljjCJHRZ6u18HGUbQG/qS43gnky1czUv0
	 UXxH2cDcRwT6+V7JJ7K9uI+JRhg+Ydb0jFTyB1u/epd4v8gx8hYXuPkGJSg5GTea02
	 hmpA4tLZZ7V48PLt9rOzRNtEnrbbQ9PtwE1VwZhUsY631AN0X5+s8C63EcC+ol7c4z
	 JNIo8uLCvuABL6ixsiEqFYnmfzkj+gF2qHVrXofK/VJSLL0y+QlaY8ygShrCAubUL/
	 mMf64Qs8w6SWnzd7cTWbD4FeBlO8jOOWbDPXuiuQaOsbVrIks8VUp7agIeo4T7LU+U
	 +Jl2Qw24b6RDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3622EF4EC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547053369.30202.16269660063393668339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6017153c1b4d20dd4832ddb5ff22600f80df86074b8f307e45cf9881e111489
Date: Mon, 06 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775470533
