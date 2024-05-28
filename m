Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB3F17B4E7
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716932663; cv=none; b=GLd+L1hUWGv/kQGOsl1ng3aZWU5BQcLubeg0IwKrO6Rx+QL0VwAel8NnvKqIHOCROk4fg2kjNAAyOT8SZ6RU1Qv+H0o/Fy1Qtjj9NxxfhJRxXhT65VS1nTXl/K4L27A0+K/p+SCkAT1Sl2mb4jb8I5yPr6wIsCmASD1tjdMBYnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716932663; c=relaxed/simple;
	bh=Hah5YzqtAfQU+OHX3Tji3dMWOVCDnrRLBZE029CBHvs=;
	h=To:Subject:From:Message-Id:Date; b=E/OH7lN8BhMr650pbm4D8WeRXZ+2B50iWP8OcTl/9YfGqDen8Z0oM5v+uslHyc+G0zzwPdHrIasgEAt8zf01CI7JfW3Nt6ZbtbtsVJ4DNF+zhLlaZhxmNQkYZL8+N8PjMZHKNjlT0fLMV2raUPJofXYmbqUR2V4xqvwmw2lFWow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfTcLfN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfTcLfN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29DFC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716932662;
	bh=Hah5YzqtAfQU+OHX3Tji3dMWOVCDnrRLBZE029CBHvs=;
	h=To:Subject:From:Date:From;
	b=UfTcLfN5z5AbWvNs0X7rxzOy/ZiA08sfz74rPAVDa/ZOZD+0Rp3/ITAkgKCE7pTdx
	 jH2Crsccn4XiJstfaYdaBdo3bIrY4zUHSVwTChM4Kfe/jWvq+lPOz/tmuADC/BUizj
	 zel9Pi3bpv8kiSZaD8iTfl3IZtSvS7ywr/FQsja98tNHbjBsUj4lOKh2xqLW9sV28x
	 luiuKFeva8lcIQYtIpChTBWNNpMXKEieqKVDjJMnqbIfSDJWtx3GbpqL9QjiIAp6nQ
	 oHmsitTc98+ArS8yBQSoLrgyGQOph0b6R+jsqpemVaESJb8PiUCSWvO2TtL6iw4EYt
	 G/ANBZ4P2Agng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C53C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693266278.11872.1215267743224191499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da52fa03167ba170f252dbdd4b123e1c381044a28b3a3294b34516b7d34a972
Date: Tue, 28 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716932662
