Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263D281ACA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776731254; cv=none; b=jLef6+Z0CAPr0Rw1GDwyM7Nd4SOp0SczyLEC0vc1YTGciNFLrugB/E0LWdyzxbGFWj2zsw9QXSLPxeplkhXGr8krFWRAABkakIDVakO1xDN5rTZI2Bzx14tAdUnjnRVpeVbOKYxH5Qs8U9ggip9H68JbXpLveCtNY0e4SspR0IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776731254; c=relaxed/simple;
	bh=D+6KailcwzZsQ9GpDOIF8v/4zgJzpwYncV4bRfTbfB4=;
	h=To:Subject:From:Message-Id:Date; b=dgsIW3sknCmFb50K3CXZc7vvFfO2daFIbur5iC86Ud3kepDmsvF/fpW+XEcmJ5y0rnn/MMNCeJ+Kl7OsIEchaO0HoA1egFysZHxpbyNxDoaaesXAvw6+B9w7zUOvlt11+IPgZwWbbbbn60eoKc+tBSa9Qt+4FVcG2V3+Lt1dtWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8Baji2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8Baji2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24BDC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776731253;
	bh=D+6KailcwzZsQ9GpDOIF8v/4zgJzpwYncV4bRfTbfB4=;
	h=To:Subject:From:Date:From;
	b=g8Baji2HNtUYOdoecjNoe0pI/Y+4yGOXUIw034nWZBnEZRO33xIhIZAvEXJfobgWM
	 ooC1phLHQd10Ic4Vp88i6MDncgO6BhH1gaGun1oAl6vZ3uzUAKzSt5NYQYqqvB8mpC
	 HLnSVZgZtyccanRHDZnbs1Oyn669A+dlqHjuNR1rWLUPUaF8VDiQ2kaQ76xiKNZKbu
	 16YKV7o1DUwuuc73i51aa7eFcg0CvA1gXTYape9tfLqGF6OjnN+X2drN3JmFhpJDya
	 HAtz/+Af3xAwgOKWvhe7A6KfxjAyJ090YgKT3QvLtPvokGiP3RWeOU9xWvHVB8tDML
	 aF+H5D3/igkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B052BF5A8CE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673125368.7943.17672778124303287660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bea92eef903d7ab517fc42e8c112eb26dd83bd725e538d34b530199df9d49c
Date: Tue, 21 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776731253
