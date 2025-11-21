Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F31C1C84B8
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763760714; cv=none; b=nzFFZzqKl4Va+5EqXTVZlkpjW/W2PW4bj/mTpg1qnf9xrPPCDHS7nyzRH+QViw0DFYbOuoYZG9TjWVD3WUsMfIFM+NbRrExxYf4z2WdWmrVEqhuRbLQ3D6xRoZjHvOtcmyJNr5GUMXxTzA3iQgpbbhLWb4V+I/H6xQ25CelltAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763760714; c=relaxed/simple;
	bh=wf3SU1Q1FmNykEBlag7c/p/Mkz3u+eJADDJZTpL3qU8=;
	h=To:Subject:From:Message-Id:Date; b=a2yTauwMleJgDiPz0ZokAIvqBHOmaUvLEx8jxi7MjHGlmbrhAOP7UQCs5KaT4NpbxPPhe4Sr9kil8A1okFlZJbfDvXPq7v7FlcaeGI2ws2scnh+YOOZcTLYYSeHv8352Gx+n5jTloZ4RrlFQ0Ge3At822SewRq7C6ps2Zp9LMEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdGxyziL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdGxyziL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4715C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763760713;
	bh=wf3SU1Q1FmNykEBlag7c/p/Mkz3u+eJADDJZTpL3qU8=;
	h=To:Subject:From:Date:From;
	b=SdGxyziL8sNibGUHR9zigR5wESFj8T6nJRddxT0H/PP3pcnx+fQ/apDEaxoaBBARQ
	 uE0WjE4JPlTjVX85JRW0yxrAwXSppLg3aFsBUAitu816P1DvKwNYmF0KjM1OOmJGiW
	 6N+FVZM0KH8FckgaIOsVd48q3zYWsWwqSwhpHB6P4dAjmxG4kSBosahHzATcXPhdHz
	 ZGIb2tvVLwzYhO7BmrqO59eNrF+KIMGvdwIDj+4C3mSAFCAktbWR6aBmkArkcfqRnW
	 a20wakLeIy2OL4+taB+6r5TML5P18d36M+2duJ1/S1EBHENxi0fX07fTG6R2ynwRdL
	 SDOmURwOWGNww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171ACFC50A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376071358.1661.10907191411228745747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8404debd3cde31cffbf782f5fd5e91afcfeba200dc31d9383df7c0b13b0689
Date: Fri, 21 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763760713
