Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90230B50A
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759163394; cv=none; b=dewwanIvW2S7dAkK7PX9Q5ysaNYPyNVwMTEx8FkAD02w6YcrtppToZdP6z/tCZ/Hml9YUwthUgXqcURH93vTTm1kbr5F6LcPh9gxaEIsg1DacoCDANgNhx8b0ZbQngmuseH0yvmFc5r3U98vu+xYjqC524tsHqe20Xja+n/NVSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759163394; c=relaxed/simple;
	bh=SQugsu3OKAo9XCpi9DJNTNknbREeV+Pt13tRorp2hdU=;
	h=To:Subject:From:Message-Id:Date; b=A7FE5u0ESVGOQDugqjr7M1RytqnvV1+3SYTpvAxLJBcj8zV//nZoNV+N+R/ovx4wLXUVA/EoQ4YI4F+VNemFRmzJlxksqqsjIroajaBYQrza/IaOIlohGE7FY3NprbiWsdcAqTxRbwsoPJtKfJD7cn+++X0c3oXy3LeddX/VtlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2uoO7zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2uoO7zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2418C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759163393;
	bh=SQugsu3OKAo9XCpi9DJNTNknbREeV+Pt13tRorp2hdU=;
	h=To:Subject:From:Date:From;
	b=d2uoO7zHzEMiDcOPlRLGQhasjxja4spdZ1copF5Rh9HTNCdei26DRO/A4o4Z2iwac
	 Ncz1psXNPstHHqoAf2OYB/xm+z23u3AWrqJWf8v7yhxWSThbDPG/dJ4X5yJxg+Pku1
	 TzKjy49xwKB3tjj8rJMfNn/M5PAtMD4f7rmlwvaYEyPcqaOFKQmC1X3ib+Du/wmHX9
	 jzdrURc/BmZg4fXxspqsJK/7DU0K0S7i3TpnnkOwOabfYS78Defh02Crn51i0LGKL0
	 +1dRdY8nwN4vrim5oGzxIjXjmGXeye57jkgRGiANeikHfQAgBHrg0yHX9TlFKqAsoP
	 JDFCzamCrWLNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90126CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916339358.19410.168117469478229217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2a3652e917b31d02fd6861678c226257d8020e63afb75df6304b0899683890
Date: Mon, 29 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759163393
