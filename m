Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172CF2798E5
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772174094; cv=none; b=eDtrgN/HykmuPSeo61jTGbxZyJaXQI8UsWbv0Ztuv9lFH1dO0KSAIxsZZQsU61DH3bPPu6T7WNrxISQdoAbkmX/dToCWHCT2uZw/PK0dPGR96hfQkd+E60TyeDITJnHRFaYCORQ2oACFqZ8yxg9sN2XgYTm0Md5fBQ31Spp39lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772174094; c=relaxed/simple;
	bh=umI+To08/igVwJezH6aEKIZHCuvX7c48xYZeagRIh04=;
	h=To:Subject:From:Message-Id:Date; b=TnTESEemOklSfWOw0txDluNLA1EluhiCI7JxzK7hJG2P/5gr6kI+f7VYcMRxkWlQpcKElhQZAH2KNxs3/bPA6lV/LnUZwG6Nj20DWCuGM/q9Whdw/jXtr7OYlC2aZIoLcQLQ11CgoKCy8IAiCQlu7d4swPpNCxV7jySXziKunGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgZOf2yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgZOf2yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F71C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772174093;
	bh=umI+To08/igVwJezH6aEKIZHCuvX7c48xYZeagRIh04=;
	h=To:Subject:From:Date:From;
	b=FgZOf2ytos/M9IllUiUIIMJFFZRQND1maZml2Mo25osENOcFxTDQU6y1yizhmIcUq
	 YWJnYxZ/WQ3JecHyfQjqonJegnlj/EPTw2AoRM/5krSY8Nx3luh7caIA8QdMJ03Twi
	 kOcz/6ZELivhQm/wo0kD/XEUdYqpV6Wt8Bv6oGF08pKUaYlhW8FzZ6RI7ReVpu5m1W
	 yijn+w0hU8ENHU6cl1GnWV2tTB92j0lUCzrydm70PZfo0sIEPDGJZl4yu4UqwFt1iE
	 yprVXN6AFngzIN2WwsxTH/ec0HvrSQbfMdB7Qy+aCiwn3gStUU4I0OWmSvOMjGp8po
	 +JojcHVMvWMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304CFD4600
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217409358.20762.14018800556877089373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739e92802ef73f3b19c4f0952074a3b70624ba05205859e2f2b242b5da0f3237
Date: Fri, 27 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772174093
