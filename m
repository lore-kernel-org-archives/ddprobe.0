Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A334562BC
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789036834; cv=none; b=IznWtv58y4A4s7SQ/QaYr14gSeEKW95WGWgDO3Jky51kKhpB4pjJVh5GWLuaC+BnFCbXxYe3XcWDucXczSrFKznM0+RI9c5Iw5PIwvOEN5bvfsOIgmQI2frYYtKuR99Ynuv25XPACtE6bdpEdp1ekAFUNIZWgz9y3vQZiS8wTko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789036834; c=relaxed/simple;
	bh=KwVR0D+G9VklK7yERVw95lLVqKXab7OMUD7xvtH3h5c=;
	h=To:Subject:From:Message-Id:Date; b=N99J5vidv952NoY6/jwr3e/lRP9Oxawm0Xc+v+bs3jTBEV5UfBkqpKhH60hiqgB1FpE1KB8YVSRt4WFfJyu10kg9IHbERAYsCZfLMX5N9omEVliNVAUk5OH6nPWhZAxzpoeNR2SlrYlaGRH5tgXW06mUlmoUw1cx4EHMimrYLbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFRgbxi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFRgbxi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF03AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789036833;
	bh=KwVR0D+G9VklK7yERVw95lLVqKXab7OMUD7xvtH3h5c=;
	h=To:Subject:From:Date:From;
	b=rFRgbxi7t64wzf5K0Yay5YV7f7NCfywAgKQm+FEQzYDqTn/L1G8dk4PE5sONBCfoJ
	 Qw2OK096908/bRR7SsDcc8v2+T1kOb1gsVXTQhLnI/fGH6vnhwi/Dt+77J8UrYARJZ
	 fBxzCgL6b1sD1CW5HAn/RjKtF4r56wokawSOPiIcEVGHk+28R0CGLZUdzaFDUWuz1n
	 ccTLAA91y0ob1HVWNQzVjnstsmdLxtogztNdUGbz7UlJgO9uRFLzafDEqIudd7bkTa
	 NceLfc0xbvr7Cb8Fm7t6tLoOB7dYDek1MNH5U0lBXmrweu4tT/4rDOvvjraTBxIepN
	 Fa9QoTZXd1WWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB427C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903683369.12358.14088378036396779842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b13baf73a76a6dbb74230e928f36e668fc312c3339d0f03424b5a3ee60e756
Date: Thu, 10 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789036833
