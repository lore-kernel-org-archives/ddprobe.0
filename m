Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2046DA926
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730628954; cv=none; b=IHW5EGF+JTi/E4S4pSwY0cgUX9gVZ8UAaQ+av38BotrLXYlFKsN/3WsdfPzkXiXYTzZhuKzpfiQYzvvgEBJ4xFtqsORnp14Xic0/ErG11tXJ0IIPK2Bw/JhkwNCpxpKiDlm0Zw+dSHNveudpOPl5r25MFgI9KIj+Mtmiuu7Ez8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730628954; c=relaxed/simple;
	bh=H6J01SqhJA60BwtyErV/nQWrlyd2kEUyo7FMOQKowyE=;
	h=To:Subject:From:Message-Id:Date; b=EZTMh5FpEERQkHzzuRcd4psdeb5vrNpiuIj62gJ7NeircBKt2FvYEFoE6IjyZrNg/v20Z3q9BHjy/ShBZQNHy2/SkgNiY3qcm/PM0fN2s7k9OZjhcpNargtZoEJmUN51uO3ur3RELYQYzkUelMN/qocemJdl1a+F1G/VwsxGJUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvK5TTlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvK5TTlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC5EC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730628953;
	bh=H6J01SqhJA60BwtyErV/nQWrlyd2kEUyo7FMOQKowyE=;
	h=To:Subject:From:Date:From;
	b=gvK5TTlxmE2wk/oS3vRA0PhjMg0aRUwDWTZSKHiH91aiVp8sL6EzW2U9F1yUHfbfC
	 7uvXc3bmTsOuYz0megaTOs8heOpE/IGZ1+Dgkag/XPV1kku5ED1DOqJjQUrLCNQphf
	 M9Q23qKV4Eq5gpctHDLzlUdDB073N05leDr3CNRTAlWK15gGLLjNWfdUhlLmH+zBr4
	 CVFKka92hwIAZEApVIU8T6QHLMOYV3qGz+UeyY76Hcr36v7Rsusrba/lGpANkLHDbU
	 N1qtWn5EYaqXdDmVKlNkIGdkCIN0CRgrJ0PZfdghdzm+FCLccnKKM08ubq+99UtnoX
	 v9r7q8yVKBW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E8DE6781B
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173062895361.15938.17929574069273528665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600d6de0d53278f4c6f91c1801cca23ebef3359f4228b57672b6414d567c2886
Date: Sun, 03 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730628953
