Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16364224F3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078834; cv=none; b=lM6dmQnYwaDA894QD4TvBfeFtWD0DSmfaAlkjKjTv+PkveuNw1OrYrxnTmibMxh7J+thfXathgpQmxoSrxsbMiaIMGmkn7ryBYxYT3lfUWRxpVv078aqpCYlQIqk5ggsmdXRV8xrDOCaRbWx2XXy7dPIMHQHi8nJMwwQCnTT6qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078834; c=relaxed/simple;
	bh=37I5kiYWJJMIEgqt0cZdcGrqlGGVfeajZc7PcmZqNP0=;
	h=To:Subject:From:Message-Id:Date; b=N66ClLP6fMco/86gNEhbwTiHqq5LaS33+QIdMH/VrXQvpa9JSVPo5Wtp5ydHrQUshNS6/0pxHMfAhHsZvCTfvUU9kPe9/g9iue0hz7s3OnFVv0Z+R7GFWYTbirDxbzClpExG310De2WivCc62HXw7dvbpN2PK2s03UeEtqvHprw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnCYM6Yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnCYM6Yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D98C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770078833;
	bh=37I5kiYWJJMIEgqt0cZdcGrqlGGVfeajZc7PcmZqNP0=;
	h=To:Subject:From:Date:From;
	b=mnCYM6Yx1pT0T/dj3PtRJ11fUevK8Ha+PocBCC8Y9FbaYLw6ylXTIhpB/yV3Xx+75
	 f7WSDEu9K8WPSWdQuzsz8UWgowG1v5QgkeobjXoZuSjOQlcQ2iaXF5DWqi/6j4yJMM
	 nFd0tVEEfBdoFODGDoQyfwa1UAYcC2kxlsxyZYt1CPe3Ukcf9tb/9kbo3EWB0IBGfA
	 iBJuxWDgUx/25LqAKjApFDYsFb84qlQqjqg6ZYs/AYS+9y5hDQkpXuU+GPf+vul9vG
	 UYdcYI2a8hXUdGwiYT7pMeUkdL4CFIWZB/YeKrNbSsYlfUgUo841FWVEujwf/cgiYO
	 CDNAI43sxl4ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F1E7FDF3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007883358.11082.12145441648077536035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152769332cdda373d90cf9a03d99bd6ba8490d27d7401ecfc55274ee52ae041d
Date: Tue, 03 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770078833
