Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246CB391517
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790062234; cv=none; b=YFzgw9oWNfMYcyigQGe0MEagjV0aOhiL0XwNYsU9S7ebwy6KhRO1Uw9bZMWQKIbv+1MGTW6AESuuNu6tm+6ythy55bPFI+J9kMlXy3AYndfoZBZj+F2lfPWMtf7l+wlDfqR6+MhUC/dbriog7XQ2f1I9EYlh9aEM5HBrhXIzcqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790062234; c=relaxed/simple;
	bh=0gghIkZUXWAWvax4pqPKaC9ZRYl0yUlMpVf73BjDfKA=;
	h=To:Subject:From:Message-Id:Date; b=Z+fTyPIfvCNdmhCgrUOK4+AaEtNM6D4sZrxAO9H62xp7ml39eBVFxTKJUvJ5UAQPMoOaX2rfo5QvUfv6djoUy3n/UEBvaGRTXUIh9lsKD8F7PTam2GvRQuWpt33PxN2qEcNYwhWkllOyJ3QY+vrfP6ZBnflME3h27vzAh7bq/Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF2owtaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF2owtaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ECFC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790062233;
	bh=0gghIkZUXWAWvax4pqPKaC9ZRYl0yUlMpVf73BjDfKA=;
	h=To:Subject:From:Date:From;
	b=lF2owtaHyucdjOdZU3SoMZoTN8YMZOf3jCCZzxJSsbA+gSamFyX1z3Lol//YIMYaJ
	 3eZ+EM0DdXeJ3KlIkziw6tw+MluW+3GPoif+wtgx17kAsOko2uNEyBE/fUtIB4krrj
	 J0tCRZVSfh+9DMvkrncRoNdjWY83YspxZSZ4FIDndCRMSQ0V3Ld+KQofU0+oHymbid
	 NEsUIulcm7Q8SicTyFMfld3D83UmPnNFYLsIjV90TS63O2TjXthbuuMI72NHyKZdJa
	 9l3H+eq6h8e+6gtPtiGa365xLQKC/CL9hwwrxW42pjGPoUFVWcUbqjDcxEHwjnXr+J
	 2JhBTu9DhhoXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD090C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006223369.3412.11175287953618859076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dd08300365decc5eb88d06657949c9af40cead367715c7fb76b66eddbcad08
Date: Tue, 22 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790062233
