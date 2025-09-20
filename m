Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EE88634C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758372594; cv=none; b=Wfw9eUtBjavUR8jILA0DCzhN9kxouY1OeOCMoCEXQtS4/ozcyG3ewc0JfdgHBO4XtWKtkcIByZ/wSO/2hyLu1FrZburVbOnyVCtRoQ9/ENFZ/MVSHiSjnjut943ED/plM6NezLJ71BGSbuVpk+/fHAkEsrP6SyMRdrd6J09PjHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758372594; c=relaxed/simple;
	bh=+tkZjWyJf0so8Qw0+7n0KcwCOMVRFSmKdB5r0AFfxEk=;
	h=To:Subject:From:Message-Id:Date; b=nwhwRnsMUYCsSqeFbzS/1+A8/qScRop+G16+uJYuXjKK44nS2rO/IOut1cg2ofxkQAMZQKCTPJLjxKCia96LS/IqVx62UIUjX7jhGomnChkBYn3lU6R19AfrG36k2z5Dwfpfdye0J5JDSsL1KQc+jLP+SKd+W7RrNybRH4fltGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFu3xMsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFu3xMsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71DCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758372593;
	bh=+tkZjWyJf0so8Qw0+7n0KcwCOMVRFSmKdB5r0AFfxEk=;
	h=To:Subject:From:Date:From;
	b=IFu3xMsWLfpE13SMDK9/VjXWMdux2OguT+HLhk63RvRW9cioBVdUCR5JK8wXQSHu6
	 LC0wimue+bFdx0HFR4hdIijqKJ8ZwSgg0KLWWyQoF7NKS1TmcdxurAqQsNmy6jjB5l
	 eMqryDoHSkFwFTQ4t+4Sw7KyY8e36qWBYqjnYTJbfps2HLHGXlqAXoAfOFyEqg0zMf
	 kt+BD2sPe2xvlTO9DLH0LhudATDAKRKEyAkA/GEdUD/970ikWcBImJkkLhTPRLkOeB
	 6OK6deHjo0qcH+xjPjLiUURPA2HPCMW8GeDsyr851ooMLXHx+053NQ0DlbX3600M5s
	 PY37Ibrlpnq7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272DCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837259358.18590.587599837884523636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaae77adddcf6d25243b5209f75d2e3a051140f0e11fadbc5d6f5c8e86f92fff
Date: Sat, 20 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758372593
