Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA02FFF8D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776156454; cv=none; b=Qikx4Bb46WQXNr+Jw6i1XyU5ZOrGjZmprn8PD90QNMu6eqTyKmtSTEcd0SaRsFYIjgBODRJr47JD869SD5ZJqYX8n7o94FeKorS62cqC1/G6OniAEtZlY92G7SvX8fPwS5iHRC9QvJRQjX1FheK5YMSlNWlROvAowYYvN0hHh3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776156454; c=relaxed/simple;
	bh=J2ORTq3x15kVfaqSgcRMJdAViC8IMm+yHYd4LfwoILU=;
	h=To:Subject:From:Message-Id:Date; b=Yhc3gC8YCUKfuBydlJvLRHemH9pxMx9XQFwg/dQQ5RzFwQXMNZcdhwUbVDjyDrGpOtRFcEcdse2xncBW9qDzSZZRZ1bmgwOFdCkEd04zkGq5PoTpPLbiQcq94evQ+CjPkDgRC71Eumko59MHrCgojM5sk+ZrQCRT6l58tUwxpmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrPS/gFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrPS/gFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7E3C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776156453;
	bh=J2ORTq3x15kVfaqSgcRMJdAViC8IMm+yHYd4LfwoILU=;
	h=To:Subject:From:Date:From;
	b=WrPS/gFpIcN+0xEcJ/K7zG0jNZmzOwk/Rp7aygxYY53RDf6Kx+STcIWJfAdCCjlLP
	 MI1V7cssGpm3a55Qx5qd9FhoSfVenyt2GKj/McT2bUw3OKYImJrSbPmKfzKhvKos7d
	 mZutJv/IH880FAemyWx+0JQublQYiLJ0rnrIyJgywbmRfDmgabDurcX6y4jH1W7vRY
	 Xdf1LIxZCvZ3i8FCmwxWxsRkT57+fE47Sh8dTEe4QeBbjjAAudfiT5m7khrXOFyHWF
	 pnmMV4qqt6llemaOBg3gN33FYs8DtL8ReaT2tiKSyUkQ1M1VlrWs4ESAVngq5ZUUMT
	 pT9Y0A0qq2BYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EBBED7B8B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615645371.24822.10850947749828920321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5646036d9c0a86663b2a9a92e181713e43baa8e89ccd824ccea8765b7173ac16
Date: Tue, 14 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776156453
