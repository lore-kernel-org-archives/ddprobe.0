Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD94E26056A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771601093; cv=none; b=N3KeQUkVMBYWsCN2IS2woNJq1uN/Vg4r4I1sk/FCZcA7Z/GjxniYh6ViMpq6feHGXJ6BsqfmuE2xevQaN16QsxEDBP2FXg74wYqtlewyZZicc6AfEnEa8gxgxbm1dWd9/EObfzqVLzPcRV7ESKqvyxJfjDJXrhgSRgVH1frdTsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771601093; c=relaxed/simple;
	bh=wjyaomhPfynOjZDFujUvXCnu8ZykY4TK9wWNiFKUHlw=;
	h=To:Subject:From:Message-Id:Date; b=MKfFWJGkld+oAdUVOe+uks1ZHgVvCH9zurncv3Z8MMsesrVm/w+sV8ihBmr9k/DsizNce91LYJazIQ6dUNWzd7MiFbrwgCNcQYOlkQqC3kXVyg4VPOXZBt2QYrYwmyR0bAhiiaAy0G7tOGk4EfPHBkTeJhm8X2vWzDvJtXSMmaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilwfrI9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilwfrI9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20A7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771601093;
	bh=wjyaomhPfynOjZDFujUvXCnu8ZykY4TK9wWNiFKUHlw=;
	h=To:Subject:From:Date:From;
	b=ilwfrI9K47T+aRUO1RS2K4hC9LCPhqAiDBPl32lqlP+mJZlZ+DgmvMi3n1GG479Of
	 To+xjucJqP85/A5HhM8oCfXy/beYIodl1/oAkaKCauKhhsDmPAPr8jXOOlzawpFlOc
	 cNOfPuP9X6jW8RuovgWA08QDB3Xnky58TFmvwCYxIrQ3b7o8lSwrBEKlXMOvmscyUJ
	 ZtwKWxBjEVZqfqTyj68oETc2lCIiQkBIYk8pJJV35TH6rsbP2+FJr0bbzLxXps/Yvg
	 Q3gOkvl+YKYYLMOUkI1fkv0JF65dMiliBWqHn9CnSJT1jo6Vm+qV4Ng/ZeI3qiMyoe
	 RGHzm3vcpTHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A044BC56207
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160109360.15554.15001872653283044499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21a12895e514dad97fb8fdbf2c86adccc4e20e26296c2cbe70aef8e4e7aa4d1
Date: Fri, 20 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771601093
