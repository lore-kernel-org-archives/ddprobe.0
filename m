Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7F3E49FC
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789107034; cv=none; b=rZkqkIbli4y3509U8+0OCy9s/3ePm2fXjSBk+YCPI0dJiwc6lhEhx+8qmXBaPu/YyqXTxjnqyceBmNgh/vbw0lShXY1j29QQ6mgtMVT2uXANZj0Ztg+a6MTSJHehXF9UdnVRC8nkiCSRYWki1zHaSikHR81cjiUJK7KkwAHrlYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789107034; c=relaxed/simple;
	bh=myTYvyBl8zElNvK4kx3muZlrnsy4SA301zAF8k8SrEY=;
	h=To:Subject:From:Message-Id:Date; b=oTI5SOQXyvouMaGvwdTTt74UfdXUJS0s8Iw2+TfWA3VuPX/d5QZM4UyzVPORhiIbEuBV9kWp4Hb8q0W8vinSnRiK65smhmYANVPUetmiRcu9UZKI0xptiJvBs8OKyeyLxaGa8DV3pb9Mvu1RjAUYIUmzz/3bAKmTqBVqW8OxgvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4IL7SBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4IL7SBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789107033;
	bh=myTYvyBl8zElNvK4kx3muZlrnsy4SA301zAF8k8SrEY=;
	h=To:Subject:From:Date:From;
	b=J4IL7SBgKZlbFfOni7JbLBDd7CvxCiAqj4vqrx1GoLokqlAIQB9nYLEgJIQAY6STD
	 bgHdohP4TDzbdRzHxKpstJHBdEl0YNG4WyCDhecj2rGzx9bOkK6qm7DNFo7sW8q5on
	 /zWQQ88K6729LTZCe+SuZbFBmoXoEarZ7hbN1pkJ6X3rXHPT0iDDwp4E5oxewoUO+v
	 8UTYZrIFJOPz20FmUchaWifAGrCH3Chp+/SjGQB24kV221l8O4DLXWQUOSQsqgTqrZ
	 /zXfrYWsWT2Jsdd+FBbW9eA+62EP7BlVkyQ+pC8pNfGk2eGW6DenDt4BvGzILI01tx
	 sMUf/VD4uTPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EBC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910703368.27907.3978250936842977963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5080dda30739cce867c1c3385fe307b595b5f19c91950c806d1607ee5527df
Date: Fri, 11 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789107033
