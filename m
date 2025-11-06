Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F3F2C375A
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762423194; cv=none; b=EzVhYmLb2qR5AmUcbpBj+vDJAz1zJLYOTxmb2/wZQNhGYK/jtCi7omKsbJHfoENsV9ro/NpmwYPEnlncmUcjQ0yis4myhzGERiy/3z/ZenQL8Wj5WND/SrVnCAHJI6fKp3PU/KOZdMz66uXNEUmaWTjE2x1hhdV/yktIIimnJI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762423194; c=relaxed/simple;
	bh=AtO8AaDRZFD5NiBT9YaCE4vz10+3fSXQRZWVzedqb58=;
	h=To:Subject:From:Message-Id:Date; b=mpAQ+EIhhj8QiHx8cKSBPPsYz39uO2tn/Rb7S38NY/Re+/pL1wJTmTc4rZz4nL+cAE/Pql4pAOKsl0mA9LxiljP2b3tNlgrnjb3/FNpXuvLoSiBwOhWix4YBHKw0+h9kBLTaI1BqVfEE463YJUkDn3LN4VLbSPtN8YDf9fmxJ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkx4aeZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkx4aeZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8147C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762423193;
	bh=AtO8AaDRZFD5NiBT9YaCE4vz10+3fSXQRZWVzedqb58=;
	h=To:Subject:From:Date:From;
	b=dkx4aeZ3dgUnHLtTHnOPjPlXkjAAtdEQTZjhH+mwN4k4D8bEiFtupbyg1UtJ/HcBf
	 j2B/083lQlawHZ1ujfR6Y4LV2vbwrFKeK8AMZk130AXTGz3J89r9NIbDgJdH1bXwwZ
	 pZi42Fk0oVCpQ1v3l1unMaE0xeZ4H7qMv7vmqiFSrtdNdJnmRqj1ZNjlbdA63Npd/r
	 c/gQCgi5StOMwTt/SBVbPibfJPihrmgHT4TToh2KSvOzxKy+Z02Wl+GptLVWRiO3yV
	 SxZO5vwLnV+8Lb0RrMLxqopFVXTFA1tWl6lrmIbCERW3dM/PkJvBJWnNpAt6sq+heS
	 bwRTUzSkiirWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998ABCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242319362.17493.2212172614744930638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10c08f03301c473647457ca0975be32c0fc97329a5ba6a7b7cad8e33d0402c3
Date: Thu, 06 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762423193
