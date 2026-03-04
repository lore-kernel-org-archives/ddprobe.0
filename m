Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17645398911
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772619294; cv=none; b=HULP+NFByfIGPixzK76UNxf9m/dwDVC3UgUXl7FNDlpAoT8oEhkwVw63/sxQu0Vs1Z1VYrcBNBrU9xWc2r1vNTlX2VPtT+nfN6W6wP1xCXo9a3ZNX0O80sd2I9AJM4DjVNwm5mJCWNMZysRiJL0bxogejG5VN5mVhcKfi1BtL34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772619294; c=relaxed/simple;
	bh=lwxfAqYocD/Bv3vgmuGuYgazD98wYnrECOJWvtzhF1I=;
	h=To:Subject:From:Message-Id:Date; b=d8yiyl6RnyRMavDRumd/trUM2C3yyzmcIOUgBVaJ9QqWCBepEhZYgxagOAkb8a6PNd4oXrypaWL86qVGHpOopYg0jApMiQzY8xtEM1XeNtaw1fON9oooBW/E940f+aGqQ4Fjwvkw04MnU6e5PTUMqk1o+FDgZOcF9K3bft6JQ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi0Et3Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi0Et3Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B081AC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772619293;
	bh=lwxfAqYocD/Bv3vgmuGuYgazD98wYnrECOJWvtzhF1I=;
	h=To:Subject:From:Date:From;
	b=pi0Et3EuLvCHuBx/yqJ4eUL1pUdoH+JkXG4OeybxI3/fFBj0RAzbDO9UVNYGGBeTV
	 1sVUmHxGeP0HSX0A4Unia/S8FHBcNcS0pmSHnEZavY3ZJSixXcfKCWlrUkx0cqi+Ix
	 a137166CC0qIKWsEDu0WirruBw/RuoQOy+hNB3zogwyqdLzJ+gu1S6qLR2U0Y5ym6C
	 YDDv8Fn+B4mNnSDFCAj79kqL90UkGmqcccL+o4c+8HAQuMnF/gv7ypsEHNhe1veA23
	 FjNuFn03hQjyMPwdLpotyIXaa0K4jQ8bL/1pNwXIIxNbMTX7zHU9dkxY3VNvTfUOPu
	 ChDSjeu5gSlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D00EB7EB8
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261929362.16864.18059934619995424576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca24bd19d20d476e75e5487c091c306f76ffa3691f8d740a14671c367a449521
Date: Wed, 04 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772619293
