Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4AA3E5A2F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781808994; cv=none; b=tpSEwZ5jTMn7nBU3tr73zxUo/7XxnBHs4KyPCgoLBEpuz3TwLo/zb/MB514p22TQ7uRouQTOLMxOyOF3HKR5q19XC18lb1FC752etScf2SeCWVtJDE9Fo5ZMMy/Nwz5Z8grQxBBuEm73LCI2TQ1e47svS/Y4ZvtiS2Nz/Hwezxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781808994; c=relaxed/simple;
	bh=K7UBVDllz3npn0oohS5/ARx6UVSsNncLcunxb6YYBdE=;
	h=To:Subject:From:Message-Id:Date; b=rIkpJ9onkZdPL805W3y3xL7/6pnoYQzADHDHEyWfEvbJOQhgj6YP9duvwL9ureCIGD9q7buKwWzK85D+LpcCYeBZlk4l2FMxleLIuaNXjceds8w3wNT34xWDJpf2AZ/eljWI6Q0VZLiROe9JLhO3PT3lvdhV7rahPpJl6GYW7s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0V4NRY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0V4NRY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94B8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781808993;
	bh=K7UBVDllz3npn0oohS5/ARx6UVSsNncLcunxb6YYBdE=;
	h=To:Subject:From:Date:From;
	b=Z0V4NRY75Q4f72YGIGXoEMIsNARE3OahsG0ZK5cr+y4CrY9pf9Su6OHj+B6H3tAuK
	 C7W8UYp6UpheQ2dItakzTh0Sk2OzkqL4JKtrwbjn6zjeZ24uaBPETYgJUEzT8vTwyT
	 f4pg/NVjc1fNLC/u4uCrOYA14E02VFgCEDdI9rudI2MNyP8vJZPU8X7j2bXhBrnnDE
	 5lPu4pDfT+FriVhTHhZC+TLIls1QcGDR5ELFskC5w4RFOnazJEjQLraSz8eovjS//g
	 ie3p28Wde+42LtAnl7bM0W3oo/GMiV/w4C/YXljtAMj1WL0efxHgNQ0kDXL5Os8agL
	 CxZH1GJUYu2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC154CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180899369.13414.8862068474423990751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2c9b6f2227ca2e1861215d05eb0be117c188abe912f3b8bc25c0c6c32e9950
Date: Thu, 18 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781808993
