Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E91C1F4C8E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758476994; cv=none; b=PeEYvkWKlEKPYdelqhzudqImqatAHB2b6wb/BgCi6avcu1LfQ1gtAFvb2BUGP4cBO92cRMLcPbirRNTx3sK1K4yLBSUpHXikrV+NsNVijaVIEvnx8iA7GueDTOWO2D+b0J+olyQYxxDBHE7ZD5DP7odhHRd+GGGgiFnWcNsOKdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758476994; c=relaxed/simple;
	bh=iDtML6b84YLspbGkSuVGkKjM/29FIykiTYpTsbaslws=;
	h=To:Subject:From:Message-Id:Date; b=LkdSE9cNUN+SKmjCfMwzMyOWXPFccG7JevQH0vXWQRScrWZ3hFxhjXzrB9XjfiS6QY+n3P7mgLcCw2wGrKarxQ9Z1jJS0M2NXcp9joVWccs240iv6R4TM6w1DoXCtoBy47AoRyynhc/Xz5qvTZMSPOSOaHk2sNjCwQo61c0qr1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX97JXjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX97JXjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F88C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758476993;
	bh=iDtML6b84YLspbGkSuVGkKjM/29FIykiTYpTsbaslws=;
	h=To:Subject:From:Date:From;
	b=aX97JXjtF0bBYHcLtIogjhTYRPZZi3LFQimp25tC9/hiYsX3aHoJOszNcCiDHS/94
	 dqAAXflvVuZo1WDbbxwZR31dyw4dG6rwcofB13AJ+QzJT0FJZNXColM/QllnU9zm9t
	 W3HWCq2B1fQRz13/WtHteTtFIG84LWrSJVOpJFJ0R2HVUC3cdNjBjSPT5Y/ebfi3EE
	 W/LEFsW6Rch5JxTmx78RQ210bJmCAVzyTza/HoGafgFuZWZioc4Yh7Ph3x64LNWmsW
	 hjofwpC07Jq8h6Y0lyAUJ60DqR40XOmrIv3LYRvN4qe7ZHq0lv0KChuvbyyeSRmnXK
	 SyI83AKcc9Pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B7CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847699357.16009.6338891421937199539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9945740e9cecc5ce7ceac19771fc5eafa68d7a90e3dd111d4f4f9a106870372a
Date: Sun, 21 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758476993
