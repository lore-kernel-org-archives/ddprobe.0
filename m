Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3336E2512C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752490194; cv=none; b=FvggVXxN7t3UTUIz7fKP8G8TagRJoyoyYT8UmtUzkb3jBSWlXdnrqQwv7W3/tLd386xTumHDua/QkovZd8AFi2z5+4HslT3A3iAii2ng0ePSzMIHlfrc0MMCyJ+0BuVr32tWGpxKwb9bUsuUUyTAES2fwNBRLV6DxwvUFziR0dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752490194; c=relaxed/simple;
	bh=gIH6qEtsoEU8FCjT/AW0EhTMdka5CJy/6qi15wYbRuw=;
	h=To:Subject:From:Message-Id:Date; b=gSTR59ClLOBuXMxL8aDS+cFRKbUUYqOvJ/DwMQs+kGTtujuGWRxFjDXa972UOSC+ARWHu6XvwqDkISMEW5VE0Y0plc1ThNo8ZNpheY5SJrWuemfznz4vqAixp/k2CpCDiOolcQhLt/7LeMnQWP6evipoDcSWsjzsaK256BEcu6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbyR/rf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbyR/rf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752490193;
	bh=gIH6qEtsoEU8FCjT/AW0EhTMdka5CJy/6qi15wYbRuw=;
	h=To:Subject:From:Date:From;
	b=sbyR/rf7z68pmUj6b2PRaJ7wuaKhMcD7BtUVoDrYuyDP/Pfd8RRKN7LNWax/CTWbq
	 rDng51+3Mor81wzgAQys+zNixq/TZvBf0MtkZ19Vww4s7fyUFfLld1c/GewiuQeIAe
	 jIshvKjvW36u161jPpvMaaWnPIe0x9ezynV+nv4ewpfYRHpNVg6WmagYeDiowuIm14
	 ZAPh+2b3L5X5N96lQO4YBOkXuKoKKGAgNNpDjCvji/v0P4yzKO0b0O6IOm1z5ubLW5
	 37BaVH4PZJC6wLV2G/5swqAlX9PKFDcfSVoJWHNkO8ZIizWhMvFeWZeEUfcGGClYPi
	 HxPIavMh6qzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD2C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249019358.30074.16012439229441966702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99382466fba613b6e11bccd449d8704c42915cd695072480b487eb1ca670969
Date: Mon, 14 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752490193
