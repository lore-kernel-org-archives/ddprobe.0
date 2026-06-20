Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B24733D6F0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781949994; cv=none; b=dN7oJP2svEEyN1G023flaW9dP/u8CM907ZLRo30zpx7uCXMcrK9K8GUcjEwrawWXarf/8y40KaNhgwm47mERm2R+MfW19tGiMdIiqPvfiueE/SI+RPJGXB8pMDuSjyhyRtWZ9gzrRZCoOiyV9QLSHUPkoXFL046e+WwmK97BZw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781949994; c=relaxed/simple;
	bh=ze+ekiTxRpiyn03rbd1m3Puoqn4D+zDl482rt6sxQfw=;
	h=To:Subject:From:Message-Id:Date; b=XMQ43s8GFcY4JpqsJxlfFMzIDIT65MP9LqnO/9mZy4//2iWyyUJKsz6ooRlgkZqarIipt9h0XNpb9m2K11G2Vu8DVxY0HaVALW6dW1nnEJ3YOi8hgtcNBc7ilosmgJIlG00X5KmiKgjv3RX13CA1V04kgB7i2ZQTvFv1gG5z0vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5ZExNrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5ZExNrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B42C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781949993;
	bh=ze+ekiTxRpiyn03rbd1m3Puoqn4D+zDl482rt6sxQfw=;
	h=To:Subject:From:Date:From;
	b=T5ZExNrndG/PBFfo3rR80w+yUnyupqw7Qi9dkKgeWDhuVQBMjkoRQcXtIk7Qlu4H2
	 Ceh4QzYNbl/4MoZrY5Cwbi9NYAkGSc7escXzq0swS3pS2AbW9Pf/x8Os0IWJh9U6T+
	 gn44MVLyYfwcfOiOyQou1U7qPGtRiqrKfTSaXLRJDupZNfCKjHY97LEWR+YNIPVnlo
	 ypyFwtYVDG2jOLjI0gGbw4o7SOJhtL2QqXNEYGBOa3oIbORMnqVVUYRkJ8HT1f8OvZ
	 xtiq7ao1Ip9reL21Y/91/D36Y0/MIMySQDgnYBty2yRnrW6YDXZc7EEoLDXUj96eK4
	 bTmcEC0tC8kIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56DFCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194999369.22393.10349701570048259909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a64683127539e8d3113f529bda6521d6e4a52e810451b504fa83f2972b97aca
Date: Sat, 20 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781949993
