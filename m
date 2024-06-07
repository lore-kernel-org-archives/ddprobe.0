Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE817BB7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717794443; cv=none; b=SslsqDUvoeMxlY7WMWYQsQIAE8kly2FntgC/GCAcUS3SU61AEJeknpB6+QHJwtL61tpVRXzPB7If70BANchT0aSwnxzzSiQlx1/Hnf3SF6a0QPGa0ysHJzMhVoLZJ3hhRENmNkaFTA23ksHHVmeG9r7yCkj2VuyBV5ev+dV6LIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717794443; c=relaxed/simple;
	bh=WxTzknuZ3IQwazyGN1RMcgJzchVnvJmVqRAhkMqpemk=;
	h=To:Subject:From:Message-Id:Date; b=OmbW7mz6pavkHq0tvZi8/9+mXrfOuJJqbEo4FoulfIrcX5ZyGVj/nLT+VmI7ES5UcdNWEzOephk26LHUzcwnrvjH5TJsIZjkLT7YN0CkV1c1acOaq0O8qJ46aClnGQYRhQh7/KI2wlthAPmlYqr+KAYABQfE8xht+SboXQR27Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdfiFY9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdfiFY9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB10C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717794442;
	bh=WxTzknuZ3IQwazyGN1RMcgJzchVnvJmVqRAhkMqpemk=;
	h=To:Subject:From:Date:From;
	b=hdfiFY9sJ5Sq/+KyRWdnoTTmTtUa5qJDVgKL/lOu9SxNc/niDSpqwKm3HtQ52j2xw
	 jxJHVtmcq9O/53cLuPenAt7TbBQLzRL1mXk6Xx4DvWY9HkxK3f7RDOr0E4tE7xO74k
	 rfAKvvItbFDiqmiIRN/UC1bewfi37XKy5AYSojT5PbUI4EdIyy4hS6Q7NuG9mYn6dJ
	 ZOW3I+rQePoxuBGKtVehADACf0BIWN3z3NoD1JVnfRZ7TmmuwD28H/Tete/9evqcP8
	 TK7KRwBSIlKZjaSiNZjXlGIaSbhVExWnQVwVARMBuanjGk5rO/QX83FbOryqsYsCc6
	 ZyvZiPm7njdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFE2C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779444282.940.15375042411149664030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7bf37dde151c3f276e6dd8ff271a0d7f2df23cba7b1bf3dee9e2522cc24fbe
Date: Fri, 07 Jun 2024 21:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717794442
