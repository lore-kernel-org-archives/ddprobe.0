Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084A22BD5B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763775714; cv=none; b=Qtj3H2UJalMZIV1WPwGBksLHUbdi/frlO3V+rTK4fq5EzxJieRHnS15uYMag2s5CObd2AD5AdMcE5sH+0qmA/QTO8PyLWX5oK1OV8B/5+yuHQWv3KaKdwh7jPbvIH8PvEpNAjMOSZ/OMPncULBKUffrQ1Q8T/BX8Psu+cVSW1dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763775714; c=relaxed/simple;
	bh=Nbc+AOnt+lRs0PpNyYo9osrnaTNv9owrjvcRx7KgeFA=;
	h=To:Subject:From:Message-Id:Date; b=f4/7rURlhQsMkovU/MZ2GAbChAnqaIg4zp6y5gJtha4iaOdTzyqhcuisC19Kse9e41tLdpsE5VV2aWdYURSEySyUSkmSe8yibboPQOFh7E7PnXE/Ma5I2qwmN1cFcZHx9pPd1HJoeEnqUKqYZ/sjtGSxC4+rOteMzO1vhpRwh9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6ceHh4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6ceHh4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C53C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763775713;
	bh=Nbc+AOnt+lRs0PpNyYo9osrnaTNv9owrjvcRx7KgeFA=;
	h=To:Subject:From:Date:From;
	b=f6ceHh4u/bpzuJmOG4aY6cg4KN7DjNV0k2f6Njl0qsqq7wUmofhCZzXtQmo+TCr1S
	 A7lTU5RARo9rY3DCzrKVOuSJ8k4gxddmCDPZbIdL/inkF8+sjT9aZPpvD8UcICznce
	 bMAJMF5IL0VePPm01NhJu3k5M0d/cvPe1WmG4fEjg/1X9cDVR3jW2UZ0VlyEEDYMAH
	 orYUAOoAqqYZZaUArsDvJCixuVPpYjj5hfBXKLDhEst/y2Rbl4N6PWFwgaWIHByHV0
	 S6bbymuTonaiPhvcdldczd2q9cqr8SBho8fREbC8PxtFPIs5rz3fOHiLJSj63zxwU4
	 KL9wSpYYOlBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A9CFC516
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377571359.14468.1151622432273289758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b7df345c02d8edd18fe50172ca8947b48fa579d3910bf47f90d45110b9783f
Date: Sat, 22 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763775713
