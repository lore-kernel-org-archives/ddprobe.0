Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1F23054DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760473194; cv=none; b=dttfMSRxGLDBGiGg9mbCu+PbmsaWW7zpg4xer+wj7LXZcG35LYhaZHSGCtv0bWAketnrRPVMj6LYsn4fieMKyYkamBqvJYqDAQtjprh/E6TfVxXGbqghkc1Qxqma3yiM+1PCKY7uMp6Rj+j4GZoeRxddtm4keORDi7VnTpQhTAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760473194; c=relaxed/simple;
	bh=dR4f1BD+DWvj097ElhOad5g5ENH9FYhbQwPpVgRfYnU=;
	h=To:Subject:From:Message-Id:Date; b=pl8PvROX1AZiAV46DHY6CUARoFzuNePt0U27ddFlA6HjVVA1P0ANCjTWoXgP31lIfgOT+1mlbDYcuCnYsEVFCenqMXsEeQH8DQRelrFlGZKF3fVmz50DNQ6/gD8BgkQykPRpBwg4k6sZ1CmIkJmEFrznnoOnCU322zvlV+zOsP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXEl17Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXEl17Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035FC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760473193;
	bh=dR4f1BD+DWvj097ElhOad5g5ENH9FYhbQwPpVgRfYnU=;
	h=To:Subject:From:Date:From;
	b=hXEl17VdzikaWiTLqiON4D4cd3I1A5740QTPm5pt3jySIsp/uJDGDOm31SyXz0+bg
	 5LFRIMTfrjCoSPQZdTiICcYztFc0rpSj74t5dfzcQxBXFPJMB0ZgIN+ww+UCQgiivK
	 L2p4sgvIR34HcXe5YNFFPwdCYShhl2cqpDxk3OloSnUR7JRQEKzO+6MoRRcCP7WiXZ
	 4O/1yLsskTGx80bqXPIebmV1zwucCRqtW7oVf6MwpVfsNibQOF1jm3fOEKAyy2sAJy
	 QNjWP4KU5ZY4x25QDotOUdrWy5ekmGO94EnzxejI7n6y/TUaXiuHnC4eXx0DxomWCf
	 urzq7LvOXPlIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C2CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047319358.13774.3330842961865053462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac0ebd215b009cba44d50cbd92d1ca66a8452d7d8e4e006badb8e9a4576d185
Date: Tue, 14 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760473193
