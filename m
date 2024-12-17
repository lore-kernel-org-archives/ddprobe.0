Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1729416D9AF
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734419754; cv=none; b=MYD1sIp6tVqWbfHq6TUVGCtfYCYsjI6/Mt3ldWSSMYoKFygy/vNTQxtTLwJJIl/b2dmKfPF7PBSUi0YVSbUvzcw/oqiKRDjO+L6s59uKDhzZgAESJvNf1EvjHdL67MhwCk7fHVC5FQBs85LQMUrx9nACrIAAptmdLo2m/c7P6GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734419754; c=relaxed/simple;
	bh=/Jt/o5tEcm1WTZpBJRPqFxobLpiciL9b7yx02kiHrac=;
	h=To:Subject:From:Message-Id:Date; b=H9h/FTtugDutNIDJnmkpWLUCZNIO30SAQN17nIugfes2zPh5znEl3+4f36nAm8Qvoo1J/Ha01ImbdGRmi5opu5noVSZ94lwfqBbLI6mQq5m+wKjZHO3+38muHzsqXqACSgIZqE+4nHrrnTdhKKbqQJZVTBz7FJrauOGBI1fKRBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5j5z/Gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5j5z/Gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6830C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734419753;
	bh=/Jt/o5tEcm1WTZpBJRPqFxobLpiciL9b7yx02kiHrac=;
	h=To:Subject:From:Date:From;
	b=T5j5z/Gne8Rz8v6+6BC+dPR6iUpXRXsnemzjdKR06cSUtynGTNenH813k+PvXcdtg
	 hCzQi/54YVEVG10VBKLDBP/uEKT/XCpotVEOcmz0pJtze5lFt9s+AigypPnVn538Le
	 iMfyMVZYQ+pH/eoSwkiPuuloaLWv9ezqYJ4+hI7awHTqD/hSp5FFHMV9ugjiQ9Gkyv
	 KFJ1wCQIzFEFmu9jpxpZqE2SnAs0bzzN2jg3Asm9BHTVLwe1GDPGHpcC+5rV46yimR
	 1rmKmxfveQaO1XPD341IbSrZDL5BDbE7y4X02Nf6uvirXCNcwJckWKng9levBLxA+l
	 TOjsiyqT/YVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96034E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441975360.21809.15537718243044118343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895279c6b6888ba4f853784e20c231541f9a537eb7401e8e129063062830cf1d
Date: Tue, 17 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734419753
