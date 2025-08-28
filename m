Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE17625
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756404594; cv=none; b=q/4mJnsJpsfhmNqvxEpNokRKu6NZa8d9vpHmcDDigWA9pEOA+aLDsvmQTn9ruJwFGBT2jOKNGsiL00IobdIwhABfmUrSMNZLhJOMmqFzJBcMhnLxDTPLOX5l9P9F1jMsknguLzu1xsUjNStOUl3NiF8JsimTcEoKfgZxwDDSfT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756404594; c=relaxed/simple;
	bh=EbyLGB7QShIggBm2ziMRBYaytLD3FEOIY+U6T1Z9tbI=;
	h=To:Subject:From:Message-Id:Date; b=rAHDyl5ci/LzJy3sdDyKUpq2ppAC0tbnwR0AZVF6i8XJtuptZvHhwv5BTGrOxhuKes8bG6gLop3Pbi4Bd1VAcQM/E6d2y/70bdMqNTjTQRpVf5OQ88nH83ZuaTl5obSfC9W1w4I+NWFjgE0ythXqaiOkYRc0PHF70rhktA/DA/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0jR+nu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0jR+nu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756404593;
	bh=EbyLGB7QShIggBm2ziMRBYaytLD3FEOIY+U6T1Z9tbI=;
	h=To:Subject:From:Date:From;
	b=M0jR+nu46+Xnhv68P7YHKvK5l85raUhKjQSCHO+wqd3lW96f4C3wFcqqm/v6Ee5OF
	 DFNH6yoJumnm7s4KvKwsUbGI0ghXghnaHguIFijE4bl0ftW5eYrQAqKsuDYZU7yvAN
	 km6HQY0mPGc8Dk4tFLT2gyS4z9CkiHOOtFtU34e+xqI0wT77Tjvtpc9IFfpykapUmr
	 0PdZNs6kisFoGAcSBqVwVQiatTKT0MMDoWUrdLkG2csUu8o0zumdthlP3jGqnozI4N
	 VFyuiir0LmtVE96tQln1EoOYQxYOcxvzM4kaMZm/7R8ilUwmWk1oXnm5QLYzD79a+Q
	 vPpSview9LbwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168EC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640459358.8636.9043529692668047855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007da07d4727830ddfbc8d9ef51327a380fbae0d60434fa4499dbe02d5e50f4a
Date: Thu, 28 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756404593
