Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B0217F30
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729895154; cv=none; b=tzEGxWhd0FxcafnR+p/8lRP8E2f4pkqwCF0fsJ+D4xE7hKLdmZjqCa/sB2jii+x9M59fF6fHPjy+J7BoBZTNZlnunem7ClBq5zS9vohxZeusBP9ZtzJ5QGoYOOeFJtv9rgWhNSqlVyZImwYKn+HpjbxsfmR6uZmUvytguFnOxKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729895154; c=relaxed/simple;
	bh=KrmOaSZdo2h7pQ/TB70Y6RdkmbeT/ToA5ZaDTTWFprU=;
	h=To:Subject:From:Message-Id:Date; b=HDcDK8A0TU/FSXIiODf1NcFWhcOrs4Zk5LmG81B4N03YiUCAc5G33b4re+LyDqVnLG2drW+x2OfqTfPW35GW8360k/FPVnSnw5iZdpFox+aDuyrDO/Lg8oXuN98XTtzZUng6fA9cOWpG0tiH18Of0FqTq+JmiofcHE0ZpSssVTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnE22WQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnE22WQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729895153;
	bh=KrmOaSZdo2h7pQ/TB70Y6RdkmbeT/ToA5ZaDTTWFprU=;
	h=To:Subject:From:Date:From;
	b=BnE22WQ1FOLbl6nlMczVZ2wW7rahB8xtWujxFd3MYhUXitmEort18Jq5Mbtb32c2x
	 3IF7GkCC28tO6fzVoGbDgj449S+wTHVAOEMTjBO6pcnJOcQddqRWpjPyd66FkE/L4O
	 vQwxShyzftY1usg+cyge1YSS8HQQ31Yu1a9rnkdHbqDpj+cAbVs9cJY0QJbNst9P6O
	 FTkzgVaeErLEFuZDuRa510311cUFk5oK6QlJAFDWwvoudLOk9jrkhv4oydQq6LS5pc
	 Zaf3S7TUcHPUuk9Aoin166xM64bvnLmtt7gW71PO0Va16wSzFNPPbWcaFfBgTKWlH0
	 Zy+cDXwnFSl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98006D149F7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989515359.1053.16579182527819582286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41601b23cfa5c8b4465605a67ab361fd73b90352ada1edd7b3f1945463439568
Date: Fri, 25 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729895153
