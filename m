Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9A13254B0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766375034; cv=none; b=UWPPFT6Xbai6xz1rdBKJZ1a1nchBEgbANDqensx4kIzOGaAXa+6Ov11Gj/110ieDL5qBccE1VuuS2OSVjeNsXfQWIAjMYC0O0Ph2EngQ/qS1PHmR8DK5O3tGflwziFgLXcNERptFlE+3ruIkqbr+t6CXuC6dBKZWT6ltBzL9U2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766375034; c=relaxed/simple;
	bh=CaYuMrs8aAr8rkjZivbIqWnSWPbSfTVDo2PMGv2esDE=;
	h=To:Subject:From:Message-Id:Date; b=hWUHYcXEFvSi2rIQ5odjQvnRSL61xzVh14bmoOHbWYNqlmhHK++IHIGoKe3B4ar8EsI7pBN2xSaAZ6fn6eiqAltYs4ofZvI4CQAF9P/ZHm5lS+JFpZQLO0fMhpz9uD5Zggrlw2W+gYV+NGXn5ANkxgwwGVUiH43SthZKXpKwhZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxep+czM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxep+czM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF5C113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766375033;
	bh=CaYuMrs8aAr8rkjZivbIqWnSWPbSfTVDo2PMGv2esDE=;
	h=To:Subject:From:Date:From;
	b=lxep+czMZyMIF+ytM5idLIIWmHelhF7GrPfazESpdPwNYvfUPmW3fv69ZY5DKn0/i
	 +MklpKsXA/0dat4g7UlOn4YCdNqj+AJL13+wT5CYAy3FpImcujP+fmIbMPjEBXzSxq
	 mUOv9TqdI5ygU/i1XwNZ2/KN0aZXWQsyu6B5wYMxAxG5RrzWIFt1vG5SgnYofi8n1Y
	 biva/PMfzbWRgzvfSloDGsL3q2ZRts4Hc5oSu61U3Bl7FGBs3wD7F90Q31B0EIlII5
	 nUoQpVDQzIRl1jbISPeNigES8PTUJ+BOncBq9Uky/4X/Uz68zKlQnKjPHGwocJJJvp
	 O/K7uZKX/NadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CEE67496
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637503357.21856.3152513035614265243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c79492eb41541efb8e5d416b92b5902d2f1aaafd2e3a9fd6591219c1af9474
Date: Mon, 22 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766375033
