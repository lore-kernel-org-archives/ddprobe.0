Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ED73644AD
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763658114; cv=none; b=hfFEsOiHogbPVkWJo6pBlp4jpWXZMyT1UVl0R5Gl/IFlrmUypAl7G4JJBg4OA/TIbqes2rHjRNjY6VR5uiY9COaJ4AEJI9DBXMABo1phqBqRiCirvad4Q8lvkG3xLCpvrizxoXy56EDcrapilDKZNFzAZ3QqXI/2ab+WCeiBhr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763658114; c=relaxed/simple;
	bh=aUCM1/HrkTos8ozl/IneL6FlT9M8KC7zbR0nNlAv/QY=;
	h=To:Subject:From:Message-Id:Date; b=jJ46Gnoh3G0erA9x7w0IfZA7uP7P86txcaP0h+4kTObVIuM38SPlUqB5ylakIa8Vla+St9C0I26TYIKdsbOJzTPA34t+3ne6TedvZOCeq0JG6mpehH6oBpULsefTPjTCmR9EOjK6UBmxlBDQzjN0bj5h2NWx3s5XmKUyKFTP+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejd9UrWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejd9UrWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C92C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658113;
	bh=aUCM1/HrkTos8ozl/IneL6FlT9M8KC7zbR0nNlAv/QY=;
	h=To:Subject:From:Date:From;
	b=ejd9UrWBKoXHztXnuDBoBcVCBnS81zmcK4L4V/G7v4XrlGal3fx0loaW8Z15h29F+
	 AT6p0LfId6O5FkA67PIbzBtwIR+31zjjlky0pHMWpTIxsjY+rfL8xBQOeOdR+6SPKa
	 LPOMC+A1JNiyRVGAZislfOx9qrUvG3se0ruj8veTBH4bULhNgHIjpbExDKi24JuOlA
	 8inv2w6ayaeSuby/efIJ4ODHqzFkwwt5LirksvwZKRuZ1ZekFyqiTLuEWk1gayoZVq
	 Eh4M/hLtPoGpch7Po+KWlWBtPnX5qMsd/YLyoO+XQMJ42p73p7Pb2n/qdnOgT2Vg3h
	 NXOaPVxqc4U4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399CCF9C56
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365811359.2608.17908278620108022272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8d33da81475f52b372451b4a41f9efc59e60367c9e8d5a857ba6dd1407265d
Date: Thu, 20 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763658113
