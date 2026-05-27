Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A4136728C
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779852154; cv=none; b=e9KqxYGDRS7Y0e50M+8slmkreJI4DwQ9zEZ+yUsB3M597g30F44tUzJpJUSnWbLNOakHUrcS30NINt25CGNNhNC7idOj8BwAdhTueEasMPlysPV5xdyeOwoI9GMq1NzkhSNOb48idpJAXcWxgAyCrANrYavHceT4kNHzlsxaD2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779852154; c=relaxed/simple;
	bh=nAaib0UVTaUovxuupgkT3PhAOKHSo99TJGNrthNAGfs=;
	h=To:Subject:From:Message-Id:Date; b=kigs1Vjk6R1MEIxkZXWPrpE/ownnaDj4Lh0dWkGMgyMPthD50hKNLkmt2erF9YfQbTrgUVWWyy8n0kdVL+ctK4PJxZI+dB2FysSJUjnbJLitL8CG0LenjN2Td76mtwrdqsCfsiUyzF4jGYIItmyIsffBIg6fcWUohus6p2ptU6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW2G8gNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW2G8gNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72EAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779852153;
	bh=nAaib0UVTaUovxuupgkT3PhAOKHSo99TJGNrthNAGfs=;
	h=To:Subject:From:Date:From;
	b=QW2G8gNYgY/RdoBWb8U1DwjihARmGu/ocDGVhKIKKz0AfWr+ZWYQ9Eg/zGIfm5fxk
	 WVFAoj8QJ4rYTHsTxl3Ixyx0JnXSPpelK5W54vpBuEYU6uCTyJrwOunpYLU44UvALu
	 g718LzZMIQpJS+xMgcf0JJETUTSGt76w4DFB78hDwSGQhB0QzYAPI/74h2Oy9JIFB3
	 B6hQ5CYSJA8NOKAtJPmuy0mUxkNCYmoO/sgC0oOW1AJC929ucoO7my5Y/ew7mPafl3
	 4OiSNQf/IT8XDuFRx2lXHJHAWMvGAwsgFl0SO8LlXMr2Oy5G/g/uG8gbD4DC12Jhvs
	 ynSPXZZhlHKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE32CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985215370.6384.14600623743894463488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0753f0df2b9d7948a593179348c7eed5747adf959982f18ee4d936b2f997b732
Date: Wed, 27 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779852153
