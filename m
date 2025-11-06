Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F23302775
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762417794; cv=none; b=tTsGfWjIJ8qzK85R4G3saF5IqBwmQwZq+17UUqjgB60jIxVxNS5i9evUxHVIhjFAaXP1LlEGalxGnKyMorb2LlXiWZMXya1lb7rOYC62fekEXlQeSn5dleIBBGfgWU/vcWv56FVNXaxljK0wkGbpvTS53Tjrhe+llJu7L0xDH9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762417794; c=relaxed/simple;
	bh=i4ZnjCdMnl+dF9LShtcdQ6zBhReJt+nKjn1xmZwTXck=;
	h=To:Subject:From:Message-Id:Date; b=fRuoL6TfWs7IshuPso42aUk+zpyGkZlcDMqwzSDR1S9MYPISDotDqfnIMtCsdC2vts8D/kon5yGZ750/2noGXBzFLlqDab1K4WUBXQZh1YOSDTyhkIga1IsdZfzZsaP7WzhoLcMe+qlc6MIcO9T0TaHWZ3Qzq0dUXYTCebt9Spc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrkMr1JA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrkMr1JA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6158C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762417793;
	bh=i4ZnjCdMnl+dF9LShtcdQ6zBhReJt+nKjn1xmZwTXck=;
	h=To:Subject:From:Date:From;
	b=SrkMr1JAqDHsPkCVwE74kUrb8FkEDwddZj524AnWvJ2CvVW4DttEPiwvkqGDwc9GW
	 YoxGotdqo7MaqqHV98iLbN/p0A3HtiAoOrk64ylcLWbOoi7hexgqSNk2ysQEi+wi6r
	 qIkG3BfASnj3FdLdsk2bKepSl61F5/curkxV1IYfzb7hfEnIsVZ2ehoSQFpaeTh7CG
	 B1WVleBE8+EzuyC9+La+5zLC27icibjylA0SRIER7g7U7wPYnxuIGuyekhi6Noau8B
	 P22NzosHAlsn06pOvapKdz7BCdvQV+qB0CJuKQBmbqqhzFHVfs55/NFrS9daWqVv0s
	 BdwxCtpx/pqHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9424ECCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241779359.10822.3855074035295807480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2460fc8ca1226bdd07bac52c7c764745833448e4726f6ddd6d7bec204e68bbee
Date: Thu, 06 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762417793
