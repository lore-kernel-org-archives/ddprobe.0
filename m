Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FC3A1E77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766714634; cv=none; b=rh+Lc+hOx78gUv8Y+L6YW7ixo/VwNsXdi0kG1q2KQI7mvYMef48CIaVEWU1TuhUDdC1cKUbB1QsBRAkQH8I3Gws74sVmg81ttqnzemefAKWnMs+O0g9ZnnPbm8I+EQ5Rr+fU4gp4SMX5pZDX0TPvpiIZBqgbxDQuOewu3+89OTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766714634; c=relaxed/simple;
	bh=c1LUQGWpEkJUaAblhe2xO11Y+hNM65ABsXfySfZ0SqU=;
	h=To:Subject:From:Message-Id:Date; b=CJdY8H9kzt76ce0y4POOLEIb7fClTp1GjaTEaQ0XheZqGlZbmfkWXBKatWK+6p3pjSr3cJelWBhojv6zyTg+/QX8Jl7unSKHonhkpOx6+HqUqPtYdHT1RYkQQ6CrvQP6uL9NEU7oqd444khkpL+xNLkQBx4/v1HERFB2ulw0LnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esn+Uc9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esn+Uc9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB18C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766714633;
	bh=c1LUQGWpEkJUaAblhe2xO11Y+hNM65ABsXfySfZ0SqU=;
	h=To:Subject:From:Date:From;
	b=esn+Uc9z+MGUXlSvEC/7DfmejhlLlhyV4I8QkjL5ELw988TYMHg3cySXvidTDYuM9
	 jtsKiyoaxEuOU02lE3jZS5C3IKoMjll4Sd9WK5Rvha4GWM8QbayoQtgmDramblOz5M
	 +DREa4T3Vvxgnmgl8AcWondMgg/Rnj0m02Kzaz/ZclgheV4hLrJvgd9Ji+YIc9s21Z
	 /FF638Q4wMTj2Uv2mHH+9da8K6FcxIrjjP5jG37zzkjYGqZO3PlEJrsS3LsXuJ8qsY
	 zdFSQaw3Z6W9c1NJzuKOAtE8sPRS6f0B1gz/AHkmJtWeY4TXsiOpcROVQXfwNEwnHO
	 hbMK10/Ec3Utg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901AE7AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671463358.9692.8324552802698351479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3faa20f21dc7fac176093c164d6bf866d38884c3ea9bef051426a621c205632
Date: Fri, 26 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766714633
