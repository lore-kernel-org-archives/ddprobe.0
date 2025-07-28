Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E89478
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753672194; cv=none; b=lZsghep7DL/JFb8/1X0H375q0iedTXSs7LoTHPRsthOGHxK4zkpbs6Vp3sGZM+JXN69KI2OqaCXTCri1IvAhkze40HzHlGne9xFpcTG9ucnvunXVJ80bgioNNbTPmgmZ4lWcgqpiJ5y0EryuD5rUk1JayT4xFbDkl44XmDv1sl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753672194; c=relaxed/simple;
	bh=TSIA92w2RrwqCGxpZUXtkTqqAQ0nzs0+hpBZCqdHvZQ=;
	h=To:Subject:From:Message-Id:Date; b=uWajH8QVnGA+al9z9axxpsBq6F3MODXDvFWyVx0HQ4O/E+GJDSQQCm2TtHN/jg2vVPdAyAJ1xJvyvvJg6P3VUmXkXg1OtQEK5M5MdGIyabg+7DXfJC1+7ZYadG24WLB+cTTzW38sjyYUfIDzRiUh7+CL6n5r4oBg/kuMvNvWo1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unLVVTee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unLVVTee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A723EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753672193;
	bh=TSIA92w2RrwqCGxpZUXtkTqqAQ0nzs0+hpBZCqdHvZQ=;
	h=To:Subject:From:Date:From;
	b=unLVVTeebzQtrItHGEFOTijQ7O8ds3mhL1kaz5NKIwZhpjx+QIQPmVuqURRMfjgD/
	 KRcKw4gDG9OGVd7+Qxt1HCxiX11bdUdh+vHl0RQza53ciMWKC+4RJetSxBb2YxxJQJ
	 BfLKngNYLlsID6hUs4XHyF/fh1v4EtI2YHc5Y5UUZrkkRnUyjX5AHJVcR3H9rrGARK
	 54vBnlWJYS1gmu5t70bYL+F4HjP5kDmgPqP38+qJebWYZ0vSSjeZjwFT89rGfnPRZs
	 gmb7k/PWu9RniM6h9HpdMgrgC0RBIsB4IO/SMUC0Itzek0TDAdG+Dtsl5FhS30oKs8
	 U1VWEEvYCfSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70AC87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367219357.16641.9829811162541805024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c624e1f1c8fdf9a76c45b51a4b76f8a0bf92380e86c8a22cf752a6f36a274d9
Date: Mon, 28 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753672193
