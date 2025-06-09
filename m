Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B6533F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749444593; cv=none; b=SA91uIJcaojz2eQaHvUNCVq1sjZUuKO9CWz7kol3qvAgeOQKY1kWVwIR0QHX+srVc6gvuNMVVcohaGfb0WBD/sX1RUdznnj7Rn+HKooojjP/kU+IY1OKIYgz8xervEQB7VW+IE/0OY/NwxJs+lbX/v6k7h496PgIWKTbnryWjsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749444593; c=relaxed/simple;
	bh=TsVi48ExZ4nfnwKgnivEgQ1otGLmCeDIWFfZigppPAs=;
	h=To:Subject:From:Message-Id:Date; b=XWfhXxViJ411WWasSw2v/yu8yfO9aNIvd0d5k1BiUpjcSkAuAbzaYy4oGDs90Tn70xm3f7HUZTY/4MHodyLqGyGpVnBli6Vwb9Sdl/ySHo14QdaeMFsi+21OWsY/SU0rbaXLFu5CNn3oZWoaCzCEU/7ypjFYv9qWjpFlwQBBVL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRqUFxA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRqUFxA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D709C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749444593;
	bh=TsVi48ExZ4nfnwKgnivEgQ1otGLmCeDIWFfZigppPAs=;
	h=To:Subject:From:Date:From;
	b=XRqUFxA4BFs+lSUqj4VO3rfcw3ESwGOjurZ90hp2/lCPh6Gs+QyddCvIMuLykaLNz
	 /YDPYEeqLzcCVk21Q07Q3HASG0vy5YNPQukuhEwpn+23zat06hbtgUzJl4Zro6YZPH
	 pw1X+YUP+dcCo5F/HconHGTlU/uzQLAVwTJTj4HxzydDCjb5A6bVPH4s6dTOUZ4tgu
	 T42hmdeiNx/L0jcVSPWSCZg2PYITqk0cQ3yiqKjc+kJn5v+/EQ4A/+JCM3wPC/Zqsx
	 MYmnoErXSYZ/PVQhnfd7gLjwWGEMLldf8dPKfMubqPPYNUqY1/975OHFxhuffvOV2o
	 o4lKvwjIwjD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A1C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944459357.18852.14709989906166473690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b132167062cbe3fc175ffbe127f02907d97349c225692d33d55e9c6eda638f
Date: Mon, 09 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749444593
