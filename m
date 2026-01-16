Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133B9356A1A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556034; cv=none; b=AN1nMmj3A/iCN3dgGkZiy1h+q3b67rTU9Pey79/2KXJTF3wSQu7q4l2h3eD3jjlj7rxn6idG1IEvvDuRWKxMviX33T/wHekq4NeSxOzRy2N9lh3E4PaWLME7+4F4qUp/f0kaOKkAA3RYz7URj24cGRp9S0SgtdH+tWP5U4q0Y+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556034; c=relaxed/simple;
	bh=i+J66JG7CtMcgtukWEAJcR/OYy2sCqnMTczY27ibprs=;
	h=To:Subject:From:Message-Id:Date; b=W3w+7qiKhz+R9RnfnJGrMBSDSME85kWPismSMH5U7F4n2478Z4b7wwD7ZONjsa7BedLRn7f7jluxMjtTpZZaG2yhEDvr9Iq4sDcjtyhjzwAbhXNebfiTbxtGnsNKKx1l0SwoDt4H/IDC5uHnF8Sr906w2THOjEHEbYVuourNTgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j73WHyaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j73WHyaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B7AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768556033;
	bh=i+J66JG7CtMcgtukWEAJcR/OYy2sCqnMTczY27ibprs=;
	h=To:Subject:From:Date:From;
	b=j73WHyafg4I7SIQDmR2ODDRXtHdHypxOlNpan5/7T8hBi6c8cOvRCLDqA/48tnEyh
	 s5vWuFq57n/8VTWmZT07mfwfbdY9zScyisKfh7gVxzmi1UDiAgM59ou/XS+S4ea3oL
	 nqcodlS/6NqlkTNDOvsYV3x0/yZN8WWRoVVtP7EQ3w8iTMRvqVKdBcZveLeoUlmoa3
	 knMI2ekdB9o1HPCfg8HAvPsamNloo5KCpi/2ZJQphTT//RuoqaguH6uMbnoVqjPDQD
	 VK+IKyXlVVsJIjW/oTulOutHP0Grc3qmDfBxJw0OUndbV0rp4eSdVywxoD1+H+Ycvk
	 Z29DpaBrpkDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91854D4A61A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855603358.12393.8467174318343349306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973c161c7cc6f9b28084ea95833856ab3578aa86eba0baca7ab6cb41fcbb7f2e
Date: Fri, 16 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768556033
