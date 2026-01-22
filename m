Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D579288522
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769093034; cv=none; b=Wttqq1WVatj4t/FEZSQdOEwy24OI2F9sIlK8WTXrWmeYjxoD0Ar+S95a346HBidxcmP1DXQ6J/8tBUkqyb2xAWUNOW7BXiKpulwchBRdcJbIuX4SEKmP9t1VKLeS/vJR0qH3SJIZD2nAmrnliCo4rYTleUeDInZHw7DUugXdCfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769093034; c=relaxed/simple;
	bh=jb0fzDxNvgNetnG8gIrowq9jrQoASgwrYf6fpKVKnuY=;
	h=To:Subject:From:Message-Id:Date; b=FonwU/FMEISJGixz8tdWqwqDkIkSP5S05UWmGpSLj3kkmMFh4Sh5WETJfnXPDrwX6/a2MjXc2Pv0tOelHK56S+68YCDjFA9XCjNieeb9DlgwHJejFc/jRaePMDmWB32TR34yMb/qwwQv5YxajtBoElqKJ646lLUkwhqv91zOpf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqbnslaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqbnslaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2025C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769093033;
	bh=jb0fzDxNvgNetnG8gIrowq9jrQoASgwrYf6fpKVKnuY=;
	h=To:Subject:From:Date:From;
	b=AqbnslaRp8tLqfPVv1GAkcfwoXcdWKkPPk7R9SB5yjtGrhTfgVN/anDPr3x7m8Jro
	 40Q1u0g+9AQ7Wh6BwCCmcHObsfsLWDWIz7k8eNvyhHUPDWFI4bcNNhdgfuOC04gl04
	 b4xCFC//0C4utRn4dfTNTnQoTc8xhriO/CPOIwULgwxSkdNNq9vbvmYTqi5f3vfcL0
	 TzfeElwA8uit364odgI2oeDomPwQml/VMTtB2KdK1px5yXnsaZ9s3ITSmTD7Oj1edV
	 UDlRClWu2rj6o2wtnROEYRsz12CZySsbr5LBAXYe5XjMeZqOmKulHbCYqFa19S8i9Y
	 pXxHuGmtGIbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E3D3EE6B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909303358.15539.15599280426192317046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986b1cdfbce648b7aa13b243adcc4ea038940f18905ac488c3e602d6f7e8a3f0
Date: Thu, 22 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769093033
