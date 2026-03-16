Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1C7346E6C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773639893; cv=none; b=kyqu09oDTLNxITF4YlM22sGAEbD9qq0gcnZg/vckzNWeQ00E1xNKjSVvpDCAZ+Y+vyDGu23uP13Cf5C9QiWda1pPUtanrkv+BdE4uDIm3XItzyDCfOmt3hrchUAzNPhd1bXiFWRS8dVGUFXetGTPoJWE7obvAtxqShIZhoho6bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773639893; c=relaxed/simple;
	bh=D+uIq0Pq2DioakFWtIvy0UPHvDIBrhMj/AzfuIvdGBk=;
	h=To:Subject:From:Message-Id:Date; b=ad3DQruOdb7n7eGqooN2jWldQ7X154IFakSeh7epwx7XIwUxAYsyLlrdKixTcde2jN3o1abHjVRQ1L3zcfeoNcaN9w1XHBCiz2ykpXM7zOB2gEJ8+40137PJFZ2Q/pfaXhwTC+2idV0j6OxUe7+C3pHCzFr7Sej1jXeGQaLgJB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrwXsek/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrwXsek/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D57CC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773639893;
	bh=D+uIq0Pq2DioakFWtIvy0UPHvDIBrhMj/AzfuIvdGBk=;
	h=To:Subject:From:Date:From;
	b=TrwXsek/ffLYUo0Q8PKbl5AiJ7CyzKFhJ6Nss/k/zoo5tBQvokQHlHbN5pjDvGAen
	 +BkmL+FG9GOCOItA7DvhAFGbR/y98/EC0iVrFbsZaGoqMVtJo+ZI+Rg5SDEaOyZ7Gd
	 ob5goJBYkqUIHYcFusUxbLb5GbssssOvjY7+24fhZNRe5443htw8zxLz2HXJKRMgud
	 vQnC2q4wZCX6GWiptoqCgSlxHLjNIZUsPKM+LpTNyxtV6HbfrKfi6gv69CIBguHT6L
	 TmEq2FcChGlQ4FvVA4dbKOPopplqtJVa8kS5wBUAQjFzAT4vqyG0DlVGCMDFjj5rqI
	 wMpx2KDKKJfsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A4D58B22
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363989357.18392.11266946397412536123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abecc2373edd47538c3f870a7f039851a6c09c33b5393ede9a498bd2fcecde17
Date: Mon, 16 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773639893
