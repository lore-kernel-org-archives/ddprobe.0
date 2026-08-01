Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318A36F415
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785614434; cv=none; b=ZRF1Q0wB7sFDCz+/Eexxy0PPi1otV+sED/HdaBcxXovuW9oplvr/+ctofCAvrMO1K0FG7sf6uYSrhoJ5cYp6rYTTIMpcLeThP4Bb0zSQMKFFjLryDAnal4LmsxncxptjQKdqaTcyHW4XAFd//YQwxHC+c7Ms8sT1ZL6veRAhffY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785614434; c=relaxed/simple;
	bh=JdaiS571WwOQP37PtgC77dQWMc9gMKl3hMkIxUas960=;
	h=To:Subject:From:Message-Id:Date; b=OptvFo7YQKyZwrRZgBwAOZ4In5XgDPc13wKcrZvrMYQZZw6uKSkYyE5fRd+VnHm/csHBWsLh8XPNHOKity+9e65aiWz+FcrxiYAnE43dJHN5cQHLQ8vOdFB+Uu3BvLk6TP4QCUtSoEJZGCsiSjYfGFjItpt718+Ukvwm8NXHbMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUnIMUa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUnIMUa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18E0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785614433;
	bh=JdaiS571WwOQP37PtgC77dQWMc9gMKl3hMkIxUas960=;
	h=To:Subject:From:Date:From;
	b=CUnIMUa8Z3zol4IfmiT6UJBYekrTg652MdwCVXGOBD/Sgk3s2YcvhPbpIOoFCklTY
	 bl134l9IIUZmylid4m1f8EX605pF8Pj4kQLbwziUTrWVidJAmj1BFSGKyyQt+LIuLI
	 r8667PD62IdBtDytSzxva7QhTGy2rcJQ/xBiuPHIFvgO7Wyq60uDswFhOxvJdl3MTF
	 TsiF3MSWGsEPGiyVLJQLNUR9Q4iFkumRupXQ7OtQDLdS2ME1wj/eH14lwnY6NsdSx9
	 06JsqbyFb9jIQOe0AjMJAp8ZA8cOIRkR5K5bc2W8gmSffNktkeroDa9n5DLv3BaYRR
	 rikTZMTmLrl1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6A0C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561443368.18659.9293806062182790860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b587cae82959ee4a1fe1d05ba0695700eb7f1cafae838579229716fafbd96af8
Date: Sat, 01 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785614433
