Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF8186323
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757488194; cv=none; b=kYibbCnhu5pBRadwksWqtyonNSff8pTKT+gH8aVcq0+fIcUt2e3S8afKJegpOPZFj5h8SAF46pvyrUan+HETijatAktASznf+QJOS84rzJTHw1ZcFJ/UXyMHqXrfPhwJ8dudBRJuaYwwfjbwlVm3jll6Vmb2+elRa9PLGGPtwmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757488194; c=relaxed/simple;
	bh=mhTas2G4OkxGKBD12xx0p9Va0PcvvhtKaSh11XQh3oM=;
	h=To:Subject:From:Message-Id:Date; b=nyKxfrDri2rtY4/rbMZS5TKcvkORHu/y9dyFdf0PSf4gzOv+5Mh+P0vndK3aOLmRO59szDqKzUrQTWFVSS5o+75V+8ZoiQLYgC7jv7dXjnXuoMfXLtXxLp3gZ+7C51ZG2ba8LlvIctlzFbFSs5aV289aXuf5xRo9u9Jrof90okA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrIQ+eVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrIQ+eVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A87C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757488193;
	bh=mhTas2G4OkxGKBD12xx0p9Va0PcvvhtKaSh11XQh3oM=;
	h=To:Subject:From:Date:From;
	b=RrIQ+eVQC+A4pXggdQS/vkZnArjKeZgHxY6jUE0Vsh4wUBsaCMKG5cRtPFervEe00
	 Elt3d8VSc43SW/7NVGkzW7g1Yh2C8zfzwwm7k0nmf0gCFiHgtQBXrT6I74i4f8pXOc
	 jv3U4C5t7Q9OeanPThT+eXeyAbbTzyA2P5UgWMvn4LHdqxK78qGqdI1dEKsY8HOAQ0
	 Tzau9JOUZZ6QO5YoObC9nsgsSQ2IXY04SLghUuLrSH1akofJIOQqOVfYB8OJGHtYDz
	 LOrc3hl7LJGBl7UMXinfscAIjgY97ZsFq5DRBdvdLfDmJool+gKK+gw8ZlbDUVl89a
	 FFzYUOf93lEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B9CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748819357.23836.1980412647186120641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ab17bad7feabf168a6b0c48e80fad54144e9808bed00afbe3fbf1635d89609
Date: Wed, 10 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757488193
