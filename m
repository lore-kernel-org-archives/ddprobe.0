Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F4C3BCD0D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786266634; cv=none; b=TZyykbOMYQqUyOIaTatdSQY9VqFqTq53sr7LC77yxA+oZi7/T2CWxgRURUzoozXcDxHBIMRrvzlQQtMOU6TOyW23SWfGKSN5TKO3U6NT/FaI6ORqkEgHXR7PDsms4tEMWkNwAJ85W0G0KYO+pHY5FWBhb50YDR5nqFnjKzrkFEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786266634; c=relaxed/simple;
	bh=9+IycaxdPweTG9mFdCnKKlEnyRJATsfp8RBqFFbBIP0=;
	h=To:Subject:From:Message-Id:Date; b=FmfwAmahg4Mog89o5OFfmmJFjJkGaDL98jKacpBZMlz1Z4uBDY9huMxfeYfKSxFMt7qKPcAHKZt44dcepUsw0ZSLiRsndXgk8s1CDiQ2RAzq1fzkOsfnheZPs1/pCtj07Ai7A2K3EBMxKbzIoBf3PFLGZWyOi8Azqhd3vUxXwCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7LeuAVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7LeuAVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE580C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786266633;
	bh=9+IycaxdPweTG9mFdCnKKlEnyRJATsfp8RBqFFbBIP0=;
	h=To:Subject:From:Date:From;
	b=j7LeuAVzDruXiBDkxaMGMcy8dK4yLg38pU7lm9HK36oPWzyR+LMxlvZjw1IYJd9MP
	 zsXwHLmiL8qPzaE9HpoD72j6ZxeQGMV0wybzhmryE3046HewTHvB0Jx/GXZ1tW/1va
	 04z/GImbKT4RCTPOMIQKq54StnMTkpeUfkAkfUxYZryWqdd6TptI6C7WyjHF5PAjNl
	 uDlZsWhDULJ0y9iaWekHzVXqAHzY81q66FxDWdSzZL6m3/LLyLWYEJokiaCiRgHAd3
	 lepP0q1CpO5Y5bfwFO9XvkqdgRNT/H00I4AgCM3It8GY/OTrlsE7VCyaRLx8zEJyZL
	 n4cRiM73YSijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC0C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626663368.1249.2324943253354867273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c11295d721c0bc3267ca8bd50d9dd3caa53a45bc6791866da07d8996cb57e3
Date: Sun, 09 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786266633
