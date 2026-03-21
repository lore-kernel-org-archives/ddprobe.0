Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D39221FF30
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774136094; cv=none; b=ung5HMpW3GFH29ylfqwiaH414ruuTvjJtORllhJtf0iVqq2iYy65hhE4mJo8ty2USciyOyJWdPXVG3h3Uhfcu1A+aE5E4UzFjckTPu8IV7g9hR0CY+hYg8wsPymuZhOLgyd+2IyUCp8CRmsdwfUmuRMvefoseI+Do8SGVzH2F7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774136094; c=relaxed/simple;
	bh=fEGiW6RB0nJtyr6oy5Gw0i06Fsz75AGT+0EdIn7PkSo=;
	h=To:Subject:From:Message-Id:Date; b=gh1A9phDbTHIVbGHLS9qXas2nHwJ6jSkUss0KXsbCA9YEYpYyO0RKYq5sVfjhgipEh4Xe8od4lbpzcQvpU4YxPYlvzB/vGf7r0LE0ufdUO4KVee4ySV1zu4lF2uucnCb4bJSEJGR6wVS0qTJARPtf6HRQO7lJzxO8Fbdl35i48g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQeURm4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQeURm4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B1C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774136093;
	bh=fEGiW6RB0nJtyr6oy5Gw0i06Fsz75AGT+0EdIn7PkSo=;
	h=To:Subject:From:Date:From;
	b=oQeURm4iuSiPxbDq5nJfNl6d9NwCyMm5dE4PY2xNNgZ2u1DtMkCJwfjQU3RYe0L6u
	 KLINlJHoWmHp+egp0e1Ftmk+2ksbKI4lrcHsxFVAjEKGoSTPhcHw1MACEDAV5uL4eo
	 veNmZcavIZNA8ZiywXv0B2fQ7fgXuXgu9lmAl4K9q/OvauAk3jgBHUx3cqn2m7Fpfw
	 mtxrmcpuUd2HFpO4leYfwsgl+HkOhh4JKML7tarpZDdnp5EFxorRX9NgYfUtRP7cuB
	 +VY2Icu9RC3dgY7LAgFXia9ARRjtTl0Sw89vIdIQb1TbW6yGRyCIgjLkNK1Dj9JKYi
	 aE/J0atxksUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353F1094481
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413609357.24270.6768888970535543986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7f8c4d6ebae45db13279389e5a8aff58cef8290c80c17e851ee8e6b8af0071
Date: Sat, 21 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774136093
