Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038807F7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705714097; cv=none; b=PvHYYyeFiAI5ud/YKPDurjhV5z78LovPEybEymxovyJZ3lldNNLHehHS50E/a0ibw30n8DzA99wYUA6TAv2jOu4KIxfTbCoycmUEXj0qKMXz3TZaZ4oCbJ2UxxhHJ5L/L1/xNa2xgInJLpB463jrnko9kJSUpLXEE6MoMvrLOOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705714097; c=relaxed/simple;
	bh=dkPGdKFeUINdLVTjwbc5/GzY2UX/tnIQi5FZZ71q1fs=;
	h=To:Subject:From:Message-Id:Date; b=tjK7ZBISGx2MZX+qr8gPLJ9U4yqY5RcLpsPPfrRhXhH36zP8oRA2msxnuDEDl7lqT3AXpjUqiOsc5WBZIIO0iXDnX810oJT7oYJhe0551UM6d6T3zYil6dFuVzforvdy7+vSOEpjajuS22ZPXbHOktK3m7ctgbY+Fk8UHFO8q4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUuMZpVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUuMZpVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FFCC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705714096;
	bh=dkPGdKFeUINdLVTjwbc5/GzY2UX/tnIQi5FZZ71q1fs=;
	h=To:Subject:From:Date:From;
	b=eUuMZpVXwJBYMbRLExYUXRs2UqjgTLkdYgeLDZ+0r6zyeZ3TjMKqM0xGu1gUrn960
	 1WT0RqeJ8fvD17/PG2uFxm1XyE4KTYhvuEwjYkEmjjp4esmRXJfk76udzz8oh54abY
	 xPg+Oq0jPO9Q91I3hipvInR1GZimmLeuDhCJ9bi7pgEwdwLQNtLYJA8HUSZGx4oPmI
	 Ywk8MVQDBYBPXvqrOe6qaWElU1aCKrvtxN9cjC+KUPN3C04qQSx3BD1oTRNY8mP3iO
	 VxfKtdeWAnCsevrE98mvkzUc6QnNUU/YW2kGaSE1R1UOkpQfinuMI95FBu8ar1e9Oh
	 zb7RCEaF8bLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C717C47DAF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571409637.626.10480443452143312193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c9f1bf2fc60a84d0d8a842f80206d3b671c8231343da52be1c657191990dd7
Date: Sat, 20 Jan 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705714096
