Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2758F26F28A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767640434; cv=none; b=TdMUHgIB68vEohuFfkfTwUVWNnCxB0KAWsgsi4lPzcpuuvAjyNNjW8tnv3+9DmG/f5njdAFOQJetnOBf+t6XDg7B71Fk0xBPDYoPxCuLTM0/8QMf5lsL4RNHcBDiJuf+SLjZRLBKuhqWXum9LimzzdR9vAyfzvZwo6U4mjCei0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767640434; c=relaxed/simple;
	bh=edJhPBT7jNKfXqLeAs6RQscd4Ta90ZaDJzsWlzEmzm8=;
	h=To:Subject:From:Message-Id:Date; b=c9iz3b94OcGcRIdQAQijemrmCzh2TvDNSsBNxXXWmHrV5ttl8ByH4eRMOWRXTCqaNqvHG5XAbMfwfY56vo2xKZhgu1RgmvI8hWcg0XX/NPomt4PZUvdwctU+dwyICb/g7nHM/c3cVs6Z9Yf54vEf3iJXtH7G4XeUnU0+oDjusLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/nJxjb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/nJxjb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A075EC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767640433;
	bh=edJhPBT7jNKfXqLeAs6RQscd4Ta90ZaDJzsWlzEmzm8=;
	h=To:Subject:From:Date:From;
	b=i/nJxjb/UfRk8e23Ia2/lT6n4CvOvbK7++/QQOdxiTv+s8ZOW83SXq2y1dI/j3eXc
	 CtMf7RtbAcwoVRpDZtxf3LtEWi+vJ3+EvUAuuqENUR+/qrSW5Ou4SxWNt6/5jQdNDq
	 aQj6csD7g07lBEvtpffG0iyaWEodbUB44EAg8GW4MNX5w6ICU4JDFeSP3J0UrEu0bu
	 jOJP3DjC4NEAjkf0ZWprOm77229E9fwIweli4haMGB8L2wmZBCIfzv7tOSg75F1vgU
	 cbWlv1eK/oRiAZYDlQl9Q6/gOw5AA9HjT17KgCoHrsJz4BoQVEIb8p7FFK2/EjoxwQ
	 uLJLimR/nCTZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75DC79FBA
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764043357.24590.1667214797193173209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e44b3981fd69e1360875ff4da3789bd5a61a1a9ceae988d6ee9d5241126f6db
Date: Mon, 05 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767640433
