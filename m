Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CD0350A3D
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771781694; cv=none; b=da78+zpu3mKZGbyEhowd3ceJOga8VassDxGh++k7SPAaXUmZOTvEz+Fz1HUk2NhgxlNxcA9SMn5nBGVZUuavpO6wiwRLwPnECEA33fHT/JZA60AZ/EMFuIOQKkpM5SrpiEFIwVyRUMIIvjgE0TNA05dA4lO5FbEZdaHpP62ZpfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771781694; c=relaxed/simple;
	bh=DVf/7XdzhgigVKqm92prXj7sgi9HCVtXWNM7gJTaurU=;
	h=To:Subject:From:Message-Id:Date; b=T/dOosc4TB/R1ahfylt+3wyL8HmtyOein4PqdVgfZsnedQjXQ6cLF1TSGxXpNdjBdYOKNc61dt4t6O+t6c6A8Il2KeBGjyCnJDKEnXcEYt40RnqeTQaBtZGH/Nm/BXB4OWy0PP26Q6m8/1A1pZSZHm3lFc23SFY9oSKLnqWojyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcV0moyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcV0moyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1317C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771781693;
	bh=DVf/7XdzhgigVKqm92prXj7sgi9HCVtXWNM7gJTaurU=;
	h=To:Subject:From:Date:From;
	b=hcV0moycDBd3XhOZ0opvkqSzvMk15E0jPMAS/nHWTQEalI2b3l/KneFu7+XGdgGza
	 nmzL2CjCXNP0lGCCZv1+vPSMUugnAiVIdNJ9G8BkYixcmousq+T9kmRGOMEdtDeP66
	 72vlcw7a+aedzpNFUbmLxvaCBZnwn7s3UT1Vjqu0zZp8huTEi+Fyrhzuh5lZ/buWFn
	 5bEVgwzzMzyBKl4J87eamRIBTaEWVocDV5B0oR4K5BbncoM+4dNGbaUMJPtFX/h0/r
	 hvBEIrylGc3I3pMufcLYOJpN5q6okAwIhxihlSArWn/4688N78ZlG15ye+FVjqV+Px
	 wSsT4BWDeLtCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF4C636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178169358.32530.13351561726952077692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315b8e44f52c198419f72ff7aa3258f603b2f7478215c070ec8e03c02c9bbf29
Date: Sun, 22 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771781693
