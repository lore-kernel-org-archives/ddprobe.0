Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18308248D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732288554; cv=none; b=jRuEXmRegekShZyqU/BUFXq+2MqL+960gop+IptITSIEUQwbOeqCvfhuG9wSpQesV/v2MNWgYtRgJQnK95x7EHA7f5BGFe5ngpXsf2GjPMig/1babEvrGutcdft2Ug7uMZ4T4kMvV/ktGaR5aLIPydVLrJDl62R9OjoZAtC8PJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732288554; c=relaxed/simple;
	bh=kPJPjNbJ/PE91UjN+45pDTRROl4oI2vowHHU9GbFwTM=;
	h=To:Subject:From:Message-Id:Date; b=chD6z8fznpXFm+NFLgc7GQGmEshllYQA0e5ld5bKIjD2bSTfw0+nNAzjW6prITXjoj50KeHmTR72CoxW646NklnEurPqOXYw1w86k3ge3VyAoVui/XeCiCRc4hTzAl6RO0QQoLig2h0t3m7ouEfkHMSGHRBuyGiV8uzVxqqaIUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6lFb5Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6lFb5Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A89C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732288553;
	bh=kPJPjNbJ/PE91UjN+45pDTRROl4oI2vowHHU9GbFwTM=;
	h=To:Subject:From:Date:From;
	b=J6lFb5Z15cb0zfWvUdC+3h2BjYWLcfnc/CUzNfnPQ0jJ6XW4Fau2zHYAVa/HyAqHq
	 3Oxod6R32rsK3Ojm6uUee3Of28QPv+Wv7TVr5zd4gxExFC94q2Ql+CrAsxlkF2Lc0U
	 13faVgOo3tOVYJnD5zol3vFZ8fa4L8WzfYKbBv0TpBPY1PTXzZZPsw4u5vlDFYNlxc
	 kIznPswDrQ7lyRx5+heekK3scezNLTDB+7FLwlujOwbfetyDfECJVOBKNISRxq0qr3
	 WTsDlOpD7VGl6d17xAD2u+UyYEl0m0BmYFfTon9IcofDMj575eQ7DNmqS5rP18j0h4
	 0OomK95hoOurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FC3E69170
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173228855365.31226.2738473778852312218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1273bf15540047a7fb0ca5f69216dd3ffeb6adff3f6726251389628a4ef9a5fa
Date: Fri, 22 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732288553
