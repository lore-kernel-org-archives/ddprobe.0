Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3919C1482E7
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752071394; cv=none; b=ma9evW38mnSisX2VD8oyjuTkgvAQz3J19JrvqhKHSqdtHzlji8zPKZ1fNB1QvTW1mr6Wzres3EoZgCh7bREd2VspKaX6RHkIiZizYeS4GXufzZ1r8t4+wZHVETB6eW6cxwLAxBWM+aElY+z+8IHHm3tZ9BlGXOF16GBlsCXUktU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752071394; c=relaxed/simple;
	bh=WWy7QnpDk0Y9SIBT9dp+t88TFiYvp2XYtX5DxMmSHAc=;
	h=To:Subject:From:Message-Id:Date; b=YWLF7evKH/VlRmCaarq2EJhcj+b2OW7gUejz9kV8JLBaqX1JZ3cGLNkCponSI9s6ALimFPc6gpDPTEcLn7A3XeBNi/HchYjC9fzZqjUmY3qCRyquLAPXvbffbLybv9r2UxvngzPGR393L8iZXUCCTmCPgrtBmF9dq/K3mqQTsjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJ2lHpLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJ2lHpLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD2C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752071393;
	bh=WWy7QnpDk0Y9SIBT9dp+t88TFiYvp2XYtX5DxMmSHAc=;
	h=To:Subject:From:Date:From;
	b=DJ2lHpLhEFuY2awYILcTW0BP/gkjJEK6u4dPUhDf+SOuPGswV3TYa4go47eDxSA06
	 3HZ/44TfidFcWtOs/HXWWw8lq0c2tW1+oicvPXFJLfwtlDGPytCzKjTFxP3vlxckuk
	 o1a9BEJnqjA2f5lrbYacJO7ZEGyxBv2V3YnYBpsXOWFvhSa7uDG/ySMJLc3k3hpJKl
	 YqxM1kbNKiJUfOJMYUDB/DbuGhv73+lk4g9hQZnD1AswCggJIiWFfXGs8vu0jb6YHC
	 OIVrw7nRrNkYw6SgCG1Wd67h5WtkPEnO+JexT7aqeFWxYcm7oshGxOrGsl8P7t/K+k
	 mBEtBf6X80CmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F864C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207139357.16370.5123734957053884008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ccdf34457d74e63042b189b8f7fccf649ebfa2957b734332952c27a2e37b2d
Date: Wed, 09 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752071393
