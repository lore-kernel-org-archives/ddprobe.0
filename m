Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2DD1E525
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717429523; cv=none; b=H8BWyA/m8isI1I70PkbiGd/g2Ndcz48paCrVe+62JMGD17s/lEZ0rql241Kk/8ZJB0+CB39q2oeOJDlPMSoWHHW+xtG1iEoSbMXECcRa4KBIsD9+E3fI7PcoRcmmcFDAyaGGslOV2TlF8jDVai3UWgrXJRVyQhtlu1LwsnjX5e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717429523; c=relaxed/simple;
	bh=iYOGmL5NFHyewrRIjRM2WFB2i8r6KGjCB/pdl88U2ZQ=;
	h=To:Subject:From:Message-Id:Date; b=cHAh7HWsg5G0fTiosFHex8PEDav4ymC3njGduh/SdDx6xwtNAF/BTMFFHhsiVODtUM+u8rJEcxN4tbJInze+dtNZGDSrHpO9xtnDr7rGeyXVjpg4Jjl35CyprlcLqCRS5ypTfjXmevo2oM5pHMBEoUg0+qKPYFFfQpMN3TAMnV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH8EHPXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH8EHPXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADDAC32781
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717429522;
	bh=iYOGmL5NFHyewrRIjRM2WFB2i8r6KGjCB/pdl88U2ZQ=;
	h=To:Subject:From:Date:From;
	b=oH8EHPXjuBGZfT+QAbj/l3SqF+USZG9dytKmGquPuTIcCwIf6UuhfgWfXWq4Mcqf3
	 1KYqwtYQQFloKjrKg+phUMrXJmKSNzv3aehTAJTkjEYjUKq310e42XpIO9yWAH8ME3
	 ZgorTWydrcIqJfvrkpn2eHK6qGL/qd3Pdf5WLc+DNuZxS21P3WNPB4MTuSZKgmmeJi
	 +2Wk0byFVC+Az9zIhiVXHL4c7Q9IaOXYViSsTaF1yh50wv4ezR2/uQBlnHw7eXwjpN
	 pj146jSvFvB6BBxEJusoexRPRd8iv27CByRQE6I/KutN6asP8AoXvCU0YcGDPSl8BE
	 MSq7oVqxwBxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7894C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742952280.14341.5908746694925248384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553b3f38b877d32fe7bfd0da05c6c2c97b54392408523bfcc2bf8fde7aff2e0e
Date: Mon, 03 Jun 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717429522
