Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F9E35770D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769793234; cv=none; b=HcFTWtycC79piUG+bnCZRldbUm05b+M1CgYdBn+GhckxiDdSJi0T0UQfS401ykZaMkr3LUIUxF+0AXrmYuxDNemZK4Pbd9oN6QbiwXmO19mYXbmqPbUKuVKuA4wS27i00dDIttM0PF9T0TgLjDyybags/9whrW33kKj/HPSNCnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769793234; c=relaxed/simple;
	bh=FczVZzJgqB1HzzIhruoF33na5OMfC3/53r7KcJYEuPU=;
	h=To:Subject:From:Message-Id:Date; b=VB4kFyoym11bkpNlpZDIZM/MvawXzEMp2+pMrDSmDuXLJ0O5SRPrRWVtTBTzvF0rTISSuiUVuJ8H+ob6nol/glygi+qocJBRCd0UMLkG6iPhUzUM6s7+ouzTcT0rmMKmHCZUPsEoJScCgLcn7U0tLnGJ25TPPPaNAUVYqTZeuSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bllIt1ky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bllIt1ky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769793233;
	bh=FczVZzJgqB1HzzIhruoF33na5OMfC3/53r7KcJYEuPU=;
	h=To:Subject:From:Date:From;
	b=bllIt1kydZrGOpfDiKty+8cAFUtxE9AoNcDcJhk0hK4zzGb4ZUGUW2fYAbmeTtCpi
	 WmVx9bdLFdt0t122YN4fflxwuaTDtHhuHHEPNjvSWdh9qDgN3zQXvaoE79luyV2AkD
	 Gn06OO7nLrBIwEQZMYimFJA8SmeqhdN6ypq0v34KDY89CDe6mXqs1NsKu6fyBU7bIp
	 sOivwomkMNqUUbbUVAkypRF6mWqHU20DIEgQaKTDh8n26ZHzJTVcthh8IMVUJL5MA2
	 WRhuUnFs3n0GFnQHud9cn8Ys/dhfset4lA4LAokA16HkuoMQJYFfQ/oRyPG8WdAdmS
	 OipLl2VPySikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098DE6BF31
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979323358.8985.2095424939590727944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c324615227325bd753104ca97b088227c20383b3d9236f392edec8533cc3c5b
Date: Fri, 30 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769793233
