Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A6E264F80
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785436234; cv=none; b=O+UrxpEDc8Y7Z9UW0iHP0eSDrF2Gwmgyme3V0ZrBIL+VphCcxpUSZ0230J4BFz3J/Q6HYsYYU6bNZUf3dWcbWSYifs6ADEMz7EzS9joHahuOo9ZfFBjoryf3EI0BkOU9cTO1Eh7SgOw/bcPQzwi+obUajWRlgPWgSov6LkOFHQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785436234; c=relaxed/simple;
	bh=o4/pJGDk+/zgivYorkFIQbSeaPtzZwwsRNbCgrb2HgQ=;
	h=To:Subject:From:Message-Id:Date; b=oIsQZMsaid5R0RpO27ze6vPPvIe1o7ypKnVwz9hGmqojDF8Do6CWRLe3m1ETNLfYHRqSCRzEbtx9evialili0mSvA5vBaG1aLLYCPwGTri91jp0Ep717/NYGbmVh6AKqmCfrznRgXeaSbjG5HAL1fLv98P+904qnCvZum0LqDB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtnpN7UG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtnpN7UG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00E9C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785436233;
	bh=o4/pJGDk+/zgivYorkFIQbSeaPtzZwwsRNbCgrb2HgQ=;
	h=To:Subject:From:Date:From;
	b=EtnpN7UGx8rzE5vz56sYerj7ZM/mAF+L5uYuMV8C5xVBMg/iKVc8XkXjeOfJffWPi
	 oUcQ/0QiCZda5NLo1QfkSO4rEJN7YzlBncmZQK7Nuyv34tDN18InNaNiWal8jeK4zy
	 x5tSFAsZYw1GmPKtE8j66ZRTJB56JQVlcseMI8OUGFzMmGB06RwUWRc99Z0bZG0aNo
	 WUsUoNJUBolsUyjljWgBua3FdIzoHJD08TjoZn+aDhaLwQSFrTh4Omt4Ur1wrPs/En
	 jYdfwIonhFWI21hN4Dj/6wJ/nSYptbn14JPBWGsTXdeqHXcFk0pKK9gpPpGxS3P5FT
	 0TdJkQFgudqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB83CC5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543623375.18494.142179954427965056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7eee3b5f16e8c3956ce6ad52f3c356b677b5f6bcc72a9c8e0e25bf136e9dbf
Date: Thu, 30 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785436233
