Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105262DCF55
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757423394; cv=none; b=VOt6HB24fW3pWfnoeqESBZI1sq0myR5Wri+zGtHcTs36hKY/lbFYzMKxcTmlFRqlK3cbhiPvacHvNMBTZsN0AsRmyigXnHQuX2o05KsS3/r+4sYBqR1mDfFRvNGoDzlN2xkBpAXwFJZIx+GeR5YgGi3vCzHB1dzGVbO2m8PtjKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757423394; c=relaxed/simple;
	bh=qvjoNzk7HkAIyyY+Lq29JlERXsIALDNJPd9FcFq9XtE=;
	h=To:Subject:From:Message-Id:Date; b=Ai7+UrjYVtTA4GL9zy0fxIZwwtNj2MC0ycuPeZK+MTKnmkOA3ZglCMssyJOMprOjmkgl8Ldk+if/Z62Z3gxTRlERkuCRyV5Hmds2o7upskxMl1SUSv/SHE3S+rGSO/4jxfltqTGwVG3B4XvnPn8Y+GL28/quTZ+YQq9A7ti+q4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5YHOwNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5YHOwNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757423393;
	bh=qvjoNzk7HkAIyyY+Lq29JlERXsIALDNJPd9FcFq9XtE=;
	h=To:Subject:From:Date:From;
	b=u5YHOwNk+DOVM7EFYB6DoSvdv4zd5JOKdMErMs6MKCyJwRXNA4AVQ2bUPbbMFLuH+
	 V1cBZQk2s+0Rny1EDHpgvUe3acejjhbTD6ln8cunCXXFW+edSfkTP3BfC+TnacU5xR
	 AKgfirKIb/8TFOKYU12UOO/E1cvYeDe96veiff6K1ZuwC7xD1xZNb1+QdAniyRzd9p
	 xidwFtgQUX/Wv5QtLY7cMVDUUBhqQungB+3rXZBn+h9D9hrOwL0Avdk1eoEz9IsuDx
	 dDdh8kHqhMjYHaosIzsgfBRj+8GRbJhwilX/Jppa9/uMpX4TAS81c1wIGTuEl3f8hd
	 gMBSXMnRavN8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBFCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742339358.29196.13645809202009621283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36cbaa7f23f8c063020a1f46514dd3799cf1694be49e1e29952c40e2a22d6ef
Date: Tue, 09 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757423393
