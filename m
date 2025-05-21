Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CAA2B9A9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747865994; cv=none; b=jVmI/3pkLx+U0l5LJeug/zfXqHMVKRLvETn8t18TkqL0wWOUkj2GcE5Z6yd9wpZI2sTKzifmYL+cP7bjqtPXE+uc+/UeiIjNtQ9ys14Uk2qgs6YBql0QHXsLqbVwimASVHminmn8HdpzdhFEBpofPHobKdDXxXOB+qb7PcKDR+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747865994; c=relaxed/simple;
	bh=tDLTuIEAZ9e5NGD9EIkaNx+T9K27otVA7OJYa43c3Pw=;
	h=To:Subject:From:Message-Id:Date; b=oQoy0doyo7DdGg1MHAXPklqYR9CrSMnHxvPN0ElvO/0zahAz5uoPQBROwZQcNGdWOMl/CELyEL8fvorh/D21q85H6k+xcZ9/G8BUQtjCMofjGvXwa1sd3hL8kyiwypZsJ3RcbNe1d68RM14hluiisz3xwz07MxIytVXt4ouRA30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+Xd5CGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+Xd5CGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3254C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747865993;
	bh=tDLTuIEAZ9e5NGD9EIkaNx+T9K27otVA7OJYa43c3Pw=;
	h=To:Subject:From:Date:From;
	b=O+Xd5CGxipJjBhQ+kTHWTiuxZr6KST0c/4Tt3TE5on0d7ldJ+5nRSKKr2BfoaDheb
	 qMkeHJZCvErFUl7Q97QVOKc62vGqADjZpochcpKPlvVUvizENWhqFnDzZGWXgqYYdY
	 +CJy8gF8i+PpwX9ic35HzORSthG0saN1twA31EDgGsMvKl8KQCyhIvgZFiqEMSYIW1
	 k/QjT4RTaUDbUWus3wkd2sIX+hGUF6Z1aT+WoTFNXZeRsUwhQXm4X8YmHIloOIFoOz
	 CLdeQnTU3ta8yQlrnxmpyCBKLpAFiqsmKpLyOYUY4hf1o7L79+ddKhrxDAHu4pj2sh
	 ct7DUF6vkRuSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F2C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786599358.23787.5762852013325627342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ced23190aabca62556c2286cfd0f9e5a5302e66fa9b27ba1b80215f053f5f89
Date: Wed, 21 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747865993
