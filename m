Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD224191F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755964193; cv=none; b=XnveNj2pkAHY5cWtOvFUXnnN/1MmqEdnll0nVe1VFKaRgEpBjbEaE6DvQWM5X4DAy8rIujYMNofwJGJgB1AtIgPaOurLAQPqU6HJL1LOB38hbkhy1QngUt56MC48bIwC4pIfcEAKJX+7pUSVoTuaF1P3FsMTkfERSLKADM5wij0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755964193; c=relaxed/simple;
	bh=V6JvoNOq2nb6LyncJ353zeLZ1j1AlL0rgSfxQTz8eIA=;
	h=To:Subject:From:Message-Id:Date; b=nPK7xrHyBriJfXH9NrFAbTC6BDncykLZx3/aXcRgTyoAEUyzUNMmekIha48du7akmkP0e05ej06o923VBAN0t/itC3lKGnlUvczDf06Ox/wbG886VVr1hfXRDvH4a61u+HIlN3v2DExMPsZjMqStLhx7WgpUZvi9mapdICcQzNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7k4LV2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7k4LV2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755964193;
	bh=V6JvoNOq2nb6LyncJ353zeLZ1j1AlL0rgSfxQTz8eIA=;
	h=To:Subject:From:Date:From;
	b=B7k4LV2V+PdZ3nH+uhubGzjDg8YriWZsfsRRcdj0j3ET9cwHtqdaRYGHAKVC1sRqp
	 0qUFCo568Wf9u9vTCvfdrpIkTCYf+7+L8QmEHClTvpLYpRAH51jJWTANgg+NHduC+i
	 6DmyFVTeB0A0Q2sD1cJ6AFVTgLGYqVOarpcTPYBvpkxuvXbIADQVK0gTSMLyl6R+pN
	 J1LeCFmmDII6RDoQATqqsSmJhi8r5uCKOeKJD8NTGghmvlN5fEIIgEywz0Y7F7BsTj
	 ed3QfWrGcJ14GoR1zY8Wkag4Zk92lSCRY3hVilPBwYgJufsDZj/hVzkJeNcoTDXA4y
	 Bs2XvbX5izmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF6CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596419357.19668.15069336104377192278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaefece5c9d731c6ff4c50433e6648863c70ccb85051873cdd2fed960c8c0955
Date: Sat, 23 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755964193
