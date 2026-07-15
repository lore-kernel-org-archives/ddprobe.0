Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516E443B4B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784110114; cv=none; b=Ncmohzju1PkIM+8Bdxg13SvKnD7AEtI1QV/hE9wZzXzr8LsvYE4HEe5KOXFa1+xutOlAMzw0bhsLgXikY+n2/PUrTBcbfa8d/UokrxhCP6IOECJqXay6C4QbqWKys20s+v/yZ7b0sAddc6/JvFJmWUPyawlZciN5eGWTyhRaDic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784110114; c=relaxed/simple;
	bh=TE8e1a1neyBaT1eeF46owbU+l1Z4X22vteAW7dgVfuI=;
	h=To:Subject:From:Message-Id:Date; b=WLzTpMXPo7G8osY+OOg5gQ/cxe0WQ7WpFZCvLhidSoIKInodBcPZXokDi9EeF2tBm7UCMLJDaFf96BP0DylpRp8oeWXMv3bEJLeVo58StGZBS/mRCrnPu+eAyScaw08hxp0rqJSk8MqNn84BhOlRcBGdqnEC+2S0fZ4PjwETtz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m97jR8hK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m97jR8hK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C00C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784110113;
	bh=TE8e1a1neyBaT1eeF46owbU+l1Z4X22vteAW7dgVfuI=;
	h=To:Subject:From:Date:From;
	b=m97jR8hK5CV82Ofmv8mzilEwSg7LD0OVVzkG6yAmRT+VzsLGNR6MM4g71+Q61AzeW
	 wgqmtEqduhm90+Vz+5iJKELaSWl4DIAqOBrc7kp6yh9vBrV3iHmuqJHkdWtczKui5r
	 LZJtkKzLzTHHyKI0XJqnsFzqWmNPaTFdhcxTSAnLRy4+c9hCWsQPiNQB9v/HmdbIXK
	 /+URTUveBnPD6S3mTow7TnpwsqJNbxQNm/CoB5npW+Vde5Rewhsdh7Gi0LzVcPBYPI
	 X/ojZ35ga5bFHfdUlYcA3/nQ6OLiyKeBiQlmCXDgfY9NjMk227s33sCDd3+dR21qf0
	 lZsz5JMjrb/6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12FC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411011368.8513.14734556836481921924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1cd2a1b9732f56df7436c47aad71be8440e43f6b989175114b79c483a3a8a8
Date: Wed, 15 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784110113
