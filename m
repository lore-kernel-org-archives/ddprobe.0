Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD110371D15
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778371114; cv=none; b=A6AEIxHbqUYPYI3ww4uwV1pmM0RnbeCgAEuge0T2+xxYevpUTOJ69l+7gilGDnrhpgkPxtUQo3AVAJRvCCBRUt6SQZek68GFOH/iDM477WSr1Zuv8uMwTXX7RoMxZnsrpYhWxXtPE9ZRA5MqRn16tDG/3PvgJ1efnqAyk4HVKdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778371114; c=relaxed/simple;
	bh=q26zwYUSqn6z+SCg+vZcdVPuzUxLuYefAfqnjxff6A4=;
	h=To:Subject:From:Message-Id:Date; b=PJsktC5owecLokxAg0HwSAsgzT7KECQWKL0wYvfIbORergF+YZHmgVEDz982HXWDzAv5GjrrzXf2p1iMpQh214O9+IFr6LjD0QVV9o5SHHVmqsOf5N7YGCXkiDYZF6VAFRpT0dDWzZzq/VVvEmZqYNs4qcpTio9EtIGRvFWPrSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fe9eLDTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fe9eLDTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5866AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778371114;
	bh=q26zwYUSqn6z+SCg+vZcdVPuzUxLuYefAfqnjxff6A4=;
	h=To:Subject:From:Date:From;
	b=Fe9eLDThPfyKTRxfP8bi08AVgj/VONQhYD9UQzYby69IQWOB71a7r3Z751Vv50arO
	 PV6Rf2W1Ty3/yIKKvchfQq3o0q99eqGjkjQxAXrLZ33tTwl1ETj7c2OVXA8IplMHTh
	 cS5rqtOPWeU18a+fYTzlyDHULD0h32ayjTqZwcxO6icbfPSe9I6FIP2KvgjvVGcItX
	 xUxopTkqgDzJCLmxwar1kyVW8cPYfjxO2N2Ke2gtXf6tIzfID/MOe5TQ3wygagYDna
	 SN/ox9A0Hqvk3MDSdo56fH2x0j2GYJiPFJzIzZBseiUMatkMwCCljDlCfi75lkAtc7
	 48KeClQyFHEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC67CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:58:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837111392.27159.7771340373520564703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522e0ff72c0312eae3afcc1e8700f7f000d00fe0bd812b4e22401f978052c20b
Date: Sat, 09 May 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778371113
