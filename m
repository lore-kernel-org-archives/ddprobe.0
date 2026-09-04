Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D1F4078C0
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788499234; cv=none; b=p36cvoX1SXn70CgecZgF7zpRe1HmL++4uS5+vwtpqYQZ1SraxIvrnmMQ+qHiql77EoQATGANY/aVG7sUP8BFkyAr35dpMeR0TAAGA+ArFXI1jlsNWTiukYg9zvo91TdOCeLxFs8zzI3AwSwoKR408uKUWalVo1WLkrd71WUkKiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788499234; c=relaxed/simple;
	bh=khPxfq1tfoS9GnHbq09sJEpqZGTgEMu5MgTrrNrX1PM=;
	h=To:Subject:From:Message-Id:Date; b=ZnfPAs7EpF4Ehmtmjb9n30/JaspSsAfvPNMzQUluS2tbqcOOY5WYhXch4raIP5G1QwViJxevUiikVNRsj+TrgojDmvnf7UzhtF52ZRsJhizJp6jok+IU+8ekH4aVGvLYKJSIrZTIh8ZvtftZApHHjgbM8yVm1ach51fZS6yvR2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvqw+y4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvqw+y4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C21C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788499233;
	bh=khPxfq1tfoS9GnHbq09sJEpqZGTgEMu5MgTrrNrX1PM=;
	h=To:Subject:From:Date:From;
	b=mvqw+y4Sy7JWdkuVDIVM6Cwfp/QhDKvnkHCf0YhMbrvvtsDXlUzB1Tuc+Fp+lfBJo
	 qfkjx/w7/nD7zB5RzXXurh0ilu22lPbkAwlw50zgmR5cRq3vyQTfCC52RG+6A0jbwK
	 KFZVf0D48VmGGsM4m3AecUuDPwGtSZML4gDWkWikI6anb0m3KvdO6Kx6Tm2ylYGpSr
	 K7bwx5gp570SsgxOdtjx0cPQHP0S1cr8YMZLov+tqmOJNZmkqFKKlSxCpsy3yQwE+H
	 M/pr6N8AK8croZTtsJACUPERnK6qZWp7NrMTByiYgkVnaH2mp+0KffCnxVi8d+MpL6
	 Cl/BBk/PBkTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA7FC79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849923368.21546.5915612928588221169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbc50b98a443ea1321946e3a2c3376738dcf1b11411cf7f5c899a6e84d0cd7d
Date: Fri, 04 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788499233
