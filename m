Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577A0358378
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788487234; cv=none; b=g2TGrcT/RjZdzSfXBgrOvWLkZP7kvW0jQl6a1EqqQTqUh4sH1gckF4VuWb7ZBKXcuod6aI4sP8lKTpUlpVjcptZivNfT/uIa93yZxOXKFECjrR+gBQLM8i9VeJ1tvLOPBhP4Qu2RXE7EWfkSORRTIGmFdNbVL2v2h3he9ad4MrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788487234; c=relaxed/simple;
	bh=fHtZSh+oLUGk2NQ/IIvpSNPKkATZhe754TgVu9FQJ8o=;
	h=To:Subject:From:Message-Id:Date; b=st0azNfiF9MALcj1A1dclkfI0RQtXdzWmWAMqhywpkOEx5ZnYDczSaYap7AqYkvBEezNoZYBocp1apXTSS45TxvpkwXNc9adyhok67NWKiQEOrNKjoK3DNtY9gGHOkQIy3kvifmwreLF+/mAlxfCEo8sGysES+m3hQT2gART5yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3Dbb3Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3Dbb3Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE05C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788487233;
	bh=fHtZSh+oLUGk2NQ/IIvpSNPKkATZhe754TgVu9FQJ8o=;
	h=To:Subject:From:Date:From;
	b=F3Dbb3HvlsGADWL66mWLdpzZOINlVlBDEsx0hPgxgRIyWECPr48XLlTa+xAFs29B1
	 vq40HGu7liWIJSE5QvDWf8HwfYDqAPLcDf9jwZqCvU0UG1mUjVf3ZbVv1ViJxo2OKc
	 QGrakWZMncWcynsYWEvuZEHFHYmN2Q5xgs4FUsO48araJ8u+zsYde1ivoPlr5nB3R8
	 ObPcy9+p5WUuRE5sETafExhbMfiJ8mFjh4FHlfGsSbHulQya5IvIVw0HC46CwcGtzj
	 4mXpsg72pyClJriFIj4Oh6S5w2X11dIdsCZkTEC5DqMJkrteedDodQfw8yn6z46h4p
	 MjWwBq33hMwhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3CDC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848723368.24233.13844569907544260119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631d59103155337da49252b80daa286f75d575b505ff405e2fb897f274b4f6c8
Date: Fri, 04 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788487233
