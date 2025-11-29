Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7017A2FC
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764421974; cv=none; b=m7ahF19Ro01yngPk0kDMhSTac1loUCQrXxF2XhqL5Vcl7+u37229Fn/itkcm5lGg/3JAgQ9OFtHUgKpGm914hu/BDJCkyyWUG3yitPNWzL5gx5Sn6AWQaIXQRu+3MLGKGg3lNEpa3HVsHEE+t/9W2AMGWSrrx2Kw0rllv3TlRd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764421974; c=relaxed/simple;
	bh=KosPjqJMLiRHq8xC0XIswWiZcac11GpETTinhuPNmYk=;
	h=To:Subject:From:Message-Id:Date; b=jYSGz6ku4Ljs3KMRgkfMoDwKmc6Mzagh13by1vaWMiULzWaloD27jUXE7rwPkoXqNVruHYGx9BHoX5BhTYsyND3agAPbVycymY0S2vKGvOz65LfPzyZ42ZmydPLG5uCUKXdFe3L0K02+XHtB71uNiCa/ckYCFO9TLAjUBCvl+5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDsPji1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDsPji1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764421973;
	bh=KosPjqJMLiRHq8xC0XIswWiZcac11GpETTinhuPNmYk=;
	h=To:Subject:From:Date:From;
	b=QDsPji1iSxBjA4j4Fu6XaZgo6OGia0LhZXG+/pJD0w9wiyzGARbEvDZMdNGehiNSM
	 QjMyc0ShpCJfzKev9rQWWeRRMV0IE4XaQWtBYD6OpX3dRZwUfsUSRXwS7bN3sK8S7F
	 G0ctFLbEYfMU8I2Yg/ICy2Ra5yu3ReME0gu9BarpYHLBt51k+2uPO8KTQRjXmiQZ/q
	 GGMjjuyAAbfgq3sKIt1fJlp3zA0gYFAejrkc77StznBEuTROD+dpK0dPl5bGJvOEmM
	 6toCvJfKas5Rtj/hc43XMOpALpsDMbnamdsmmsVibKmuKr2n6maGz7TJKHkpaTspa9
	 L3egahmI//OTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93349CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442197358.16945.9778993578790379501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c8012ca6c9ee8f3659eb012af9d171e72f61b32aa55925af632427d3cbf43d
Date: Sat, 29 Nov 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764421973
