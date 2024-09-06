Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BA82BCF5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725653154; cv=none; b=Bedv17A3BFT/Mhaiou/eCvjV0ZgbznrcK+jjU50YGJySzhFwx8HEWnaMdKWdXMmSLDH2zaBrYq5E29ECXp0Lk0jIJ0Gu91W8KnmZNg7FeWi+eCiMvMMbiNWOzS6ATC3h751n4EaIBRJBGDpbtCtVutZiIknyoIJbxLzbDh6A78o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725653154; c=relaxed/simple;
	bh=D1liF93YrYKszZLYb5gfazT2+N/gDL+TeNqAkpP6fDc=;
	h=To:Subject:From:Message-Id:Date; b=BWhoiIXH0JJnBm2EaL0BkpU7/4TtiM803y+TBnV8JGndntanpkFlME1JSao+77jcnxOrife5AL100I4B9L0a+2YC3F9L3N3X7hknA2z5Si9NgPqIO9cThZTqKMEiE4tVnTmcp/VD7qoAc+z73aC6WebCta7VPA/uTkK7bxCV+R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nq2+0rj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nq2+0rj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9582C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725653153;
	bh=D1liF93YrYKszZLYb5gfazT2+N/gDL+TeNqAkpP6fDc=;
	h=To:Subject:From:Date:From;
	b=Nq2+0rj6+juOYdAqCzZPx5f+Jx9ym0YLpjj4O/ZZUAeLf2CxjKcmbwrU2hBak0BqL
	 ur46Pb7VGGp2DEklIppNdCeK8CrGzvbI1rzehnBocAJnmR+ONQjNBTF0RY+/fDhuxl
	 fege8++B6KBz8WYpRGnHLcCNQkW3BxF3hzOuedzeC2QYPNCin299YdRMAhxhMdymt+
	 SnKfrniPLWX6F6jcYZbJfzkMug0r4CYT2OFQo1iXz3u/ZvaYCiWyF2LgMJ0vdb7h0R
	 I8HL/jzvbxttPREO9ibQ3Z30rxoE/xjm7mCOtODV7q1w26n7raklu2v0qNEH+m3nbk
	 2oYuhwgSlQZjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E3CE7B11
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172565315359.4542.5118277761500058339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca28b7def7f78fd5c21684a8dd3317115a3bee4ee84d5a489d82e47fefbbe5b
Date: Fri, 06 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725653153
