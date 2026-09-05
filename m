Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E56F2D5408
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788579634; cv=none; b=O5Rd9k64KKCGstUfc49oFzw1KVm5FANZffJFIXo3TkkekpQ56tCunzxXhi+eGW2kcKGt5KLKy0X9JEz8qGcDyy6xC+fUYrmkzQfBX2841EocBE3UpNdFmvxogiUzQfy4pe2kzo4AlnmkSFkfPDzoUyiJ+hBaL6DJ08y1vGAd6Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788579634; c=relaxed/simple;
	bh=wnIy3DqnrZzjZTwVAyaJgM6JwmH5DkKbULS3DotEhH4=;
	h=To:Subject:From:Message-Id:Date; b=Zyyt9kJvGouEd/i5J60gK/I7VbjjdOVrP8UbA+PHhMsVQk7CdzC7xee01huf0AcIh9ttQtgIaNtMre9Wo90V83SYf5uMORJQlONjHcAHhqZKRkiDR/Oeq0QdqTvfngrK2AA8n8j0WsoECMe6oKPLZfXAKWe1f2+xT1IatLdE/3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE9rJ363; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE9rJ363"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD91EC2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788579633;
	bh=wnIy3DqnrZzjZTwVAyaJgM6JwmH5DkKbULS3DotEhH4=;
	h=To:Subject:From:Date:From;
	b=VE9rJ363LqWHkL8wb3lypflXCuchAOPPJHDpSyz4eIDnT987+byoGF/qxdQ2XJ1mm
	 H/6ABLQhQ9DZUDY6ODpxbxahWX0vS2FztleTyEvB0A+lm61uvQ4/UcCfTRua6UvPHs
	 rxEu8q++5NTFcuZIUNHvcQ2gvU4Sw4K6JoxZLEdXs1fuw4fEWkML32zlTLR7AD6pn+
	 r06UM/IYVQ0B7J2S1U6VnkaOQShKnZpajf/G9uGB4+gc3NUJ4vyD/IegZXLrSnmtTG
	 khtFaEHfpqTUM4A05M7gAm5EGe2lu/rvBg5MZWbzkNnDfPnnwOY96h821ZIOGJowuf
	 uDniaTqlS8hWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8EC624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857963369.15354.11655443509977948821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca44dd119b749b3e8ba268da37c5aa3f6642d53f56424a801dbfd95889e920f
Date: Sat, 05 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788579633
