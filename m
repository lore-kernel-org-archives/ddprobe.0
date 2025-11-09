Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19361218AB0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762712394; cv=none; b=P6lS9ot5WaI1l1fXHAar9ChFOZ7AxL87tDpHDfbRGBkVF1m+GoP4qYAjIL8FwryJwHCXKM1v8To7BCXgDyBAaphWUh7Ft5rXjoHdYTFgLMUntzVPs/UcG9ioTHHD4IJX+m3Oxzor4NyAUvw3HCY+cMXydzt94QUdhTKiowFoLkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762712394; c=relaxed/simple;
	bh=cjf6K61Ez+hyRmRouW/f3cNB8Z3JmbFcrmfBhbehiro=;
	h=To:Subject:From:Message-Id:Date; b=ee5vB3Gu8sjv4tc6bmn2URKOLKUZ8hniAdEQ/biWnndCCZCFRcituHq6wyeiscIUIcvT4JKnvWGKh3yf+zyq1SXJ3EB/uGiFa9igMVAmRZYuJnEJDdTWLW91qM3e7A+QUS9aiMsMARWnXwVOYlfnM5EDFznw4UIDNXQEG2ATYy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjGVcJi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjGVcJi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762712393;
	bh=cjf6K61Ez+hyRmRouW/f3cNB8Z3JmbFcrmfBhbehiro=;
	h=To:Subject:From:Date:From;
	b=jjGVcJi7NjnYw2Vgrc4dzpDucpBz4vOVPpOSrLOcz56t7cVuOT5+fWcJwMei10Z1l
	 xctCOWnJrC34KvYHnOrs8xzU6N1iTA5l2dqb0GFpt/lqnnIw2ZXSyrbtd4Puls8xXC
	 tJSPWmoKke27PPMpM4kOWi7HcKfPtrpyft3rv1zBBp054n1INcvg1RyC9hbB0OCZKB
	 42MNQpTCDDwkAUuhpN3i7DMKnxI6IgiFDXwVEmk/4M77TK32mQPZSQnWoB3CtRx2li
	 BpYFRsoeeLvoWotpaej11ZGZ1dejhDhsBNIU6E4DcihiC5wscqkysrIFAM4oNo+kAH
	 eF9ftughquwbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489ACCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271239359.9561.6263667970264549390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0468b083d6d4af61ae30cdce65df8a9fe22be7cb8a6d462748aee7f2e6b6cff1
Date: Sun, 09 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762712393
