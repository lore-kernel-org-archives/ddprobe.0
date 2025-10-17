Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43E222A7E4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760713193; cv=none; b=cNnaON3VkiE5tHTN2LCuB2xyD7U8wjfev6XS9+PFBXLB3ahlKHoIU/bTf4zpw4omdZCxZZQzFw8PMHxIlheFyqSRS+d+Qc0lhwKM0au55kW8OtEvLOBDqclPreyhfoCfuC4O3+K0EcDBYrzUeQHIhTIJ45r9wKNrOX7LpukbiFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760713193; c=relaxed/simple;
	bh=sLaOMkQm22k7/nZCpWmEuRYDkzrKtWgsmE1TG4XZTPw=;
	h=To:Subject:From:Message-Id:Date; b=soNXntevBzpD3MTpKloPbkHC2UbHdMjCfSE5h+PNtPL8J76t0eZ8J46MQ2TGl/H7asFTcpHQCL8CmJJDBhDJex1LRNAC5MyBh75eUhPp4+kOmZyLoe7tuS9sd2FOhqaunBHX44zYTI+LHEkKwyb9hSXxY1IdvITJhytumM1Fg7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gICrIYcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gICrIYcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D75DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760713193;
	bh=sLaOMkQm22k7/nZCpWmEuRYDkzrKtWgsmE1TG4XZTPw=;
	h=To:Subject:From:Date:From;
	b=gICrIYcWkepNvwbdXUmfSfgkWDIQTeR9tI6CA3yjdOECrHbM35/ZVO3HYLyPr3mef
	 jkr+4lfbczQsXN1Zc8goqCa4GMF3xEhAZoApm5/HY+3oItgGeTs+5n6Fr8PeohwVgC
	 NTufle9vKspE0SEDQIetSh9C4LYjX9LDHE9lQGhZEUn9tQWH1fP1c1LlpYht+X1Mo2
	 jMl2koZ+E2DtaPYGImCLLE+g7G0KoUHLr+1YkPsseKs4ToAT0mlDvoe//cQT+XySX/
	 SUH0lDCnih+Y2VhcRoRofZgOjSq/z/SYmo9LdMnxEuDWqnfQ20PIdM/p1MUOhLwT5z
	 AkvA+IguupVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83FCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071319357.17143.16239070506581451163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe07c8da7364e67fe44d93257d58a074752424c9644b0b2828174c39216b7a6
Date: Fri, 17 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760713193
