Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621E14189C2
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782991714; cv=none; b=A0y3BqJBtsxksPFyYTOSTPAk+z6Y0wfyuvklY++Yae4y91Mt1rtAm1vPzRYFs5f5XoLvVdX0HZXCuvCVkqRGTm9q38c0vtqV5CX2wV9SGpPQpTiDo5n6+r0L1l7mmT1EF9+nOnuhZgyncS0NN++wWYve6lSkN3wfkrNt5R+S/4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782991714; c=relaxed/simple;
	bh=5a+0vjrNDOmsjXl72M05PziYd39rFqSXWFQX/lO0liE=;
	h=To:Subject:From:Message-Id:Date; b=rU9RMGkGPz/Z89OUhDV8acWgdyYBWSgDWJ3r9wFVq90o1UE5H9/+cU14+GTHP2z9qDecib0lFZ3GwEZpXt/e/j4+LRdsE7tIpxQOOrvGNJVKIfshN6A7IP/njpj4wEwmUGgk8TcMzpA8lGf5xpAwPTV95p3od40jYBhrMWWgjwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/i0wRI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/i0wRI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89EBC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782991713;
	bh=5a+0vjrNDOmsjXl72M05PziYd39rFqSXWFQX/lO0liE=;
	h=To:Subject:From:Date:From;
	b=B/i0wRI0AvgxbxRpdgR0ITZ/TUr7RFgZX2q/t1sX+lMT30Gs2QowAb8SL/BDRKKoa
	 0l9nK9249uJphJuk8CD4MO7ZuaLRzCdd8pnivI1CHJ+zciRlodn/9BH/98UJ5j+FOQ
	 JNiCdPzQSY3l45wq8oGzhTHBBAEn5FGg9RpaulP47gaGb2rz5GokKMua50xqsAI0F8
	 iijqE8aQmn8ubOKlwswPsvEM5iExheJjfOCSAkmAhk4DTW8X4PgMqRTHTO4mxXpTdT
	 49K8WUbYE6mEFtIauyf9BW+Pn4Ag2uTijPq6gNCsqJgQlcsLIRCooNJJoPbPCzErIq
	 JGU++Nriz3MbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E13C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299171368.19734.10946062862992904585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f905b38c5c19799a59764e91e1696834786c22780db70dec78ea7a340823af
Date: Thu, 02 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782991713
