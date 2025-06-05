Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A1219317
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749131394; cv=none; b=JmzyZxK1LrkQIfu9QJbnrNa8yercvheMkYuNkUcg2yf42+0iCjlkMzwJfm8il25YqKG+5pUI7gxbsFu/9F5Xa+LFFAPKCndwbNIvdI6dZccGoaT6eptEkUHpsWah5cHp7jZxDman3SGi8T0RMtpryOUusgQXvsWTMzBmLs9RfDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749131394; c=relaxed/simple;
	bh=HYCletW8uEVi1NpxDuAUZe6MER2fVATfNVTCdfgLBU0=;
	h=To:Subject:From:Message-Id:Date; b=UdGOyzl6PpTo4QKHM3x6zabbfchmTLlmsEGEiAEkTNbjBQDHvSkaD1AlsT7mDUNVunSM1iR29j67T11q8CIq7xflszJ3/tg0B4WMgSIcF6WD+5LG9OWWdGZkR6qQ0aF2ItoYfYu/JJQLCBtsJeoxI+d/W9KhOx7flJtVmyMbSyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP3W64Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP3W64Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E73C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749131393;
	bh=HYCletW8uEVi1NpxDuAUZe6MER2fVATfNVTCdfgLBU0=;
	h=To:Subject:From:Date:From;
	b=DP3W64BolYlMipj3h5jhXBJedkTY/OcfLncFaDdknn4I92e5UDlNcYUssYkHLkk+m
	 nVdV59Tv3AJEe3EwOFYosK0Qbt0Vj3KWnI2hDzxlHs2xt+K3wp62RG+fZY1yLWkg5D
	 mKIhQcKePAfmFi5vClIcjZ/oVqBh6vqowO0ZbsHkc6Ms14DHbMdFA/opVaXekmzQM5
	 Cm8845prdQ8nW2J3tkzODt3kDalnQECX32EjN5Pm36MbLurPAJgltp31up95mvM8Jl
	 r2XtQg+vPSn6fjn/vaUm2PHRzVx2r35UvUPd/veo3GUgsWv3UOUBLEOgUPtd/UPkKo
	 XtLwX4w7b7Yvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DCC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913139357.5028.13765979262300520024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92a8030d7826482c002d2bddebf9acca7b52933adf3b5f5ccd496f49a929956
Date: Thu, 05 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749131393
