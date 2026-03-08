Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7F99463
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772937294; cv=none; b=Vy9eV8cXYtH5DZh7b5OUMYQHeGHHq6OXQiY/PpL0uLkGIvPJSAYjU/zMKeVLSeQi+tLEjZxtmpAi/wGy7KSzEoWr0vzv4+1c+lwLrvyEvIcO/fhKJ/wG5lP/vCRr21lowjU+XOfU9Go9czM2VSSKNY8CcXtC84bAqMftgnspxM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772937294; c=relaxed/simple;
	bh=59sVKpOUeA1bvOIgC5oCySkQuxdvQbRX03lwd3cza/4=;
	h=To:Subject:From:Message-Id:Date; b=ol5/PjQF8AedrBwUlgXeFEw4bLGFm8n95b8MMewVLbLl6c5hbNMQc7KRsyS5fjqUYnpBhOFFAB6X0+b2tY0nOhkirxW0+1+XgRkrYZbwiAIKuTAWSb0YtppmvmQt0xNdix6nXGu25MS5SWYrRadTUrcdt50yqDnmWKgBTfliM9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufoUYOuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufoUYOuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A8CC19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772937293;
	bh=59sVKpOUeA1bvOIgC5oCySkQuxdvQbRX03lwd3cza/4=;
	h=To:Subject:From:Date:From;
	b=ufoUYOuCH9EqJDlpw8Uc5tH9c1SrvEsXhh92e7EzIYoH+ZXrA1LNVyvj/Ur0HikBd
	 dWaLiEYI99Fs5XDYNUoXmU5ipoZY89g/+zbG9vfoU10+vILh/yiYa3mzs0EDEreukQ
	 HoaaCKNJO1iN1+f9k0AMEJBWBuYU2CZxCUBIAjk0pe+YArxo1mzZ1yzq77EMWuH12M
	 cH5FpUVfjdZe2UpPpOsXP4SlfEYLT7pTerJiFS4hfeRGVRcXHXL7+lnIEpmAYjg6QF
	 GcQewxnhGRJBbfcSBKX+Naea3oBVy0zkVrO5XtJ1Dbrik5MhjoWwF5RLB1O0pGCrB8
	 QcnFgi60wkDng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408EF55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293729358.19664.4671016485261972740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c78adc8ca6a4ff75331206567302d1f63d9eef7e90cb613e7b8bffa48656778
Date: Sun, 08 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772937293
