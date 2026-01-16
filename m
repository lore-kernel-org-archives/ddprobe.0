Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81AB28B40E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768574034; cv=none; b=bQlER/4b+WIRSAbw3B0GlyVKkMHzN2vstEV1Yb+wIa16fvT3Wq4dq3LqKavd/TWxjlurN1ka+v8UuC10PX1uYIIVuoda14cHci8wetkV9ubLqN4JVpgbBl3GRWGHK74CX0nSeiC+5ET4LBrFFHYe0HQbQAKZ8OavQt0q3G0r/yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768574034; c=relaxed/simple;
	bh=6v3cL3vhlY9XAb9Aec8Y2tJolw5TsvXuNz2Ur6sbV3k=;
	h=To:Subject:From:Message-Id:Date; b=OS6u1uktidtU4T9U4y1cT8xdXEKi0SwpMhs8kKNWueZgQ4xrnSgl5tfu3l13PlCjBfdl2VgYRibWKKov8pUD2EcSNUGdkDzcPk/vF1TuZOiOOZY5Mkb0ZqFdrY7s6jsfBv3OjsJ1SSKBBKGj0r2eWxllO8Jt3IT/XozNeQYO7FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCacN+C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCacN+C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96719C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768574033;
	bh=6v3cL3vhlY9XAb9Aec8Y2tJolw5TsvXuNz2Ur6sbV3k=;
	h=To:Subject:From:Date:From;
	b=WCacN+C9FaqmymG/zADgLJgNmm+S6g6Uuez3fH0tXDVK4OZp4f+WzLvaNnwg7vZzB
	 ndK0v3lqOPZt/R0wiKT8Zr3Ubg8Hxtx9gGWrh2jdJD0gz8EAtzPOvZRmoTidI7A4/g
	 ODxksXl741BK4Z3/wF72ydpv3NrH+PIv7V6celNBF83xBw02VN4Al7nWiFLlgy3xFN
	 d9z71uUabasvskHPFnrW0a/2w/yKUrfGhEykOhZreS0ZyCARjbwKIwyXgXTUbCB/n/
	 0nOAIOUajBgbxE0MQIUNdmQAt4XdvPPypPtxqTllA1vhNk/Kkrau3DzsX+xUKPoP8B
	 7FOzSnWY2844Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5BC79FBF
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857403358.6921.13987769065135411156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3f1cd1fec96579a33b4b5a82ea90977684d112899d3a9b0cd148e2eed1f3c7
Date: Fri, 16 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768574033
