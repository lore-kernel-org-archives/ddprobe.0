Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40801221F1A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744015195; cv=none; b=StmN9iKHfTAR7lRuT6X5Lpw0/SKJ9LyXHWc7L5kwFaV3e5pxdYkK9P4D+u7ng7FX4S56cS71l3iATlAmW8RB+iCCfN5z6JyLseWzar2+e2YAc5BIWfwDGOj49G/82SVj0wNqj/DKA+LMNrSRHY389UKFLtpP6zbHumT3HxVqx/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744015195; c=relaxed/simple;
	bh=c/hIxD09it6CcEeQrS/suii2SlKDqhM1jauPH+amvos=;
	h=To:Subject:From:Message-Id:Date; b=X2EQP/2VDv07OVckRP80z6yIZ1bSsI+nw1DFESlSg5U/aWOAT5c1Wk9id7AL9ltDajwMotZazyLQC8syFhKpk4Cnqt+bFn2YVLhY2ach1BtddjSriLzgdcAXxsW7DoFTldLRpUiPt+24vPblSso5UWJBEeACN18IVwUUAZ/NlUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoedhVfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoedhVfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9249C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744015193;
	bh=c/hIxD09it6CcEeQrS/suii2SlKDqhM1jauPH+amvos=;
	h=To:Subject:From:Date:From;
	b=FoedhVfnxC4qIviL5lJ0ao3Z47EKRYMKmnzuWSGBNIPeZpgEBIlttwXPxhBSSQ3HF
	 EUSdmqNg7XW7Tf6UoaSVd65xu6RXn4ntPFAHrfZtBgGWFvYn9C0ttV3/fzHPpUisq9
	 wEmMIh+56oZUO7XtLf1JofVzcib2RA2nTM373MkLYSGuxOWztfUSFrOlZgkNu6g58o
	 iCUnv45JFKSYxn+xRPkS/K1KdXtiQaRgEwhcrjih+u5yCR3MbKeCqh20wdu8mJu1lO
	 Od0xJ0UC4tf4F9q7vcSWFIO8pB4oQm93F1m97/5807H4jdtAaa4FGDuGUc+ukmxDhG
	 eueKSQsUfjvxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF7C3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401519359.988.11426183102901756389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36504aeabba4e03dbd64da09c5d7dafd04eb1bbd8aa5c7a05107a1f47787a836
Date: Mon, 07 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744015193
