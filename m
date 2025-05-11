Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D9D2AEE1
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746948594; cv=none; b=b8uoWFkh8ymAwHl26l3TBhob6brQWSTgq6DndgdyaZJ7SskKhzD6uZSQOJNWOldGGPfUwVGNFcy8MsA9SXZKt1Z3vRrP29BsEe1atuhhByDT+PIita/8XcPtDW+tEeyfvL8bd79jtMT8Do8sdXWhjykPywmGTyL913UQamnfzJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746948594; c=relaxed/simple;
	bh=x6EgPgEDtGpnZURF8bDHBhwTqFUfI1RfvgC90x/Hky8=;
	h=To:Subject:From:Message-Id:Date; b=dDiFS0jc0KBmn3xFVh8fe1nJCGc/fw+sWNXeyL+A9v579CVhztA8MY83P0AYnrRuFFzT9bwVbqUMcUfjiZmXLbEWOuDf3eVoZry5n9SYWSgrap+vkNxVu+Ao7fgNS85TCPpjTjiaT2kAnD74XrQ3IYgpBgYn32H20ERQ2xXxJEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHzvkMKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHzvkMKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B5C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746948593;
	bh=x6EgPgEDtGpnZURF8bDHBhwTqFUfI1RfvgC90x/Hky8=;
	h=To:Subject:From:Date:From;
	b=gHzvkMKPDykhi2sFlG6DNX8/Fd+Hix5Qx7qRQ65ou4LU+tXsVzbCtTe07PiNal5NU
	 2S6NfBznDQDHoMv/VihoYYiyYCjcINi0XZSEVCI6uFCN8SQZhj94cnWwyRQdDn6u76
	 v/LNwpkQuaxqNhtrbvSBHFMsz9T5NcZFjD+jeoELyGH7wezFbq+4DLdri6xRsDBAvt
	 Dnn9gO7GIJkrU+qFIl8+J+fM8qL4e1ToqHLzikTfgMpcRoeYRB8syifa2BZf0hBAJJ
	 7MO93QG7km0AK7Zmocy0NPgy2W4PG+fqTJFFKW+1fPtTa2WheezY/JBHDHDg6OsgWP
	 2c5/r5Fu87faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9EC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694859357.31170.7285009999268785363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8e154a76e7be80ab57501ab9ea003b6161f3be45936172b94e453ee4e73e4f
Date: Sun, 11 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746948593
