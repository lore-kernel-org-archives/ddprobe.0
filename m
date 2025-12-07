Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF971632DD
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765140774; cv=none; b=ZIZpJxtj2YiN9+R650bgjNZd6OqgtpE69dcHs1RQu+izbMsKBXr7xTtWGGGuWscHMSf3YQHWb863Qn3sM9crGxTRw6R3BoFc0Y9qW76dEr5d+qt5AJeqbl8kCBo966JWJzsHHNviXCl1PRmz5R1rZK2Fvb0vqiAB8WApS8bmEes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765140774; c=relaxed/simple;
	bh=2y0NEhE9ZpswYaFVAta+SEwOD8jT91UbAZX5wV4Lr8s=;
	h=To:Subject:From:Message-Id:Date; b=COM0PaWl5476lh2EVeRREye6rHUxyrVYW5EAmipbw3YtJAGv+pzxWmVhMxDDbiZ+lyy4fvYoRuk/2hIshqwR/ZLUcl9EHiVNLt6c7oosghGjNLSDORlImGjcZjNxwK6H9lZYyQSKU128Q9DWg1Q4j0TDnRqCaoZ0RlxRbCvkJjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv4+dOxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv4+dOxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765140773;
	bh=2y0NEhE9ZpswYaFVAta+SEwOD8jT91UbAZX5wV4Lr8s=;
	h=To:Subject:From:Date:From;
	b=Nv4+dOxs8uYjPJd5sGddG2abY4gSmYyF3V+2YEhi9eKIBD6G0oOy4wUk0M/cL/Ah/
	 31FTmpq6oA59DtUhE69aW9DJGWWOxn8VZljwMqyG371EBPAY9UGlL7rWG7Xz1kP7qB
	 FMP2QEy7IpQAWKVdQ+DCviLPANBV+ufzG6MFq3PxdlWbmtjEJZn34jg93+uqcXPbzD
	 GlyrgEA8py6JjNEwLxtzAECK884F+WT84kH6SIz+XAxubFW6cwcHh4VDsAM1zjt+9x
	 WcLWbdI9AFHnuwfSx3kJvbcUplXATXMH9cnsJo7bW/FpBcdB+TrmrHl6y4mmDcMM8Z
	 x1hIjrbftWgpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9616BD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514077359.4483.17215488242485050753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62880445f62c65c169296353c9e245677b1e9e376cdc79ee0c86e4aec55b15c
Date: Sun, 07 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765140773
