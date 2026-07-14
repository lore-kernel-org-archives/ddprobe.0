Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB173655EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784033314; cv=none; b=clmcLem+mOimy3R5CX3+ZJsU4BV72IwKCeD5n8AVgFBP23tIpWVXOIj+iFpg7F1BYI/hHa6voxZ/JYFRikAhRJNAVfEuMF78Jh78erbMGWGKSMUO1kBYncn+vwpWW/auuCn+OL1sdfOVb0XBXjzt5DULcEYm7dZ7kLRbTFb5JxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784033314; c=relaxed/simple;
	bh=Z8ANee0FMuHzuXC9l9ZcXtwa7O7nRXBfmgYZLQmRSJA=;
	h=To:Subject:From:Message-Id:Date; b=KaYwCWRej3ps5dlQgGF7LwP2Izz1Ny8983OcQZ6TJdYjIEmGMLz/kkqZxNSV5LI1PIsGACP5NzbztLIhMJuFZfB8yVLhvagKI+1FhK2ziI37VotEFq4w1PfXMQaMYhUtgN9tn9XUvorsp23bU6GrqVR74hIxL3RhZowUELf/ojw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6IM4xuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6IM4xuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1DAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784033313;
	bh=Z8ANee0FMuHzuXC9l9ZcXtwa7O7nRXBfmgYZLQmRSJA=;
	h=To:Subject:From:Date:From;
	b=b6IM4xukRNhJoagRPtAeZiXoCe2+oByM1jln62WOJb4WY38o8rhuOmVnOKKw7K54A
	 ukBhjRWyetp2x/p8EV9gO86iy503SFpAwftpaRAit3Nq9Hi22JG34f4syv1mtLzTmr
	 tm0MpOOe2X5MBd5A+2O1QmL1CXCWbesumvuPwClsVFAQDygH8IRL+ruSsl/IWqw21g
	 ECG7xzaQTW8LB7EyXVQ/HFV9UUy5KEn7c+y/22yvAICZtJyEPkKIq94I5jmkavzc1Y
	 2RIxG+RszUqIg6rkXmuWJdzqoEkfjUDH0NR3JrtTv6G60VWryMMxqY82BUBbl0Nakw
	 fYzQZtdaBThyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957EC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403331368.30937.6045583726534058157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ce85831ecfcd78a2af7013c1c3f13e9480dc9618af241cfba2035f195483b1
Date: Tue, 14 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784033313
