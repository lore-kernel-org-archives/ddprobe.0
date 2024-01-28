Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05E96FD9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706422697; cv=none; b=KHaq7ngWYhxSuQyKOfd96SOOvkfDUAQKblYR+81nGB8a+aKe/d+Ep+krwMM5hm+6lAi8F31ENV64huI3RMI/7uXw42oawRKl7rg0TOykk7M5mWaO8dBdT3sWGrL/Ka+WXQWN5UyDwYBrl9gLVmK7FUnUsNTL45SK6iuF9cNqoYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706422697; c=relaxed/simple;
	bh=w/2UU8jfzFnByjy/XuK/XQ4fYLy8O4XCeZlqSORfFps=;
	h=To:Subject:From:Message-Id:Date; b=sgiJjIuO1USaETNyAeC1iBOyPqKm2w8I3rUftpoXqk4SZ1zAhBaBRbOiPn+XgMwSmISBQGWl0hBr7HlWTjwN+DzHgF0RtBYoSn1O7g8pHdfEkURFe9/r9vkWYxrBHcBhsimEmGeQtfsi96rZCSXVp9Du61a/30Yopw1Bb9VcGKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4pYavah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4pYavah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796B4C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706422696;
	bh=w/2UU8jfzFnByjy/XuK/XQ4fYLy8O4XCeZlqSORfFps=;
	h=To:Subject:From:Date:From;
	b=a4pYavahdKe14YWrAYJBWqff78RCAJiUfh5iOdjo9UzjZYYEfKu/s1k3XCWhZJFZc
	 r7EC7NTrTv7/4nBjWSYjh5X9Td8hR+fSL/jD276LCA45DKUF+plwlo0Jlv0Ne6//vg
	 Z11/SOB4RYVQVSKzX7RmYC/mvpQxqmRg1SkgUA5iVuLRxBBct2TCsTh1adUwjJO2gt
	 xLtqGGBkCJ0OnnHVJHsUzay41tv82NcctYSmH2Se7Sy6YY9qE+twXz6oHcO+XRhcRm
	 JoEsWDg/ck16TRuxCSR920A3Wiyd1K8eq34t6+oFmgjSgYvMZAXVJcn4wf+1mWmAR9
	 uDpeYghJWQdrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BA1C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642269637.28798.2920651253113814248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d9bac48def1dc25ae18fc072470256b4753b4092ad4d2ecd668176fd32861b
Date: Sun, 28 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706422696
