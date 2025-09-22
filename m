Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D072FD1A5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758575394; cv=none; b=MGe5/js5waVtD95XWMulnMUn7i409Nl057otCgSG0p8HmLyXf8iJbX3WUY/xH8s6S/s+ak9T1l99P00eZWFcaZlN8d8au+1Ym/ECKLivZelKOXdTklyuWGCysWVqRbPOas0Z0dftHVvVEqaJDIwKt0NWJt7Py4Xlv8FX9MbPq+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758575394; c=relaxed/simple;
	bh=BCa6Eu4wj0m1H2nS2Qd2NuwSo6vl6fwNguwxTCww0eM=;
	h=To:Subject:From:Message-Id:Date; b=cQ9vVjEuyOaRMok8+vb/5ZE02WPt+EI0TJKGbwpNMq0yB1TvJEKVOBuUwuE3FpxnloOjyVHb5rFF96Iy6TV22aQazGBzPxYTcGg1mQ46i8xX/hr3/c2lK+5uJkmxdroxFM7bNhCjsNpM6y11zbDyzzIDpa60FT+LRKSOygAwTOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHqZixuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHqZixuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3BBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758575393;
	bh=BCa6Eu4wj0m1H2nS2Qd2NuwSo6vl6fwNguwxTCww0eM=;
	h=To:Subject:From:Date:From;
	b=sHqZixuVobFlgRPKLPT9T49WLa5bSlVkBe+NS6OIU7sO1aSeJNp/+FYcW/FYj704G
	 sHT8GA2lfgxbu3YcvVakYkwMJGgv/23MB5YxGLMHnQgccHLOtID63Pd4WnmAZZ4fKT
	 mCsTy1nFAMUxC75aVr9S9+IwkCC2oh2yen0QGl0ZAcWjVDkqOo6eNxNfx9hRVDMnIP
	 p6b+Yzpb39FFmibwnR1g/0HaQ2FgIQKL8RuymobcGjqjG1Rn5Q4vQ0EJnSVqSZK5UE
	 sE9OjeQXF3JV3s729hVNgLTDQX/CHdeyDY6wwAjyqh0kFUaTrm1giJYHOnyMRuByel
	 XLGDmScV2Rn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1FCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857539359.28367.10502533632426830537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6199f8563dc5c30ff8db5aa9104c77d2a48454086706b3f300c590d75c031f
Date: Mon, 22 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758575393
