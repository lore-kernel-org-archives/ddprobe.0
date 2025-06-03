Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D731F1531
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748981394; cv=none; b=u5vfVV0YTbdOktL0apqC1M3zBwnOMTPYxurc4cEfQj6dMgNf3qqlzgq38AhOBZH2rbL8H3F5shRi+4K2Skkqzyrf6yflU6z7JfI8YFpBjJ+7SOzbHp+WduD5XwjbTgFhMl9pKZm3EvVRezf2tpzfShRu9H+SUKq7cbc1F6wTRy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748981394; c=relaxed/simple;
	bh=/FlHe5aflf/FUIbwKjwoOqSwRx520zkelPb7BE7I1ao=;
	h=To:Subject:From:Message-Id:Date; b=dj4ztlo32WjB5mqfozVmB8OEa0KdFwaZf/0X3kcCJdsR/H9ENOeoPFwTGVtHW5UrGisoICR0iifKup8SmtADppePxnb2+9acxM0aCoWjw16Z2GkUOAR2+Oh9ByGCzZ8Qq5VjWJHp7t/Ypogo1durcL5niQfJRf7Krvo5DslzPd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlQ9ApBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlQ9ApBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748981393;
	bh=/FlHe5aflf/FUIbwKjwoOqSwRx520zkelPb7BE7I1ao=;
	h=To:Subject:From:Date:From;
	b=FlQ9ApBlVLnnw+mlSoM+i2KyfLyvwIlBnXfQ4k16188Hw7FDILCPD4Z8ZADCJfiat
	 I0nvpKwC04JiUmq4RQCOti3vyv9MBtN6+kZcA4bvDXFjZkrLI+DE3M/wrg0bD0Kikg
	 P7BVEopAMRmPAwE0QXxCQrUxRT/vle9IL+5btbhToiFdr+V+7321ybmXZ3j5TRbZDc
	 gVZAmIsu/35HqsGr3ydmjpj0DtTm2Hrd7C62q7WJDiLt3ECu1lcSQLyUwBLOsv8cRu
	 FcY6Nxu2w9DaCo1tt7ahX+vzd/ynjc2I20qcS015wnHR1pL80iFTbEzrINtRu5swT2
	 sw50HSVzB8gaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90467C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898139358.16166.17222276648411938303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6c78d537f08d81bdd8140770b60188318bf2f92eb94d5e6aefddb9b30a2792
Date: Tue, 03 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748981393
