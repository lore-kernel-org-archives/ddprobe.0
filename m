Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C0A347B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758410994; cv=none; b=NQ9BSI+iKnhBn+fKOXRvSiJVfmrIWUP4u9087FB73SEpnSJ+H9VSVHkMhQAivExgSUQW1BSkTYHg1dG3QwN28DSpGK62ygvWgRR04YYDfurUPca24bFvbYHBzsDhza3FbcCbbhmozIBNn2lv1P2FkFFSV2FYPo5UNc6nUaKQrYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758410994; c=relaxed/simple;
	bh=gwrm4GOVGXM/O5+GrzlykUmSzbZ4I+2Q+G/eDB7mf5M=;
	h=To:Subject:From:Message-Id:Date; b=AcvSrfjUM7PctgXp/phAqzAMn0uCqM1yXd55x2ct6Fo1eEX8Occ3o+bjIW15DPaqp4D56iN5dQAO1lb/m9Nr+PoefWacZ2YzQol7j/sXFm5v6QNNQkyEgImGcVmSpFWz5haypEIdgfDuC47oUSrYoSUW5sysdT3GO2AI9LNl+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4EQKQG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4EQKQG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77C5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758410993;
	bh=gwrm4GOVGXM/O5+GrzlykUmSzbZ4I+2Q+G/eDB7mf5M=;
	h=To:Subject:From:Date:From;
	b=m4EQKQG+sL51ac2+QkS9ykrJjeyk8KAnUuVgn1w/kg1gC5TBmeWdBemuQPYfeMPCC
	 C4NpgRPc7t4h+OpyTaMn3Co0eaA3K4MKNEMuGAQt0vx8bZnAJDKL3w+b+ftcClA/Sc
	 HCNpIPfhC4lGqOBJ5RHu99xe8voZkK74A1SoPFQjz/Sia5RB+WRE9m/U/sAn5h1FGA
	 PTIgjwE7RGJty2DBEvm/wH/W6T9xWLyK4r8AeZ0JJZVDBWBOmfG5/Dvv+zPkdc6bn0
	 jDs0v6aAJr8wh7QopoaQT4i/Tf/bM5eRqxVDo786l03wWzF7b+Y5kaaOGjk8tHNATv
	 QKEdawIugt0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91847CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841099357.28336.13337152947122890693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21db6d339f963e6d85edfe463089bcd7229f3caaa4bf0f8ca5dfd89034bbeeae
Date: Sat, 20 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758410993
