Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1520A40855
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775721934; cv=none; b=ficIACKcvLsN1DucrAtw/YpXVWs+P89+zLveMP5G5snfED850mGPac1QMttUnU92JvAdCXD9OBw/xyDKp6RA2bESAhjqfKgmPZPhRhTsdLnTXgGuzAWLkSnHUfQXQkPu49BoCfsc1QqR4Gk+OEAbj+qRADrV/V2CwSLyo2oMtKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775721934; c=relaxed/simple;
	bh=zJo1EQLkEhG95npcWP1SGjCJLya0+M4inypO/e0OBYk=;
	h=To:Subject:From:Message-Id:Date; b=FStVR0tBPe3ONNCUk96whBhFlp860LfsMiDZFsc+yPl0qik24cWy1d9N713wVdYTAYUw/2QYEPc1SuLuAf9NFBonfcudea+PRnfb1jhjemE8VLgC3fuSZcpS4oeu3yCWJ1NVoXvuKi1vq2OwOLNVl1GHmHWWbi/mCZV7hDxvu7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luSh1lQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luSh1lQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8653C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775721933;
	bh=zJo1EQLkEhG95npcWP1SGjCJLya0+M4inypO/e0OBYk=;
	h=To:Subject:From:Date:From;
	b=luSh1lQWQbVd2vcsSADvY6EQ8ZJQK0/O23hUC//8YVrnbiiIMVFHstCMA4cPEFSxD
	 u8oEbED7TxnkaUnblE2nRdHyZw0m+87ULUuq1O8gOT1b8CzNKRAfgupa/MC+1i/6Gg
	 1mtFcIWg3aT9x+ITBgATWMBcb8YBnaG1fZ42mR6vZm9NdeNYqhv64L0fbtGQcQbnFN
	 iv1lxOAjMd2K8mKCNDiFxhbJb93nVW+0tmL9AML7kYzggCb/Jg4PtFeh37057NbLuB
	 LrUmiPTtu0i322vGfcgw6RtsYKJoMlm8VukhLSa/qPm44mOgIXZKTk77XGF9o0iFsp
	 jGYPJsFrNKtcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB4E9DE64
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572193368.4043.8169869956408387289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b7e2287a47e0c9a812bb921047f14306b632c5730aa44d886b286f8a849db4
Date: Thu, 09 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775721933
