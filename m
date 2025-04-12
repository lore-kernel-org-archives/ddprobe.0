Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F4910F9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744416594; cv=none; b=TrCz34U+Uwr4mxfKMv8FvRNpSND6rJSggq6NWu/5OHIow07nBUUWnkHAdptf2z85HPOW1PcJ403QGx6DXQeUzvHzbsDoLuV7bWLjR+6pAutsDz/xvxAJqfUXaj9veW/41M5vtE2sGDrrAyoCD1UrE9h9FAhKIQ9+7kIDzh2pKmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744416594; c=relaxed/simple;
	bh=7YcDcAS60hmlUykCvElHAlEdtB8WlktTpdjSNfJeEu8=;
	h=To:Subject:From:Message-Id:Date; b=QQMOfrqOBkgGgCh7trTRh7JMqZjLuxVwf9b0fNCF5GT5dLrPLiUGbEzgQE+44HU22fV0d23gxMatJ6HqWDB19e446AbUdzr3u4kLs/VPecwcRz5sPxShWVli0g8ZGzTruovQrXjUnB9TZIwCpu2AcZ92IciHecH2NOFLBoOAWlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IivHnPDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IivHnPDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCC5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744416593;
	bh=7YcDcAS60hmlUykCvElHAlEdtB8WlktTpdjSNfJeEu8=;
	h=To:Subject:From:Date:From;
	b=IivHnPDWOD9BGfo6xUbp2s05EXvKpTbGuBaJ20/+HYbnObIJSh5HI2b1BtD6TGXw7
	 HR6He3SCFYx/4i09lgwv/1WGRQgZtGiBqrgrBL5+ZDAnZfuvW0ejx4tFCVwDXFkvG0
	 60cmXvZ3d8lmiVqJ9IgZyPHTERuwN1CHzWSl7jvkpedH0C34bc/VkdNW1nB5+XSTYw
	 rVtr92l5Yl7eboppUEeutVObgHZm0PijBlM1jMv5Ll8GM7T1dFPv3srVkpbJ8DovC1
	 9XhIOSEtmOr2TFsJ56slfepZL/oFCEdQE5YcoX8kAWvuUzbKogQu84D29PNexEI3Gn
	 Oo4sN/snXI3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9412DC369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441659358.1554.610403861884026966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed733fca6313953c74ed174e883b45d034f8eb87e7d7da17187c2728193c1c1
Date: Sat, 12 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744416593
