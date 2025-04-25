Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313E8F9DA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745540394; cv=none; b=TFZmMXFgmjZmwhuojKsjsEbTPab0Lo2HWfsvwPTdpU7U23U1ixOMztv6naDJ53HqoSszf3c1PhNgy+0Ms/UAYfz9AqGtgNKxGieoH2ZUGx50tff1hPS5qA2Tv6DoN3EHcj+BofSv871mO5G7v9jFsYMyi3PsVIX5LVYazsyWEuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745540394; c=relaxed/simple;
	bh=1G/Ofxslg6GMLRpSr3eWjw4U7M1PJ2LneS4WjPb4X7I=;
	h=To:Subject:From:Message-Id:Date; b=Z9xzEyHrN4HSUxolFYpvVu1JwyKYnPjCy3L8dy11/zgoVBjui8GDXKkBkNCe2VeWu6i/L9PlskboVG7k0BnM0Wuvp2nj4DiZYemKsATTs8l1uX+nQhBIHXUnG0fr5z8BgnjPDD4f0U3e8O2j5BwcZNgc+49ZU1qNrrUWJ9KwTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUvep9nY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUvep9nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2890C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745540393;
	bh=1G/Ofxslg6GMLRpSr3eWjw4U7M1PJ2LneS4WjPb4X7I=;
	h=To:Subject:From:Date:From;
	b=rUvep9nY25+Y1ps861vNFK6bapjOX68wTDWqTntO2Y/0C4SXlGCuroBIOioqEhovw
	 jlRNC5IXzEW0ffwbQiKor5Pia8eDRn1xBlogmtyYwg2CRSO7BHNpv1IXqLWl6mGONv
	 ffy3YqaX+jVNHP/27qaWmhrzDvGrlPZ+qeKwIPTlITI96DJHYbxsM8HUxtBtJKMSYc
	 s0XRgmjj8CxEmwX3pMtWbEjb6SOueCPEo9tAFikKl9XjZPjb0f4rhzSNSL1Fs9Wqew
	 zwwzuoR0KtTLF1bzxyhkJuqyY3uFpi9sY85RFgAcKZ0T4hrt93zjUJ/9y47xY8MfZg
	 4LainLAEaNVqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92662C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554039357.21010.5207632887410164954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5b8758b9d618db56436e99dae954a9c2cded5c02a9af95aadb0e64810ae3c5
Date: Fri, 25 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745540393
