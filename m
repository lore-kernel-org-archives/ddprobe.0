Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237872B9A9
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749827994; cv=none; b=hwbq7l5xKUu1FNc/ZNsSmnN9seaMTpEiIqUMw47aZneJFiOzsGIIbbuqbjCX3l0OlC5xiINDZh0dB5/o8OyC/ANcbqGsmInJen5QwDZYRmJ1CtLzxPommP6XtGmNIphYOe3Kgd3czWGejToNnNqV7r4E/A603H9JQmtYSCpjSw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749827994; c=relaxed/simple;
	bh=cjs3JYNZmpiPbvL+GVN0W6eOC7/0uKoPDkyhVPjx/50=;
	h=To:Subject:From:Message-Id:Date; b=rh8fr2D/GzWzWf055j0X///KC1kjWcgvlGPnf9+6PGWa/rkTeFse/Zxua8uimiqhtxLO88UFCma7LpdaCG+NxGQbDQ7eCL8AIgiEvx+3ORHzewM92t04gCCG3zZl99JHfdviTfCNCyH1RzfejcxmMWohJCsKmjaNlLejhFPwqVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpSuCZgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpSuCZgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749827993;
	bh=cjs3JYNZmpiPbvL+GVN0W6eOC7/0uKoPDkyhVPjx/50=;
	h=To:Subject:From:Date:From;
	b=cpSuCZgEuzTInSI2fe/gqtWia65bBuH8NnYALXeNwAVun3WeIT4mBGiq2RpUhZHiy
	 a6JlTQWjUM/zmMGehd0PPNZP7IodBoXCBbGGtFkBmMKyyLypi3RSpqVjMw1thGolly
	 o1GMfRtlaZFiAZSRYtm5liwX5kGACAfWNlzW/VllWHiqN0pliKJsgdafCh4bQmu1a1
	 zQYtM2F7h9uWeSs+AA0IJ4hmyK8pufnzUkM7I6J81I9zCPRatA1JKrwTEY9HslHKQX
	 dcEAxn8HGs/sA14I+WqLOUuGqV0RxlZQD3iNziikE0sz6AemW4X8GQz8SM8D0kpbEK
	 iktpVtEICBTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90314C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982799358.22709.11560235297514838505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f24fcbe1d88a9516bd3a1fee2da635b9cbc62344de5c866c9bc74beb52994b
Date: Fri, 13 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749827993
