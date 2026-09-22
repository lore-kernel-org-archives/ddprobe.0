Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A953A961E
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790050234; cv=none; b=Z7mL1A3GAYDCBVubmVuDbOJtlqOmXCa2si/ktjq+BJipPRM8SCnpcRik9OQZf8LlqyyGsFqu4h0iPvy36OZos93ANDGn15CPWZqmBrxOh3P8AkIc3uuM63IHJLeYO1Ba+9CEMWeseP0kljfq983ptULBZH/5m9VwsmnphPsjbIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790050234; c=relaxed/simple;
	bh=UnyatmI3A4rWdKUxAREPXw7jFdkbyU6CXE5cO7sZz3Y=;
	h=To:Subject:From:Message-Id:Date; b=RCtPYzLF05xVBoFKzHPwfdAShONYtJzgESO1d6DCHH+sQHju8ZnEtje60RWoBFSzfdoOtJ9QQOfCmIIjBAdfOT45rLc3KyiCyiujsBnkW/oGv6EAFXpL7q1A7ybDwV/srd4icEkaOpW421tH2j4b/B9Yf36VYl3bYgd385aTm6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWym3KNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWym3KNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5251C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790050233;
	bh=UnyatmI3A4rWdKUxAREPXw7jFdkbyU6CXE5cO7sZz3Y=;
	h=To:Subject:From:Date:From;
	b=GWym3KNPpXrxKW9XyoRNNwcS/dmZ83o1tQDPqzU2xM+qTiYhauGdR9TtiSZpXfVjK
	 ogAcyCUgmIGXTMklMlx5SzqXwMv8LI5LecmrQb4wIGqKIQgd3UiyESTiThU6Og8MfG
	 aPT2gbGw7SXTWzvR+0r/Q0txqKEjwqT732x7BR8a6cmEGfPkfZiEdkfc5gdyq+q68/
	 OEmb2NePUo0kmIXoG4DDQqX1UyvqaImv3U2nUacSHP7ZoU8lw74u/9UI4YW2jwZxpC
	 S+RoPZQXXoSi4wfJCjIJKRKY+TrW4FA1Z/3UDuJM9q843WeVxQPUwySY+c7UsBEn8a
	 Lo7EPTfpRpEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0692C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005023368.10283.17253569076903802943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8866f3afe1fd28cc3f0b9cf2f70a1c431a89b5befc5751c49c0309b20f619e79
Date: Tue, 22 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790050233
