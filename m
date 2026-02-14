Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FCB244694
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771048494; cv=none; b=ChaJP6ii4HYrjCwuqRSsMOw4APDULW70+jgjU25fmB2Wo/0MdPAZLb0jyrPbxKtKpz5onAZKMUiXPwhiyQyPRFvCBCcDu3vNfS/Atu8VVC9mwuQlfuoNo9ZK6YnW01Q7GobWdnykv5CfAiaB8bjZJQ63DFiM2g4lG5EITcWL+Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771048494; c=relaxed/simple;
	bh=n6+1482yll+lihkE3Ifxx7E9czd50Gi/3fs4041sYLk=;
	h=To:Subject:From:Message-Id:Date; b=ZinsXyBDhTbG5ibI+44Q9QY6YpeBFDbaWH72XKMBElWiWYTIs0eKi4LPAGFAUIrc4tTN2RC8qaM9fDAKD5P1OdCg5y1tUuqveuUquZnRQQ+x1VLBUEqQV0aPHtYaTO40twyDuEb/3eFN8LuNIeov57NMT6xKb02mQfmTiITkwn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgdmptRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgdmptRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2647C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771048493;
	bh=n6+1482yll+lihkE3Ifxx7E9czd50Gi/3fs4041sYLk=;
	h=To:Subject:From:Date:From;
	b=XgdmptRGO/rZsmEwovuwC7gFiUkXaMDnDwqLQoXisLlpCCYvLyU2UjhtHEbP/dmHW
	 mX3xKZIXpJSoWl9dMMEKJ/FbAMzBGo53OpXKEs1bSuEM8CWtEME3g9x6rmhKXjdeor
	 L2rxWyDHawpIOLHG+4jw510k9uKQAJonLnOp2zZeast0x2j+I4FLLF0sd2in0eI7nF
	 /3xmQyX2lTGnuIRqCaqqgyQu6wTR+gNw0ytlfmXc7XZC2lSYh8cXDPJsP/3r/Hlyh6
	 wqvAsjOP17HiHk/THDhIx6xZkuhF5GGYI7F5NtlIgJZMCZptY4aRzxm5otBpEijuZD
	 /zxfJ/CvSUXSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C379EDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104849359.12195.1520146344776560056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe935fb49f8c02f6b8b0bf4b13a45dac4d26d0742ccaf2c52dc1bdc083b6a45
Date: Sat, 14 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771048493
