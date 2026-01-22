Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234654611D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769057634; cv=none; b=YQWwjD5Rj2W+dNOfbvux3FLBz+Z8g5Jqx8+Vl+2EoWS2RLE/XxlXdVX8oygPk5CISIkBxdCuFGqVUusHH2X7PIIVgqmG8QlZpiMUWThmkg1eGag3B+S733Teq6TZsXuO1zciINV0M050Gvr3xWn+59M7C+0eOUrHvJjcuhHGhno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769057634; c=relaxed/simple;
	bh=NPXMXd57APhD44PrwdSXlD0LzHHAEn5bYmwMWivdpek=;
	h=To:Subject:From:Message-Id:Date; b=dyx2npACWgwCs7vowqiH0RbVU454jbM8oYnklrRvlimjQZaaMJSssPl2J0o8Jd/tLSM63VtdQrmKftYLuVn36xT7XbjjqibQV2aUizLIWVp8yGjVLy6ed7c/l98cvVk3MvLI8a10NRreCxrE3iAS+Rul/pGNnXNkiLTCDr2dopQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxD5UauK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxD5UauK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4471C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769057633;
	bh=NPXMXd57APhD44PrwdSXlD0LzHHAEn5bYmwMWivdpek=;
	h=To:Subject:From:Date:From;
	b=gxD5UauKl+TcWtKPt7J+Zvb0THulsT2+d42CAyMEiZ7ks1OfJAXc9QiCPuI6Dv82C
	 2YrY7O0vi+JdjbKlJ+YKvz/D5QbGvowJOQO/agAviNlzz3daIBau9I1jahL8s29eua
	 mj/17RZyfPkaSC8gUn0Xc1rRnhTaO2Db2DeWn6I2qW/eZvBNIN6w76LMIz8iZjQJMw
	 nOs6y9Wass9QtsR6YlG8SQgYyNGwiH8EkzVUG7Ei2Vf3csxYyJAAC7P5YA6+5crJHw
	 AP8ahtFYuoYQ+GtpYHso0SpfBHE609OIoTq1E7alR+a9M4tzzB9gBtlTPuTNWjG6zG
	 VJQ9yDYOq2nFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EDDC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905763358.27563.9779506388682719155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f2608df0d8103ecccd0cb2b3a8105239f0090345f768ef07ff81f775ac9e80
Date: Thu, 22 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769057633
