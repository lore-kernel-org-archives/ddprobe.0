Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E1012BE86
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716747263; cv=none; b=qgU0gvwsPphU4PWjfN6pJVu4HxBa4zsmpJ5++QqP79/Sq7fg9+kSWQyOxBQxdtbJB/qQiSsj52MHavOepF0O/4rIxDoQlMdVYmP0sLc4NxE1GDz5VDnBkuH8jCsA/lYwcNceF/4+R0T3d9pliO93LUKO2knroRg88MfPj9OGqwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716747263; c=relaxed/simple;
	bh=zadTAgnVXlkfBix9vtBW7gLEEPw72nJBHvNSIc8NQ+Q=;
	h=To:Subject:From:Message-Id:Date; b=hRJQTF9Vxskw5ckRIMV7ACkrF5jEQAU1jA3NKaqjpZTMOZgWlqDEoxJDiXXVw487BxehE1ThQ0yQhBdm57EKKyrUvcmn+VzGTALPhOeG2HGSTpdm/dbzgbcDOZEk0tn3WwRiM6kP0GSSpWYZ37BEGqEobvCOzhsPIwIwetorXPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCk39AGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCk39AGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A05C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716747262;
	bh=zadTAgnVXlkfBix9vtBW7gLEEPw72nJBHvNSIc8NQ+Q=;
	h=To:Subject:From:Date:From;
	b=kCk39AGOuZ510VbLOTZiCTEFi9ba8Tx8jJyJaOrHXqY5Qxf1AYAzbKhvFu/d3RgtX
	 ayhnsX6BjRNgknDQMne4rVJSRgKqD6U17TZXbAfKZIDvgnUwMYQR03IIH5gby10CJr
	 /A+d19Xlr2d+VTO0EyQFmIGg9Hp5H7BBZbBEX76DIc2jI7TIBZB9qUBTDE+i/fWyu7
	 Hq7XrYaGobNbNV2s1C3IjLcFXxlUSIK9B9dSegs925w6GJIPFRdJXRMzX8+BmZzcVE
	 +o8sgwYwBnJS76/MC653mWJvahBMCp4ziNyYdSD9ajfwMR7WXz/TiHlNopWQPEf9f3
	 i5gNo5TYpeFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67CAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674726278.18043.8038397843275771023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb41bca7c975e65d8d8b0fd19b8193374ac04093a63c40a1154fe6ef83d6bb28
Date: Sun, 26 May 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716747262
