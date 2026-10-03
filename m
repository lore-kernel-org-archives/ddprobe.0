Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7F68635D
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790995834; cv=none; b=m9tkjsSBxIH2BA/gpNxLodLeexVP37DoodViYqIUoeEmrraDOY5AXp1+3tvG4GueZLjpQpb3+CwiN/PgwcW/C0Xot4qByhaGoJgQyb7Cp32gOvbpln6SjxkTgaKXYKo3PvwDeZLZ+aBrWQgGmSPwShoH31PhHxq0D/v+ZAom9QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790995834; c=relaxed/simple;
	bh=BUFyX/qiIn+bAC8PD8FgyKXwYDG1QkGei/Rxk/rGX18=;
	h=To:Subject:From:Message-Id:Date; b=Y1qz+RK+LbgisyFBaSY4V6LLGYj4Lo+5py+P5lwy0CvWqJ0WAelayi3ipsg1JBuVANoxZ4KGPUdnUrOEYg39B6kWMKGVXU+dkxE0Qvog0j9YHUEqz5Cng3Kwht8w9JKEuzyZk0O0QSNdi4cYqd+sKzTzDCVtpMEzTSxNV0X+u6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da84+epW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da84+epW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC632C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790995833;
	bh=BUFyX/qiIn+bAC8PD8FgyKXwYDG1QkGei/Rxk/rGX18=;
	h=To:Subject:From:Date:From;
	b=da84+epWXgHcf5jEB7KEbEiXHTB9GX5cLu4uVZ2rPUfMzYTUmoUpd0xkEWyic1LXQ
	 xcImdXioq6c+YXgn9nO/Ss3/t9rD7GimXFAjqRdj7KF2svNZ9LZXLB5wm2xT6CiaX2
	 Qg1Z3YkCvPJtMxnnveXis9t4uXsK3w2+U42SIpDj2v5q/9sO26INitb6M6Rvk+njut
	 im6fDUTCC6jcMprEAMySqhY5AcmHYNOy51Urym8n7hE7tqPftwZrv2yyMqx+ClXbxZ
	 6i/9WGjciZ7ExiTtKGahsRH324vR75EfXnFoy6/smk+B/gGage51sJRAJ9bNRtNnIs
	 gq/VodP4R8Ndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ECFCA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099583368.2033.17622313547407188038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f440c82857232c649c0b6de26dff699bc6880630a1756fffb37f7db2b4af41c3
Date: Sat, 03 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790995833
