Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D579D3B27D8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789572034; cv=none; b=ZqNo27bxmIQHr0yRT+VQsqWStuvWwMnW0eS/9qTMeM5rOAsuRrdxs2vZpJ75LSDKlIuNxG2S8qD3kN6GDi+D6vs7cSBltFZdLtnWhZHRtVAZeHK1MR3SGQTe9dDhBVT3+gDAa98ObmsjZKhthX3EAS1p8Q/wgXfx1P6pmgIKnd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789572034; c=relaxed/simple;
	bh=+O8vmjH+ve2uJVyWYusCW3X0LUEkvHlK3gAidaWacGk=;
	h=To:Subject:From:Message-Id:Date; b=W81jozC85n8iJ4+qNmA4bf2Vl+Troq6nGAcYZ+aKC45UrYI43Pe+H7e2NlbsoXkPNLg0MJzSCJGxlangtsW7WMMWFP6/Pa6n39OJc1sha++RdOXC9k0y0dDpOu25jrEToUM9RWTKqEjMNwkumkIqr411pcXutgydYj/LbX8SIVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9M5H8Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9M5H8Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3557C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789572033;
	bh=+O8vmjH+ve2uJVyWYusCW3X0LUEkvHlK3gAidaWacGk=;
	h=To:Subject:From:Date:From;
	b=u9M5H8IwWMCeUANcntdBJi6LfjVl+6axv85OqsuV7zEQBfurFPWxqIZiHIiIxoWYR
	 Vg/sduYAfuc1uPaW8JI5lQq5kTxHm7SUNZ80kmvkVvx/fPO8YIar0Ma8rBgbXnvBx9
	 eYeXmBVvqgQA0TpTqhv6l2fKcwg5yBfOXhCJW/IrBFc45djZO5nFXkkljLFwqZi3mx
	 VXK1E8twOlfrhOPVdTfGNtqP6UrhtKodFl+o80HGs9w2qAEzwJ906bcQx/KmoUgceT
	 QE6xUCkUVStLpMfICvEIqnd/DM6lut0iRBFWv+tz6JVjG6A+wVkMj0TSt6kO4nhJ1q
	 TgqrN2MyjZyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED13C982C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957203370.572.14602412534953607108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffec747d88bf85aa1b2772125f32702853bd9e714e2f3b6cffb70620628f4e1
Date: Wed, 16 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789572033
