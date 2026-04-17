Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD9258CD7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776464254; cv=none; b=goPER9OGLB2Ps8+Gs0QVFAkv3iNDuNnBRj47S7jDjO0UeJaV40Uw/53tAO1i2wjL0ktj0woCZ6z/iKtlaAvFVZIZUnQiJ8Ez5WGso+aywBLWRRGNloS0zQQVsfq29+wG9qkUvQZYPXeBdyS5FRvpLwj5aoXlmidspcsFIAHIRio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776464254; c=relaxed/simple;
	bh=PSgqqWTu/4MzshSzCRnHLkngDFQ1WKZo6D1RtRa82Xc=;
	h=To:Subject:From:Message-Id:Date; b=Vcg/k+7bFl8ISU9v1fdcC7MEOQre4hqsihUNxN9O2N0oVSq/xwul+pd8FUWWWiacYGMYrcv5MMJwC4wg76QqAFUjcwkFRLyRbRrNB3fydxpZH3kfB5ta1OtSt/vRFGd4k+l7lhHOhP6Ecb+w3qVXlPv8BFlFMH1OkrAC8ZIorBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTOFbtji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTOFbtji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AE7C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776464253;
	bh=PSgqqWTu/4MzshSzCRnHLkngDFQ1WKZo6D1RtRa82Xc=;
	h=To:Subject:From:Date:From;
	b=QTOFbtjiufI9fhota2YjVHzctdIJ1l93UpKSxJK+9SYnssfDphhU3LH4IWLLP+6fH
	 yHufgIZwgiMaRAc4he0ryLBPuo+eqU5NpcJcIgnwrtejtBa0yz5foyOzEH5d+u7S6m
	 xnIfEHt4V513pZtxngA8rIo7ldiY1IG02B7X96Mjyoy/wj5vbYqUSjBAVwJMtP7ls9
	 P3ZQiKnAL/CIl2+JtSXsZ4USrhOB2BBG9RsvTsGesttiE2C6LQiRmBcl4GjF/gxxFV
	 VaeuTMZyHwP5+0DwoVbHf3db/6N5QLyl19zXqJtPdiILvOkUlvTumPXtd5kFaEbx2T
	 EegwgcuiV72Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC17F99C63
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646425368.8274.2363711587815978602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44c2982201356b222919342350d49fa0db7bea9448c3816b842af0db912ccbf
Date: Fri, 17 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776464253
