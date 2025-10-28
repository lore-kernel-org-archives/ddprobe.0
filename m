Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B9711713
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761680994; cv=none; b=U/gLzb6t1Xh6bt9dXaXpK2fc/7uhBJZpadqealiXsQr3QM2tQYUnsvho5Em+vJukKOLZHcBqLKlplQfFosUKwNlmflB9tW8wJo+/4YDdQHNhowmvuUZM1NwnObCI2d55q0PfBHZ+9NLNifdNoF+yXRN4am7qKWiRO1irhJbk41U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761680994; c=relaxed/simple;
	bh=Hfu8U6O+GVE4w7YpB886VIWy1lWzpelVvNDK9ZFKYl8=;
	h=To:Subject:From:Message-Id:Date; b=QljfVq2Q/biTI1rXfpvb6QamDyJU5nuBc5YdfCedlVdUHL0iJ6/cDXRjTvKYTH441h36Ueu8Tjp8EDhIMwtttEZOfS66+9gmAygmzTgESTiCZyLUD/cImWl/jr/pC8kN6vhn+cjOqodQvghpcvVDb2UMi9ZlwB163xx/EUQTplA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPsOK0Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPsOK0Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5113C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761680993;
	bh=Hfu8U6O+GVE4w7YpB886VIWy1lWzpelVvNDK9ZFKYl8=;
	h=To:Subject:From:Date:From;
	b=gPsOK0CsDkDkN7k/koMvUlMNJcvNOuULK3x1FCpSXU8iOKkjezVP4xumf59lntvQ7
	 q+A8havZ0/3Ile2tA0OffctduMulrz+3p5NzvDfgDcGx3K3WhZIbqlacJSh//gi5E9
	 QZmeBx/o4LJrd6i4s2excJ0G+U2h6rc68qSwwmErv39z5sX5Pq72CKPOsow8zTjHxc
	 83/dHFFcI8NYXdglovXYOGswtlq2r+4MhGf9PCdq1YO3Csppw8kYaN5cLDKuqaoXU9
	 CZXz+BBQSGoicBhjFtF/giRA8XD3np5Rsp6Bb/CuOEEZLuf5U8NVNGzeVb0hgNoS4J
	 gLdDGYq14KjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95763CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168099358.15614.6234468108901780129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377d1334095003ca8824de6b41e3545cef78ed306d3450bf80c6b1e072043eb0
Date: Tue, 28 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761680993
