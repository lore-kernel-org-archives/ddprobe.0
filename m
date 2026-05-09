Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96BE218C332
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778320054; cv=none; b=Am5+mGq/whtTpsTzUFM7yOp6kKnEHx+lrZvb7gcnhfnUuvB1l35F2Qoc0L1fyQUYnJsslGcnUMQ1JVE6nr/5CHAr0ES0jqoQ+lw4jTL15UNIFRn4e3BNuzlT5oQTXUyJBupFDmtzcsTEVyKw/V8ayJvjUvz4yREjy6Z3yelEtiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778320054; c=relaxed/simple;
	bh=YMdpXwfbB/DRpO6gfEe/TvMJ3f8k+/LOlfclgxJeVfI=;
	h=To:Subject:From:Message-Id:Date; b=iowCvwD5PXhdbWMN9zs/mgA7PkvB9ffGEYpanz08ZWI6vmnGq5Y2f9WbF2krfCwVNeBO+GkucEIorEvFpKaRKUkjgKCjeITvJY3iqsMeQNbTApM1t8FVOni6hmMx9NXqZms7xwuMzo+SA46d7oblvcOdKy7O3SD7eYft6Mc/mc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbpfjlVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbpfjlVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D3F1C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778320054;
	bh=YMdpXwfbB/DRpO6gfEe/TvMJ3f8k+/LOlfclgxJeVfI=;
	h=To:Subject:From:Date:From;
	b=fbpfjlVVpXXs2+BRaKrSueCFWzkxL5bec6NXB+Nncya0HDUE+w6Ar0W+eji+eHk7p
	 TDkIjEL/MO3MEEhRGntGptBkjVbvx+m0s9XqeyTZ7Byzblu2/V3ulOg02DDINUvAYh
	 UQM/y/19WXWBJVgAT/JBKZnMaHc1xmaLW14xMzNcDevGBuWYKrnE/Zn80zP2F0/QE8
	 LIiTIt/UI36vz1x7w0NlB5mKBhlx0i2Xg760JssyFz8T/20Y1vflXGhT0V7hN+cqb8
	 QctLRXLIqjc/+d2xmWD6KGirYYvPMSa1166f9mg5k23IZBVm7XTw9npU63QOeE+4wW
	 7w71FcI2NkpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7938CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832005388.8535.11681728225963989387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcb416b7c58368626191af64bcdc5c9e1a8d47b23b5d9c22429d31477b75535
Date: Sat, 09 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778320053
