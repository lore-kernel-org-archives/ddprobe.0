Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F9F299A84
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778908234; cv=none; b=LGlABOjqf5CXZsn026JiaTFZF79GlmjmMLSd8RfQLnHKULg7iU4oK0H8v7wybRL/bKDvXI82TiQQshNNwqtdEyJGoTo2MCHunx/12uGTyteeawVsPPY6h4Vf+pjkc33oXyopyNtqMNdWn9NCP7dYnbJR8nBXcJzw8UUqmFyfRIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778908234; c=relaxed/simple;
	bh=LeMJrvtjypsi9ALkfEdCaqD5QmCV1IG2rRNA4Voio1w=;
	h=To:Subject:From:Message-Id:Date; b=Chxm2Gw0nACOQnHl+aTD/cm7ZfyqhSeaXtaG/efw/Qp8rPewX4jt8YvVxaCkdzMbxJxeTfGNJh+z8IkWUiIMFZ8GpL3BES//SQ0/3e0kGU3O0aSCipzdhVl7i7l1cM4M9nT5Jjllrus2MGpWcSdhjOJZh0PrC3k2agdOGiIAHeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjAdmJT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjAdmJT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1EBC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778908233;
	bh=LeMJrvtjypsi9ALkfEdCaqD5QmCV1IG2rRNA4Voio1w=;
	h=To:Subject:From:Date:From;
	b=jjAdmJT5QXr6edhgNhItnZM9yuGwLn7+ikt18A0mYSiM5r/wSymVQmf3V8g3M43lA
	 RlS2llFZe02KU32gAVydJXp0cAC+S3uC1EerbVfPo+pXFSm9XJdztZqJe9cjb9Q3sb
	 3njKlgnVbX05ienatYrQNPN0RelpfDehdYAFScW1QBmoOYbmFqOOpc9YOVzawcI2Aa
	 ubjMKlZWeva9iHVSNKe8S1CWIL2Xqxls4hURBf+zqG0JGLTwGKnP3zoz04o0svntPY
	 Y1LV+syOtX9LJhICbwUZZVDwtx1GJaP4iW2Ih1sMNq9oIVaFVvw5R0+Phbg8mBzIcC
	 zSp7U7n0zCHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02B7CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890823369.1380.14929882096310358354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edb8915eccba6f3c4629639139621b7cfdafee115abb367eca5de41e671cc1d
Date: Sat, 16 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778908233
