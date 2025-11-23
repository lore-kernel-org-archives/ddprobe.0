Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258A115E5BB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763893314; cv=none; b=oNK0uAWU724dMm52HFJEE3l/mSD7S4F937AVRc+dTVmjekf2DiMJXlj3G5W05+LU2LZVU9Zu91BfjXaBhMxyVaXGoxxOyIdLaJV6cqyLIOz/EyDBXJSxHzLtUuXXTFlWoTBu7NSna2nXbXZ8iEOky7CR0pd9qVR7vkk52yajSt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763893314; c=relaxed/simple;
	bh=/b6PzbHNZ8b8K7YVeTNamefs5oL7krXwZTyp1Hymzfw=;
	h=To:Subject:From:Message-Id:Date; b=SqFwEYqDYdDxlvmgk8phF7Pr09fNxotkbRoNKyTeuNFS1mqz5Bjtf2b6CJHMLQjgfbSy/2zL5YRq4bXyP0XieBFcuTOsmu5VyDAVW6xiXMGESl7UkBIEqT5wPiaKr0UvglP19v9Cmrpqgpqou1lvJDAecsWJOqpet38irWqqyXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH3XXsYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH3XXsYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2ACC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763893313;
	bh=/b6PzbHNZ8b8K7YVeTNamefs5oL7krXwZTyp1Hymzfw=;
	h=To:Subject:From:Date:From;
	b=SH3XXsYxJfBLHGRotwFewDssyXQwFW/pSZ4EsWV+6LbFMK/4y2IfWs7CKjaq9cxDk
	 Y3/B9i2VKsFmuv2SCd4b1/LvZ5ejhQX2JBUkXXoidkbuHsLqj7duKaWyIFmMvoRN36
	 IT/qMCfOU6HKOUEwqqDJK07AQklaD/1Opm+876CPoUuJRW30YlX1ixcQ1+BR11wDKy
	 sn+ldZOIP3ybfIGyQOw3uGxi/eeDeFxt+zkZ6VNy3fkVDiWsxPYf0bDVhWFyTsZ966
	 lG6Nm7EvUy4kISRSyAdbXysH9lOpnkf9cSvqvQAmNAdtwSOw1jsdFeIkI8RBi9iojb
	 VZWd3aCqIgfWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D9CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389331358.1236.10746867070717485055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94443e2a62a15e8b28bd02da61db8ac065fe8106f6bd596d12b8d5158ae34539
Date: Sun, 23 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763893313
