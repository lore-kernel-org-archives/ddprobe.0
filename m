Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ACB345736
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788172834; cv=none; b=moKqpK7RK46nduAuai0bWzsPhDFnzu58FdvnVZdFAc9QmAGpj9MhKJJ07N7VqC8VRuktYQ3OQMYyhDOQOrocGBsjzShiSDlwQ9BEHpiXTmpTH/RTfLyiGPhipXh1rP8BK4UZYtJEVXIv1FfzRdfQATrlCqy7XSz0lQmosBipPOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788172834; c=relaxed/simple;
	bh=0K1TwLXSp+ZZxjPHQrn1AVWOopnBWgBceDG1devjw8I=;
	h=To:Subject:From:Message-Id:Date; b=fVoiLEDQdRtz4t/Y/eLG2fuzLxwbEg/JOKqAgV5SzFTW73neNYoS6swyOKwmsa9a6xBluceCHJmLAK0tPMcqIpfOtFlxNTVw+bgZX7k7pGbmqJVLRZGj6E/EmP21UKUruAoEA6a137aEvSNJv2ls04Az66T9/uN+XnHfOgsJPvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2fvQuyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2fvQuyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6150C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788172833;
	bh=0K1TwLXSp+ZZxjPHQrn1AVWOopnBWgBceDG1devjw8I=;
	h=To:Subject:From:Date:From;
	b=o2fvQuyY23K8ZEymNf6ym/3pdpDYETAXyPt2ZS5vt/KTejyRKJI9OV4A49datJ+q9
	 OPZO/hAtbRpTqnLeIJAuMlCR32bg/VtXns82ZP5jnzjsIalVtZQh5eBpkUaqSz/PV5
	 fctK6J5oQ5QT5UBZEw9lk4sSDfo5t54ZHCzc66s8MrA2x/R+34Bk1zmQnK3fpi/E4r
	 i9cWQaYOjLvGYUUhHZqVByX9oSJTwWagps2XYGB1on+plDWo9tfhWmRbSsH8oyvelA
	 SAFJW5kv4bCpPBE0ylEg63Wb5iEoPUq5/OQyaFsE6ftLD1nkTPIEgYfwuN5L+P44tj
	 ShqRGzUbnhXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2835C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817283369.16033.13591038053969414097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfefc9aee3719385bcc1170923bf4f289e775b391711e45be8a6fa17afac4adb
Date: Mon, 31 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788172833
