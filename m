Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504FD27E1A1
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775335534; cv=none; b=J1SK5v0fOt5i70g8P15+KstN0ax6I0bNv+2FuxYbJZGyeMYzdDSJ1bkn+TdAmRM4rXQ/6lu9BHYMJYnzyQ0hGWEknP5txuI4bTWrk7FXfF3dzEQXQ5OazZs6McKQtFNLU8RiUX5hSdMH+4TAwd0K/FqhIm9Mt5MjaX5HRJBtIhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775335534; c=relaxed/simple;
	bh=AqBNHGLQhvGgDL48MkOrqj3qeTeScbtV3iH8zasRQSA=;
	h=To:Subject:From:Message-Id:Date; b=f72rruX0+mwl0pJdp9YTe1cwfzHEV8f8dEn+02pbSJuTmR3cv/TTbVgRiQTWWMd4jpoK6DCFKjWmP6OB4xxf3+k6+2t91tHbKCT0K0cffW/rCxjPmUcL2v0LUHd2DmWaCwbSqEJDCmdf7QCqCrFBNLd8mV0AmCxy8FX4IWnywIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4mAKTXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4mAKTXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34B4C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775335533;
	bh=AqBNHGLQhvGgDL48MkOrqj3qeTeScbtV3iH8zasRQSA=;
	h=To:Subject:From:Date:From;
	b=A4mAKTXXnBVjlbyDJRD5S6BLxk3jwqpHWadYf0cTIXyAPfgtLhmUsIx7wh+J3U5HE
	 WYyFdCCDpo5g6/gaLbPwth2zm3KICE19aO8n5UiA6htnIhMUxw4fdr1SPMlB4npjNp
	 xNerSxZfWTmD+d8irHNRUinTuTpacTNnyA+zcemIAmInPVYHT9r0qckVmEiGu6FmII
	 RnGoccnxNdcstgPGHaRw06I3Amq3qD6MvMxrxB0neaPe3xsKJdwUAS2UC/zqV2Od8L
	 FL7qAi6fPZocokI4TwhnvYYBr/4XtuLCOLkIsIvt1hlG8kU/KTB+JasdooRBHH8ly9
	 I97CCxGOl5HUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF9E63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533553368.25664.18384201835738861918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20e0f84756eb762e1d1eeb425505c8557cabb97950ba65b9056f5a865efdcb0
Date: Sat, 04 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775335533
