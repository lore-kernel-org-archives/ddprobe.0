Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C09143C7E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718287103; cv=none; b=orcl1Dx2tx+TF2iWDX7D7z9uj62p0JIn4qvI++lQdyQBT+jp1Jo5sOCpwgEBmBzxmpsX1FG5FAD4KtPN/I6NARVqwPqRJywBO8mo+hM/3CzUy1ikJUeNny1+3Cijdad933VZzjOeFFwaTXcw6Tl4Q7r8xgBQ+XmCd/3mCV1OP9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718287103; c=relaxed/simple;
	bh=zF7AfR5Gk/tivdaELZBpgntSeAqxLqcKj7+y9O7yV4c=;
	h=To:Subject:From:Message-Id:Date; b=HMfzoPVV8Mp4eBS6UrIX9kpO2ls5a0TY+Yu6/1Hld20s1HGWIFhFkX3lJBuYiB2Pwbum1EVcMNVQHeoH9Lc2O5Qh1wTuNRJLAapCk3JqWRlEgyNYVLWV1STdXF6A/eIP589MJNIQacbVfjWbJ7AaAqD/q3s6q/sQWGk02xYjjf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bruxefhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bruxefhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF858C32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718287102;
	bh=zF7AfR5Gk/tivdaELZBpgntSeAqxLqcKj7+y9O7yV4c=;
	h=To:Subject:From:Date:From;
	b=bruxefhhQ3KwoVYx6DBWZOCJVUH5/NKETg8JwNxh3emwYNijjlWKDhBiotmMKRLWW
	 4/fBrpVxQID4tTRSXGye5Hdq1GgX6fVMcGxSfT9sbe/ui6gwpaiLWNP+KunSpbJDG6
	 IHKgExH4SFryoQNAchoUb13qXoWOFpVYTws7D0d5K76/dw1s7hIKS/BW2SkPslXe72
	 OnbVPJLfLo+pCZ9BL8R28lYi1b2sCDywDfUPqLSHrDhoUlho93RJi564j3Wzs/Bng3
	 A/JsqX1FaJfLawzwie9fsd0kDuw5E8nCMmJjpNs9y6AQkrpe13f6yUyLVFWorNuKI8
	 n+rhhFhgb6sIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFABC27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828710282.26046.2187261638700205973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629880b8b87f563903ed0390e01c3c8481ac76f4fa85a2bfbf72426cb1c876ab
Date: Thu, 13 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718287102
