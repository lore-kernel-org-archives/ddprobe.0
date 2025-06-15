Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254C527450
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749960594; cv=none; b=eWzA8OKvQHrcuw8wiwlmD5u8P23szdZRqe41Y5WuRNvBKvHpdhOiPqpG10t3l2AK2MR0XB62EIFAEIZI77Tn5xUhVwv4rqBpwdbpKy2LHGeaicYvB43THcIK/cI1MKZqnyQou9ZTeIRG32eciXTv6pIMNqdK83odlKffQyBtpa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749960594; c=relaxed/simple;
	bh=lomj/vFyahBGQTovYJF4BAaCY7aSNvu7YVNk6i7Gb8w=;
	h=To:Subject:From:Message-Id:Date; b=GQqbhA3U8GI2LuzC0RpFOlyCIvI9VdcmzY1npHrrJj8OHcWh3pNPngBJL4YZKiKCNJGXBSzmcapS5V5Z5K0Y/wpYsr6/2HCGvJnXDEubpQ5+FbW6s0meUyzbeeqO/ac3nRKW4ASQzIY/h8LsKzVWSi4oboxpOFPgRjIxc6PiYRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW44YhZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW44YhZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE400C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749960593;
	bh=lomj/vFyahBGQTovYJF4BAaCY7aSNvu7YVNk6i7Gb8w=;
	h=To:Subject:From:Date:From;
	b=IW44YhZiXeki1JLIE4s2bvVRLQ+B0RKkQe0qn/jr6Xn6EYzmSsBWr6GHoU8U3xfeF
	 A+uyRJ11HvKD5C06M+p9Iumw7Q/HWq61x83p0AtmC0j2BdPR4BbxJ4amJJsl3KDJEQ
	 lF59W6AhtD155tMwKuT0LhsHYW3FvQxxMtNeLuhcCZpyiVooOzNvaXdXE6I8hW3XKx
	 dbgHRnDJ6rirm+03PjnaI78LVV8kxmUp2+21o+zbRh7D+UImZegEQOBvRgZFhC8r1d
	 m9fL7NaWYj7ZnRcQzR/1N6Rt1QpumpAJZN1hmPTVYTi9obFT4t5vtf/4Ne6mjoTpi0
	 eVckdAd9GohEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0EC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996059358.3946.13733060452059811850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32a7a651bb04373ec8485c08b6673e63265ad76a2e5855c8c9a20e816f9c7ea
Date: Sun, 15 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749960593
