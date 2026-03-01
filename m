Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE02D7812
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772367294; cv=none; b=KdjxUT0So+7a0sM808ZPylbU0dxgxs8Xp9WmDKvWWL/JHi3Yws12mZ42LUd+QknXDiwB3MQ8X8rD5sv9D6rqO0F9n9ExG6vLNX57LqrlcA6sZNvIOUJvSPYEXYc+SgcCm9I77MwO0dh9lUk12ZBqhX1zjYJZvfAWSrO2peYCVb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772367294; c=relaxed/simple;
	bh=imasVwQcUfegEn4l+c6Mk9wAgROhNT2uwHshCbi3G4A=;
	h=To:Subject:From:Message-Id:Date; b=Gz0oLbZyIMQrWxz7nEFuN1K3LB9UZtCsMxmuLr4Zl8mf4Ki2kDkldUk8RwypHQIQTCaQq4FsJb9T/2zFD37keEzlbwETmFWYs9Umtr+dE+lXmnyFqJ3A14Lb0G9gjHH46a340eknhBy9Lg5X1MgiVdI1A1fuzI45GZKslq1VbOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lylRaNAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lylRaNAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D3C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772367293;
	bh=imasVwQcUfegEn4l+c6Mk9wAgROhNT2uwHshCbi3G4A=;
	h=To:Subject:From:Date:From;
	b=lylRaNAGJeWPCxNCAR8VrVIvGeKmR7sEqdmfqORKd5Uqp/3ERM8AY/1u+m5eLYudE
	 msblK9RjHz6dxI4G7wRlPGAfQ0NpD56KmfKo798TOOkZORxqQMvicobXPHqRuDhEib
	 vPFQFiKAJw3AaLsOvd38mv+vn3rpEtk87mHzT2ye49dwJljufLfgzPk8ObU+0XtiUX
	 dKm+wdw+EilbiwYHlkQFuBU+dYdtdyW+HLwc9EHrWdK0VZbis21xlnTSLS5crgNHh0
	 rP2P+eocj7IeUFLgeBpvx8y8MaI4SsT7KyJoPOqBdtn15PxK5NMRzE2EHZ+rj6K/vC
	 92/s6hePaztHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A5DFD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236729359.28927.14442510218458394443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6774fe313da94da8db684796e011a60e6ee164dd88aca8d64fe94753a5167cac
Date: Sun, 01 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772367293
