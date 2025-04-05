Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5634729B0
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743848994; cv=none; b=G2vnjhnXU4JJw9uqYN9QwDSZGaEaez5/r0HpKg6/qHB5tADlAN0SIJMR604vgoMIGVCVMLbRpk9wOQ9t9CztnIFzovZ6dLP1Zp0OjiF1delo9Yr8E4mOg1wFjNXCrA3AOfLk8UwVL4lykI29DiAHul8gAFBSvzOnAfAlWPZ5Wfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743848994; c=relaxed/simple;
	bh=fdVGMSPwz/Ly1P7yiBCX3sLmT2dAzNUEYRCCYHcckL4=;
	h=To:Subject:From:Message-Id:Date; b=s3uxrKxPJ6RMCZiYct1EVtLWxA91ib/sZ8PelaEW6ZDlJVxVtOuE5kUASqn4L66ptFtjCoLDUsZihvTLhdO/N9U1xuO6SsuXnvKq1eI47FdWcMZQTQc3Aohi2nQR9z+s9/yx2J+uNCiYV8GqjR78l3SRuZShzWMBunWDsJaeZ4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ+XnFx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ+XnFx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C08C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743848993;
	bh=fdVGMSPwz/Ly1P7yiBCX3sLmT2dAzNUEYRCCYHcckL4=;
	h=To:Subject:From:Date:From;
	b=dQ+XnFx4Bhf6XPv10Nivic9mBC4OP44Hz5ZGhbr9/GMYITBor2T9bIGpJNcX9ZCTK
	 goDWtz9sNARFoAkOAmictExFIhVTZWl5Eil4iqw1Lq3k497I5ipONcklk3bKuO12NI
	 JlBWee3MrAKPg4Vy6dNJ4LTK0ZefKvdGXj/39stdKn63xl6phrMpdhlk6y00N5FN3N
	 MTwIaj+Ruidb2RvUZpQY3ivg+DBHnTX3U9QS6EiLuA23XMRSKV3akWCxtuD1wXTozU
	 n6B8T2piuuUoomfcBROiqhYUXRRAdy2aP7dBr4JQxGPjrlIgmmWrFBDr4Gs+kB/8tJ
	 9Tz/Fv9M8n8+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1330C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384899363.16731.13314742346019051836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6aa8d8bcbfee6c767ba3ec99b0e0a4e4737419e8dd9775a22309d241659d65
Date: Sat, 05 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743848993
