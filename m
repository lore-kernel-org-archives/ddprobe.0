Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BF03A16AB
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778503834; cv=none; b=N9qCc+Aec9OiWcjiKTWflCpLzvSPaUm0wFWyiGjSYkBN4j7/EzgP4lwguJMu3ZaRR/z1BZFJDxDXcg1OL55LTtPx6xiTRAZCGhlV+NS8I+diOo02jxSIlaruJGiesnqj4MJgY0+WQQLzvNRAu2FZEZ2r+QXUoD+mj50E+lb7Lyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778503834; c=relaxed/simple;
	bh=rJMSYacsTNTxfN9RFo4XOugcBCGdUpR2Fw0gLs2S7WI=;
	h=To:Subject:From:Message-Id:Date; b=UPDykTmxBcQxSuPAsyjUQhKTZStyRRZz6lOdl95ZJAUv9uEEGTZ88WhHmyVfXz4BtUMGbHQdZGOOjEpBXR8QQcw8ASV9jd3j+XqO/45hRWzviVAeOtNCQBysp/fw/fR8uHQ5fmELMx8Hgl2oueMs5xcdkOXbQAYM8iCOuJJFshk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tf111NY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tf111NY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEF3C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778503833;
	bh=rJMSYacsTNTxfN9RFo4XOugcBCGdUpR2Fw0gLs2S7WI=;
	h=To:Subject:From:Date:From;
	b=Tf111NY5pdVqAC5t86RhMnO/LTU2EUdkjmjd5VRIaXdcqm3SeJWHEmvHtHsccdYtd
	 hwEnE6odHvOK5ebOUWDXYx/HILSsEXkjg8j7RZjEyog+s2AhQVvkYozzi58Hx+ebN7
	 wzz2v1ch69sIOzfPx9ie7xC9H+3fLIpAadUIb2ekn9qMLw+YQJUaKQdkRzVhs1X7vD
	 0DPWxWCY1xVQXU+D+/1ATbIkeo2K7BXa/n4A5t9a3iPzC/+xfIfDBtzE58gEfjytma
	 QToqWiMvZ4EKTF8FD1WSdk2+Lzr/gvHaLe88sz/I4QXxhY2esv+q5tI1n+OCMYFTQQ
	 7i/HfzzJInQuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF69CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850383368.847.2248450390313560402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f440c30610dbc6ef94d15624399afe082556f6670af99b877d649fae32cba2e4
Date: Mon, 11 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778503833
