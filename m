Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751143C1983
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502634; cv=none; b=WPNFhU6zJ85JtNV9AHAkdUtSdZhZ6vB1WpyEDdXwezcPNRvvOd9JnkOqC6VSRZox/3wAPp4XIjnfz14TjgHW/i1f/nhSdAD54AUYdXknf252m/GptX7t2lI7CZBWhHc1k1z1Lp6N8cARhby9I6lMD8aogXCkDjg/vBMwv+8zhjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502634; c=relaxed/simple;
	bh=ToyzECNipD8hoGR9grrEP4OMdzJq6hQrIZBTJHTffmg=;
	h=To:Subject:From:Message-Id:Date; b=TzSUyxhYAU4tq6JpuQIQcUv3632YhKVuKYl0qDyfx7+W1Nyt5JSTHrOF7+UpG59xFsXpsqviGA3+jZfoMUL2h4La0oszu65Bcz/P8mXPhil8EVKwvcpVx1x+ImtafRSPunVUy4qGrEdIGW4M2DkqSWzjOvYdxd+ImHwhszvJfCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwksenWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwksenWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F42EC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768502633;
	bh=ToyzECNipD8hoGR9grrEP4OMdzJq6hQrIZBTJHTffmg=;
	h=To:Subject:From:Date:From;
	b=LwksenWfiRxicQcR/lYZ0ip347JDIUXcJ61nxxHMkTpFZKRAShRkNTK0gt/Y40qek
	 m7M6o1dlZTs6l9avZ7wSdzP0dxsD+cGnXKYLvZWAbZ8F60muZjWcehMZUf6iupv7VU
	 Nt4XBYZgwRt/afFJ7oy/rXoDpUvm6b4hlKj8U8VsO3YA0YFvw1SQXy4QHQ5cN9FWkb
	 2uJk92NHq6VGAwA3RRk9U9WG0oXdA9+K89oo53DlAuTu++romPuZxxjX3rXqKQM4+o
	 i9JHrGj878s2mDkSeRn54Dpc5L71FmMt858xYqoBVTXr0JHOG48QY6myn3neqCBifh
	 62V2cXeaKydxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7CD4660D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850263358.17063.16560982114492190384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b9e590f16bcdc63f16d5e9e092ea509e7801d73f3fb9f8e0a81f803bb585bd
Date: Thu, 15 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768502633
