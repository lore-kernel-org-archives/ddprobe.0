Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186E5175A72
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776611854; cv=none; b=MryaEJfnO+jJcBXOZZ74KiYIR64cERxxA4Tr0RLUSvtS71sL/PZbU6QWIq84ujetsm+5ZAlmUIsjs9RHkLvaXZQd/QUEf7p7Wq0kJVLoUxOawUJI8A6bQHdnWZTJt+YpQAxNpiZbOwK0Lmtvu9u/8q8aKdpFn6yeXCiVgNfE1l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776611854; c=relaxed/simple;
	bh=1ZSSkTUeAK257bku0iKEtmHpjMfpHXlmwq1zWvym+eo=;
	h=To:Subject:From:Message-Id:Date; b=pa6nifQCAJM0jcoaJcU56KNslBa61BO/hMDqS/tcACi8mbOHQU/ibXUpiz50DMim2IyUOPMjb8Zc+LxxTD4VTuUxv6zrOu4Xn+FwIGAojLtuUFOQUGaL3BKqDJzHLUNzI4WzE26qUXBJoGz5nBSQwqTH0qOHWuUppkXyPDpHYs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahj98+K0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahj98+K0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CFBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776611853;
	bh=1ZSSkTUeAK257bku0iKEtmHpjMfpHXlmwq1zWvym+eo=;
	h=To:Subject:From:Date:From;
	b=Ahj98+K0axIW7SVkI2V0K1ql+/6sNdXDJdYL1O+P95UOU+EwLSq1gO0jxqkNQZ8ui
	 gwinSOXf3lypG3K3YiAEMO9xBeuHdZjhfgoz5z9ABcGpGN8zpHGqsStWJiwy1b9o/o
	 NfInebqhrj/QuFFHQpL4hV/SknpSToH44LHwokBlq1xGRWcb0aHQvlmQwGIZ9EF3b2
	 gQ4So2TC/9F06msslPXerdAMsZqO49ms5wYyEK09ByG1XT63Tod4Jy82BBi+7brbyB
	 p6I5H/WKRNbqufyClZFZAoLFVoQ9LcKIMQms3PnbUdG6MJ27ZW+MewTJL7snk3psbg
	 pUHW0WFLAET5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA6EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661185368.3910.5642257258925038270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24f5dbdc77dbbee991e7b9100018d586dade90d086dd44e20b28648c0cf7988
Date: Sun, 19 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776611853
