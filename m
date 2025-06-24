Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CA719F480
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750759794; cv=none; b=m0vLV92SQJOUvbDq90PUgDehhxBjSui2aLc0c9L2oqPbvAxgkyC1b3WQp4S+q0jJCpjmRJ4nYyjtUFS9evMoqJ/S3t7LFxKtaEwH9Wl8Wvkle8iThAb1L5Wj108oSsXPvZPbKCy1eWss/r4poApLQy24DvXv1SlfrW2gWC4T4Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750759794; c=relaxed/simple;
	bh=iYdMhzkQ89EDxLbESWJxtTfLqD/b+TmlXPWD8yFZ69c=;
	h=To:Subject:From:Message-Id:Date; b=Boymc86p3LRpyoceJN0JldVlov99cSLhlS8aSWTbu4pdNe1bMBw8N1ntBPk6DvbunQVNVdKHxmta33/Sl2WUIOJSKx4WC8BpQU61gtojHAZH5sm0qOpX6s22UevCPGHkZdw0p9JvuAyWjbvpzF7/JrQjXCQ+52IWU27EgViyMDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWtJviCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWtJviCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB72C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750759793;
	bh=iYdMhzkQ89EDxLbESWJxtTfLqD/b+TmlXPWD8yFZ69c=;
	h=To:Subject:From:Date:From;
	b=CWtJviCl1ZH8hGezsEPtNBUO11MMPM7YKbNvkFlhUFMeuSB2oNdRM+VGxqc/jOLKz
	 rgFNRf/QEKuLieyodMP339d8EQ6Gx3/BzBDUvpbLEOzP58aLUzTnNjOP/dSlwcjb9W
	 zqkPPP1mAfmuNl+l8vPuzgo3RF81FrLtyVW1xKVN173k0Pwfi4Jj3eTWdAWx/eaRye
	 8N8lAdMRCnyzy3C05wubtzOeA0UqboToedRxNIZ95L7ZrBObtkh5cmODFf++j/M4IL
	 ulPuZfgkFuFY9XygtkQ8v8hUa9H+pHgxODv3nAYlV0ZTO2Y77YGow0qt2cwkdZERlR
	 bkxVy2R9CzwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB5C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075979357.19318.4835149439809047120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9445a094eeb07e30aa573e83d4b6b6cfb908074887cb1d69ff148c9fd1d9aeab
Date: Tue, 24 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750759793
