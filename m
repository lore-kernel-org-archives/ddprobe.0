Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B84532C8B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790053234; cv=none; b=bvYUZmRjW0DnYv/wevFYk7hlwSolxwG2YatBSGO19TM4rbqQU6QujuHeYdKM4Ndtlg5I1/xLj+b/HAnU3RuPcEACule88fnisIvDr/EkOkhCXrAg5i3fodo14eBXnQVYWIiIEkgPvD7JFAManI9Qn5SKRc7916jUrEN8UOczql8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790053234; c=relaxed/simple;
	bh=P9N2pNaCgd3Kd8ZwFKg28ck96EooY4+u3nX1dgADszM=;
	h=To:Subject:From:Message-Id:Date; b=hDDaSUIFMTBejQ4mgKfLcFd6jTEX0jHDs4RkERB1+q2ghz5D/a50hIS05DduXyQTgsiYhDC2696WdBVXKnqvxq5AIY5yH5ihe8m4KIF+hGMYKc4nw74PrnhPDDyfnAtP1i8S6r19dLXp95Xoiiga/LCwfAJpfNev+v56yZpxgAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/Kj7ChR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/Kj7ChR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14E3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790053233;
	bh=P9N2pNaCgd3Kd8ZwFKg28ck96EooY4+u3nX1dgADszM=;
	h=To:Subject:From:Date:From;
	b=S/Kj7ChRE7nrFBFyc3nVLlAl0QI3JSmNgqO8XuNZrVBDYnMKJUAJTEhuZaVSKI0rt
	 Pkxf1xiiHxeeKbObhXF+FnkJz6TZEhK/7q4yfP8ZVFjtQnmfS43t4VCxxou9KdxFmE
	 F2d6wItZZ667xyZgHnvZzgIlLheM1H76GL5mD7zBDooHGRaEFOs9hXgfpZ3NL+B8Qv
	 s9ce60S/vMO93CjAhBeQsxtxxeD/FT9QHg5gtgxQz8Q07xfDy3eJdHsPZtgj7SlxqP
	 iHOS23dQYL6F8skWUz/KBPYUwTdNJnniy9JYFvDJtYfWh+95oVKyvsL8IKf2Amd+fx
	 BYajP4r/fzCIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC800C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005323368.30054.11758550176421168939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb31bcbd7f969eda2eb3fecf24c22b0e126faa000fe43ac87bfa7a117d58a18e
Date: Tue, 22 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790053233
