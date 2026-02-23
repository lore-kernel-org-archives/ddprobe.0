Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8821366811
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771852493; cv=none; b=a/1rkoiqv8W/tRL4H6vt6TsQG01nLwMrRszdbMn91u/+4CPDv9wkA5ciqe/whfPPzLJg0qMBWcTh8GlKDXScmReWV4+jEkzRK975QCdBd2RY4fV0mEBnInoKtSgUFpeCRMny/W0e9Wz+SG+3eWunQ87NPTdaqrl4KPWp+kt+S8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771852493; c=relaxed/simple;
	bh=m2ERUkUtUSiraYhSh/agB74gEOuDB0eocEJDNdYtnF0=;
	h=To:Subject:From:Message-Id:Date; b=ddug1pAM5a9BXoztG/GlDUAnfcHV4s7QUFshkA0eggETLtkRkFFbqGwHWKKaldIz3FwDUFVh6+spXBV+HoyP9q7ivPYBW0ZP/IDAzzufgQdjxTKBg7RC0GMf/pVrudUg0ywL4llwPkLSC2ez1+PqsbVpkSSo6VCbiu4u7yb9lsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV8NvKMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV8NvKMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A38C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771852493;
	bh=m2ERUkUtUSiraYhSh/agB74gEOuDB0eocEJDNdYtnF0=;
	h=To:Subject:From:Date:From;
	b=HV8NvKMAIbaYHpn+oFFmE4OPKZe2jPkNQedv0Pm02eWEpC6ZqLHmYblkXoRnvQtV+
	 bRZOssz4OeRqh09yqRMDsLE6jMK6A0fd9jSR8I/r2/naTwobgL0OaKwiB4X7nooSl9
	 y4cLg4v6yaHYhrOXB5rZO3BH/C5OL4pn7yxqDCN0KisL55fhwdVETvL0kmtFeHtryu
	 LMNIfa5a5AvE+Q7CfbNYYn88N2onvO96mBV4d/3al33ZkbyE60WmElIwf5yAh7VCGK
	 2b2mIT/sVCNUBHsCpBKVzDs52GzsoRzk8VUlfdeMZi9H1ayffUwPeXFPqeTpl7SdqP
	 bZs6jd7WlwzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFFEA4FBC
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185249359.8116.9514470186687456061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889b33dbf168133d1bb27e814622458965c5db43d29e0c341599b246de103464
Date: Mon, 23 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771852493
