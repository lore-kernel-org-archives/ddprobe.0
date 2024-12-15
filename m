Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADA186A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734242154; cv=none; b=AbYmh7G9cnLQgB7eBJpYWKPXW5SuYch2cguZxW+GzkF2XwVvLJcrvUzamMPcvttKVeEWBhp8c/fvWMSXgZR1gPkvj956dV/WAqZtICSEdO1aLv/J5jhZXCQgttCXCSrF7Nhb4zv6NH4bhzglBm2DgAbVd218SwevKL6SqHGYFMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734242154; c=relaxed/simple;
	bh=GOBLsvDyf8+u0dGWVGMYbO8JMga2KOuOCbNY/GL+e8g=;
	h=To:Subject:From:Message-Id:Date; b=DEhQ4KU1A0/jtosXLdkICfoq+bC6qiOEwblc9kOFI7+gCo8ZcSpyajeVRSm4IRKYyeXx0BDklHSvo8wkdQ/v4rMz2rLP23RZedNVlxoAfGw/M4+pGsUMpnKRh3STvjkqNCS5osmYUbSwv8ZCrv5nOZNHACSxIKC5K6hjwvIAYI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSm9XKuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSm9XKuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE3DC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734242153;
	bh=GOBLsvDyf8+u0dGWVGMYbO8JMga2KOuOCbNY/GL+e8g=;
	h=To:Subject:From:Date:From;
	b=sSm9XKukn0eYjxxUvatQW0NryEXUK9G36T19FYpRNmBowbvLFPyxEj81u2xucYmC3
	 5hWlyVzjjPC1uFJEdlvQ8h273liGx49CYJgQuOn4L5f8OC6iGdqwDnA/iZ5ZcS1tUa
	 daRMkP5Z2IzjIjIB+/TGiJ4JfNK1o8izWHfp6/5OpYCYgHcK8qm/yFlR3k8FXz/bQV
	 P5H0DUqpCrKWPr5/r00Y81TqUJ7bqnEKn3Hq/MbcDIX9cC2h65xv4RoujHRpQUGOEN
	 lAEcPN0CcIrm/0YRBBIl33/b0ma3/1aw4VYMC4sDCknApccnPIl16lmjQmOImDxmvU
	 XmpXouurl3bKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C32E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424215358.14094.9719871825493609642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fb7560355446c1349c66d427e9c22358d43e0c3056d732867d0040b8e6a444
Date: Sun, 15 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734242153
