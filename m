Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7791F09A5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768785234; cv=none; b=bHY68LqbctVlWBdmw5LlJd7tU16TvqxUbXT9AimklpbU9IB8UQpzX1jaUfJK7n63iOSAuNAOCtZPtWWAlxOXENmf1HOWP1eVg3pmnx8w7TYGdac3i0Uh9mCR+eduqaRC3ceFKHRJ/wBH2b0QQekF01V0Q2B2ipdYV01EmI/DFwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768785234; c=relaxed/simple;
	bh=mYY+HttOgKoj8VdkcvFZ8v76yj5lJTeM96gEDaDtfg4=;
	h=To:Subject:From:Message-Id:Date; b=ItpBtRHiU2TFBeW2wXVuegzcKO0rLM2f8PUw3cfhiX0aVARpXmYI9DyPx61ZZRdPXRPON2WkYK0hual03BBUKxxU+H+d83slURdAiESiwNUmijWQ8RkUQoqOBC9vqTD8MHq5hpTjHyNDNdXIOnfK94YMX8trT4h8i8bHMvEM3so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzANRcNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzANRcNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A161EC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768785233;
	bh=mYY+HttOgKoj8VdkcvFZ8v76yj5lJTeM96gEDaDtfg4=;
	h=To:Subject:From:Date:From;
	b=TzANRcNhIoBqWbQ1j7lFZOS1jjq8y6q6t+5isR4kEvFe0kJVnfsclHjmRnp2oqufd
	 kV8pMvMOQklsatvKO3ClbZ7I6N4JwfY73SNehMgFa6lYz8VuHOlByIgM4NOD1rA4iO
	 mzB39ohNerTl3a04/yF45xgp7K1NKldT5TPOVVesNMfNr1RIx41k0xQgXffQHGGuf7
	 W2RQvV8eZ3fb1vOq9EPhT26r3ge9nuqHmdMGEPISW61IekHL23UDHSb+BHHk5AKInt
	 PIg2LXbChUJIT3TnF1oorbSszGwcD1C0v1qrY3x1mIUbSbNzjuk6hFw8HWb0a0oxIb
	 SG4TGsJCYlWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F991C9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878523357.27309.11100300007576357387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bed90ab4af7563b35a59812e05137a2d69d18dbf7edfb5983087d7cafbeaa4
Date: Mon, 19 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768785233
