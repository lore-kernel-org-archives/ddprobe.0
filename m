Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6532EC558
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762162794; cv=none; b=c0wRkNoVcu7n5CNf5MJ8DQ09LCE39EFExNCVVjQOHx9y4Hcb5ti+Yw8dwBteDe+7UavzifQLzd47gQNjBbhKoRPN2qL0ds/+BeDOZ9QAJipe3WDyjBkNzi6qedR1vTuIp63Aq0MCSOdu49Tt9hdT/+lCelPMuCO3jkDA35SxPeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762162794; c=relaxed/simple;
	bh=c7XzPKYIgKNs3iAclByE/0ZJrhkI+NtvL8XVivcQy0o=;
	h=To:Subject:From:Message-Id:Date; b=IktwseA9Ad59MpclLT9DsE1aeaUDiLiJ4/e7nwSt+hlEMylLiY2F21pPuDjQUU3y/FXxJ8jJ+oMzjPl9Wa2ZH3jG8IPcA2m4Q6HVnlRoDyIXPW/4bSHiI1m+n1N/42Nz2vUnoyzvPNAJ51nGA1ZVPNHCpQdDhRGuFKVBybxCFo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZdxCAXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZdxCAXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A144DC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762162793;
	bh=c7XzPKYIgKNs3iAclByE/0ZJrhkI+NtvL8XVivcQy0o=;
	h=To:Subject:From:Date:From;
	b=NZdxCAXdn/e72oU9ijEigrQpv+Sxd8v4QuwQ8GERl4PbOPs38FhgRSkuYJgVPeQwC
	 QvnRgYobk7bX9WNz8YqMXU86TlJqC2T/uErDerlQYsLZmk/1Uap7sXU8AXDR8syQeh
	 kYqxnLMKaLit0iD1twzffGgF4dqM3Im0XmrYEFCPkGbXz4o+mE5KmS1t9+MvhTDkeD
	 bNvA6iHGMH5LcPd7Hz4DQ2+98LheSaTaJffqLI8eT6R3fXc1Tbujc+0qw09b+qkEAX
	 YuhNPWfKgP8O36C2TUW4dn4nujSkPplNG29Oj0oMaHH+d6sa4kPeTWEIxNjmTOgHYY
	 McNSYmEgvWuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90978CCFA04
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216279358.31492.4351561207548354362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c6912279cad91663c8cfc6e40a857e4497549d85fba0a15a1601839a787ee2
Date: Mon, 03 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762162793
