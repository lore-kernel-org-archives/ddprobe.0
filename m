Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C2CEC0
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742003334; cv=none; b=deBv2CukKx2uuNOxZFsJR8A+tZzKd+zFutfGZDzzyS47EzvKlOPNQUPXXlMdug/XEpb4K5mMM+elnW/o+WzomRckuI8bAOVvqIo1eDayZ6QRvF7kj2oeBYTtOdF0nElXayF72E7AMFzgE1n22yYiddTfSwL2zySHo4/de/cz+EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742003334; c=relaxed/simple;
	bh=AqS8NwqVZX58FlbDlVNqA/fuKAFlpK4IXPvbOWhcMwQ=;
	h=To:Subject:From:Message-Id:Date; b=mhERtp3L4F76yNBMQQjuAJbY8tt5YFh5aH8Bbo/jf/3Q3oXnlguJjiUawjyOn2Ajs7EcmfZkqdI/UH/4IiYihxQP3rRyGbsoe136DuGn7CjDCmfRIuawI6CWwx2un0oD6y7gVaqjGRWvUfZqGTnn3TBQ77goUrPqrcPhICYHI1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rX0O0bG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rX0O0bG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E77C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742003333;
	bh=AqS8NwqVZX58FlbDlVNqA/fuKAFlpK4IXPvbOWhcMwQ=;
	h=To:Subject:From:Date:From;
	b=rX0O0bG5mG2uw1hRmKZZC3IlDetbdoy3URb7MFYN39CJZrjf5dAPj1M72wDDH9L5U
	 tyoVX99bKByMQ71n/ExmZsnwXY9cuBoXpMiFbct3OJ/4hZky0QXwamHJwtLMEpTB+J
	 0Cd2fU6VSOR1dvZpxh6C/wCxqi2DsQJm/g3a29seZ2qcSPQ8lRCLhiuzJnSX8+BzsH
	 Lo2cv7a4JuoaXO9CvtEtYRQjSaBmI0KYdMIPQUHVc3G5apw1FdaNFzktMMYsG7ODcz
	 ztFjn6sVrhmQIgFDH0F8SwSbSp9xgMLa8XG0+nuDfp/eO4BUGD2T85JBg377ZG18SY
	 6HRDGqi4cy3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B8BC282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200333367.384.7616630397876805277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5542854c93451e326b5d3f36e01134c540f60f8e1f710a49d944768eab0514d3
Date: Sat, 15 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742003333
