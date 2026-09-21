Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E4E45D180
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789981234; cv=none; b=CcUW4KHKM024zcYntfiM9XM8rUZcyX/EyRghQoEYWYDoOM0cMlMeKnJApkO2H1QgZZTd++2ZRbX9fODonFAoXj3x9XSvKEGIlO3+nHpV6COYTh4KLvJ2/8raCA2PayinleJ6T5AY0BCipipwTLlWji5mD0rxnop2wYE5D6+2WUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789981234; c=relaxed/simple;
	bh=0d059IB0rA2EOCKrnEUMQogRfqi8Gu6wJVFXbMky8yw=;
	h=To:Subject:From:Message-Id:Date; b=WBbh5Ro9ckO15Nb0IURoWvIfClBfrHPEexMPOX5ZCoj6rhHAnFP1KxTpL1b0K/UWU5mvT/hfU9beIKcgQQYTwBGg8My8kECf+eYX+rOIGrsd/lxovdWx4HxSINsvzwKcviwwXRo3qxTFdqOfdeevYi82PmwdmJjc6iFL4eH1gcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmlVG546; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmlVG546"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF62EC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789981233;
	bh=0d059IB0rA2EOCKrnEUMQogRfqi8Gu6wJVFXbMky8yw=;
	h=To:Subject:From:Date:From;
	b=PmlVG546S45mHCKobFNyjG50Vmv8Xt/8Dw5rZZROVjFq4238dChD49xb0zcjWr8nF
	 OelwUBlH0o5ulREBZoQMS5RcgyZu1wwYb2ahi9k+pTdOwSvMX4rPzlfFVWi7SqttnT
	 NCtth6kAOyz7gvo9Kyu8O6xO6giz66KheNd8YTbFamqwTxVP4BmTo+DPe6ioZoILZ6
	 4RhIi76jqz0IzQ+S2wzZOFkHYZ1Lql/HEy1Htg4XZJFQZlUinNRTHCkWW6eUrtzoUh
	 T5DNxYy4KM/P0kH9JEz5QgwGh1I0mY7oxglIeY4vbe8cp1Io2P8Jf6Rxf8T30ky/M6
	 IKVG9NSYZgNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E8C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998123369.22180.11239673267267940193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8556443ec83fef00c0e38eb08dccb0e0c18464e80899a956504d7411039d7c7
Date: Mon, 21 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789981233
