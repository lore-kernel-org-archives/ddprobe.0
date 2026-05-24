Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD73299944
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779630154; cv=none; b=qE8T6rILIXcxgIkKcJ00OAdClPA5HdEz1H+KblQyMk1a3zpSLZfyzLVpsYrAktSPVW9fjkjYwO7xz1AB+CtKPXf4gowlDeAQv2t3Ig9DDnDLZEc9/nqVwCRJMtmrNQP8//nYeqX10UtOiwSAbcjBWnk/M9vfyBDX8WGQ2OxaSpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779630154; c=relaxed/simple;
	bh=8UZsZCOBRufqnMlQ4jcy2S+A7WIOsNjtDIUppREeL4g=;
	h=To:Subject:From:Message-Id:Date; b=DSTafF6I0OOazTB62evZNhQstdqoxclMOmvqwHBK9ouc/8J9h9+JGCaJxBes1mdhKRy4x0KQv7wnRCp6GOzMCzz52YuIFzPqagEGr8FSFfvUA8isUnHYO8AZa/F5OoJ7jvKtEhEej8GhL1J/BbIRY6ku6StDpXzvxgKJN0N7lB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr7TvGsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr7TvGsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C33C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779630153;
	bh=8UZsZCOBRufqnMlQ4jcy2S+A7WIOsNjtDIUppREeL4g=;
	h=To:Subject:From:Date:From;
	b=Dr7TvGskE0fzsrTnRqtZblXR8xpc3LfORYeos9NjZlqzlz+xPLYwQLd4Yby++kzV2
	 u6bAKNkxL3od3TFRfsL2rN759pAjzXLQDAOEcvtYfhaAYnDlxcdxV0E9lSbg5hZWKt
	 i3baX+yBccBlpS57+FRNFr/szFNsJUGaU8e+K0evZ7OoqiSR/929KFTGXIPHJmRSdg
	 3ovz4T4j7qqBvgtwpcV2loZZrBbWzdSb/KU30EhaTEkGsoM/O5658oaYN7xyz4M+m6
	 ljPVWusBMnxJfT5+/a2vWif6HVW9FVELc+DNej1Lu0fScXQCDb7PvH6Hx7OLmhBX2W
	 NJ7kRvpxvPFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9151CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963015368.22783.196875136491170936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b553aa36b5e91320e4ad11e38504272142cdf1e979a98c6c1514b846f84c214b
Date: Sun, 24 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779630153
