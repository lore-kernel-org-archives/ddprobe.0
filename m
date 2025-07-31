Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBD529B8E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753957194; cv=none; b=iexKCxS4/WXjKhxNMEAWnlSf9TnVHLPydi58Pt97xl90kpLonaY55t3ktOOhOqsIRAyppNG8ZqffPXIzk1zRH4iA1Niv+tr7eNne+CAv03eNMRvAJ1CmsvXJ70iUNIlfMTQQNLEjUlqLqjEW2Mq/aob/mjTb+jSJfg/ajxNm+70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753957194; c=relaxed/simple;
	bh=MgRWUimJhVLMuI77Jp2VhTVheod62dnuF5GxEC/uJFI=;
	h=To:Subject:From:Message-Id:Date; b=asKkLg8g+d8konservS2VvkOOglVgRLcfYU/eO3zNOnLj/wV65gEoOu5cW/OHq50hor7Xl4hm2A1+n2+xz287XY1evjuVagUWj0eZfZ11v3lCmqgHLaDwQZswenKb6CQRBVQ2HOQBow0M1wjWPNqHitcuEEJpHzWFlYRmp7nA44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A07fEn3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A07fEn3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAA3C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753957193;
	bh=MgRWUimJhVLMuI77Jp2VhTVheod62dnuF5GxEC/uJFI=;
	h=To:Subject:From:Date:From;
	b=A07fEn3ipC3h9vmi5hgpz6GNxI9sNuXD7Sh4BSGUpo77msgLluHy1uXi10qsXnhv1
	 ZxNd5rrfA/fX4fD5L14N2pXF5kCr9ClWIWuPGaXjWreIVt3CKGU/8pyMlG1oTTjXlu
	 dkWYh9yxk7YGWDRfyysPMeSZ3lbYnCl2LMlG2D42JCBJfLsiVV8WRCZIp82ayPsu76
	 vGIWa65b/W82LWl9N1CVFO4jFO7tdOIv5B2DUsAvC2xmPvnU+wDLRBUJPS649yGOg4
	 pRMJhBnf4z+nvdMWGviYzdJQgybZqX3YBfAb+XyEL2fJHLJmxnqPtwNGrhto1NbJ3L
	 4/VOtbl+K7h5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB19C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395719357.29042.606763165247216898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75060ed4f54232db44386d20d177c8e55c1818952ed62cfa7ce1859e8fd9c96b
Date: Thu, 31 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753957193
