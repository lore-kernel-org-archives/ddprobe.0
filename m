Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE54194C6A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734817554; cv=none; b=caCv1pNZJVQ0UxC6O/Jr+OKEs6c43JRyDzDDWrbFm9PqmmwXIkRHG2MT6tiMqiTvDe6ka8y3d421xc8CC7IB+UMHvhbvwtGbHf4enTvXGNDCCtkMFdW25Ismf+0qdKddOIySgvQERZnu4ZETTKf09FFINaf5ukNW7AbBa2eCt3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734817554; c=relaxed/simple;
	bh=JZmAnI0qMzX1MZbsHlfCGZKRKB+oRy2VJ8Y96kPXXCc=;
	h=To:Subject:From:Message-Id:Date; b=qJDDUSKPgSA4pwaChuWKzIE0gE9ut+bkJGoIweFTPw2FOH9NfAgxTO0KWQY10xOzoMlAiwS1OoxDj5NfRb2zAL3otAED7jtSGsU+U0nquiKLK8TotFtFiJelmWxPx4pxwMI92wFa+h0uWes9Zm4MyaI13SsG7KafCiz5XfjqF80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXo+FJk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXo+FJk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2971C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734817553;
	bh=JZmAnI0qMzX1MZbsHlfCGZKRKB+oRy2VJ8Y96kPXXCc=;
	h=To:Subject:From:Date:From;
	b=oXo+FJk45z4quPaG3e5UsxOhiU9UM4DzBFeN6epzGCcONXB0ByQ8mlqeujtTx9/9+
	 vD5oeYqDdbD3nOvN/cAIH2TtQreL+jSzIF8GPUYIZOAg3TGLbY+ZBMaPaJAPpNYv3+
	 SFmzg/qzX+ltFla7lMw1WruThFjw3OHaalTHyEMi0+asVt3VlwSu6YRVRckre9QKix
	 yYRLVaxnptdsByqb5jcJVF5jD6UvG6N0Xmcvrti3sOAXHVl8iYN+dcLlTNvhmsKUWl
	 Yi/j6KSg0JQjt9aC9JUkO2+beo6LMVsENbXzgM8s5Grcq4/peQq69u1RpaWP2GVJGa
	 esoNcLu4gcGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961DE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481755368.19448.10377125258759754649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554671602ab2481628da4895b1439ddf2715c570ac5fd378fa1ccfcb839283d6
Date: Sat, 21 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734817553
