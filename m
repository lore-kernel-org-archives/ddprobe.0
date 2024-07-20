Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4638F148849
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721499955; cv=none; b=gfjcIGRTvex1uGTqR5ZXyIiyxAr83q8imjERXO1UB2jP/5WjAdtmM5u8Jqdz/6k2j2ZL9/oH0NMTDttzhQV0zZix6tfwXIaEOUmGKJgzo5HdTGpbLXcyA+o6oDpRH2QfKwyfEH/NgGx4/fTKnSjlE1azEvbOl6TuTgVrcFi+Z+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721499955; c=relaxed/simple;
	bh=4ZbGPzoutT5sxa2sOOfx0iE4o8m4gkrsObGP42Q+ijQ=;
	h=To:Subject:From:Message-Id:Date; b=cMsquMmWydS/U//wt7cfhSDeKyKGN4C+x7Sx2UQ1QvreHh9+Gt51sMlz17iPCfmuoJ4LyuRS+M7m/nygMjfU6/ZqBrVDMBv+2HAeOKqd2RUfktyZYvKWqiX/EbC3OJBWVwHh/kwXw2AXC/Ox3gM9XI+R1s6FjJjszgAP7jZg8UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF9hpZY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF9hpZY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD70C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721499953;
	bh=4ZbGPzoutT5sxa2sOOfx0iE4o8m4gkrsObGP42Q+ijQ=;
	h=To:Subject:From:Date:From;
	b=kF9hpZY1tUFphT0IcPQQy7NyDOgrILoJY34XgMzm1j0I+8WmIuMIZ+SLDub7tw6z5
	 RyBCMebMDdC6Udvbr4Vz32VY2up4Arv3rERKXI74Ye7KBqo8Tztg2ZwPNlnnylu/3R
	 5GLNdeOM86biSr4W/izLuB/2K7ABV0gRps7lKOlvjiAgQPufQWrmOkbu+hJU/3lomE
	 3GJZu3F8BFelq3JUc6ih/psDLFweUfm9m+777zDbYOzL2HuszgIGTaDWHBeLJsobPe
	 FvwvmXEdXdA0n2cHFJuIwQJsPbRDPvQTDOR7ZRqBczqiEII1+mjynsQzeJoapz5/+6
	 f9HVerjmuXLhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA534C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149995364.26492.13378615866085965222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2af3a424eacbb9b327173347efd17467591acb8a06f21fb73c7b44e76e6882
Date: Sat, 20 Jul 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721499953
