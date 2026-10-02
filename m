Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4554D322C88
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790985034; cv=none; b=tOeDvO7JPCwZW8sV3HjBCUl/YxPjfwhYeusbY2rGVFb+cHNSv31QM1PmEZxufWf9z2eL1eIwHMj0w2xiLeWPNlfTi1m/YI48bwNAkDoQO5gp5Fey2mqHzytXykoFom05LhMO9uTu8hdjI7WqBK/tBfq+uMfTGH7EUlHV9aL+sIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790985034; c=relaxed/simple;
	bh=ssFs8NTVN9Dv07BLnbmbG/HN60gstF2ciMTL1X0NGBg=;
	h=To:Subject:From:Message-Id:Date; b=ZU6FvLOgG6lqT9ch2tYUpXBW5ppWX4MHkexg56DdCpMpKfSLXXBJEh36+lirh1uHf+0K71yBci+mGK9hwIyscrhsh8esEKmWRS6xix/iK5wqJvGRQp7mi+/bTfWLnhHfN+SaAKEhpUPZoP87mpdudPaf0AqL40MyHzD7nw3nv1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfUozfhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfUozfhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB056C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790985033;
	bh=ssFs8NTVN9Dv07BLnbmbG/HN60gstF2ciMTL1X0NGBg=;
	h=To:Subject:From:Date:From;
	b=NfUozfhuMmjIzOFhrbDzX+yZE7NC3H6XlTDl8Dbb7Pq5lJELHmGOxz0Zeh/pJRr9l
	 r5SvF21ouBn7W8Zlpaemlx+e/amyznSTm37IXCFbDuLfWudGMNxT1tEUsjsQDC3XG2
	 ah7PHjokAgns7c3lqYAQmZw7TNMbj4Xy7t8JdVIUSMHMlmwaBlYncn6XJ36A/hOSnE
	 8PZwadmnzQugaobytcTHhAGrqrheE+UHh0wfYMmni/nCcXzsMpKIBN9oB6RluBE4D+
	 oRIqV9XtUJOFfsTc8wSVLOZQtaz+oyHS+2XgakU2+75tmXiKYFZ5ul8IX0J72luCvR
	 LyL3kox6L5exw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9421CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098503368.15277.7782351012883103613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620d745e95fce4f659cf5e83c75a705cb52fbfeee1df059ca61bf96bfaffebe3
Date: Fri, 02 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790985033
