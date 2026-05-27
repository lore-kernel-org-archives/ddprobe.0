Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31480369D41
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779868954; cv=none; b=PECFzJGTEWNMND6dYcJ5WnJLIrNBzq8OA+L75G7sC5Oqd3YqqtKzSpj2lRbvJwpg8f9lHRIYPM+VNc2GRHwHgyU0wlsxABUPmN1nkEiToBe/d04bdOUG8vw3w/MZjGozTp3TA8M3ZKv39tOiytcrzsAFxezoQdfsTmFJvQeQC0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779868954; c=relaxed/simple;
	bh=ILejKnRApV07rnnCXsMFMfVU0IbRUgqNfi/NFA7atdI=;
	h=To:Subject:From:Message-Id:Date; b=RWMgPgXzTqSHOZYmhPZhenWtm2MWcixkucMBLEwRixwdDOj1oSBtF+rMGhitbsXTQ8VZdMO0lxm4xcG0junTj4qY9XxzCnDrGhbcH1kKBTG3JXy6u8rlz4WElyxUVgxygnc5ItAF687wPiJug22tBjDuZHYHcXx48B2bn1YVjWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqNZvJCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqNZvJCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED9FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779868953;
	bh=ILejKnRApV07rnnCXsMFMfVU0IbRUgqNfi/NFA7atdI=;
	h=To:Subject:From:Date:From;
	b=VqNZvJCM6fPaOelvWhpu7qtFi8jr58oP8bI1kakwKIVSP7taxmAke1HQDC1jNpecp
	 E90EpubXVkHTFZMRCG4AVcxqKd0F1GR1zJ77UTz3F42qPNXIVL6UqhGRFtt4p8uRFd
	 CWNL0yx3RvL4rycObXd4o3a497mR0AcmkjDu2metvWDwb2HNQ2i4Z78nQbxabsu+qc
	 /yPa6QiRxGHrk+9ymUKUGtK4xPC3E8f57J1w+kg/YKwoXppN8J7WPucw5yYRin/XQ3
	 oT/97rZg8Dc/eKkKFaUrlw+MVLKNyYMHCGbINpXPlnLPfM3jwfZ1izDaLteEUWeu/v
	 X68dWVJsLMdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BD9CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986895367.30564.9707199417905052176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0876d909bd54d0e4cc8370a03a6caa244cac3ad07f820ebcd5f1857293204c79
Date: Wed, 27 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779868953
