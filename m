Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5A6256C6D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780221274; cv=none; b=T+9xxlSNAlpUaLf5rY6qA7MDje02eGWMHmIYebgV1Fi/NUfI9aoKcDROa7UYYVDSvWXNNkC4Gk9jNQpcVBIQfjOZksYhFL+PkfbPEpQPqgfKBYDzyOjJBocTl/NwfQCrF1vp7GGl1tO+fmwqDGy15GQ+19kIVNlq4DoDhEDJ+j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780221274; c=relaxed/simple;
	bh=AbJW1w3IOAo34ofVqYzSzhw2jg9OB6SeoIlDSKylZtk=;
	h=To:Subject:From:Message-Id:Date; b=aFuW9/bcJnrEwM7SypqHfxws3SUe1UVeW3rQf3U0bqGoCzRMT7TpXfCzkdfNlJ0jvnaowsHp0jvuDKzT7XXPYjRKdUVmgYYEXTFrB6PsmaLnNdP3iWylYZqCRBPZQZZWQh9bsp39fVf56cMmERN75P5LD1/kk9iRck95v9ZOg44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDBAO+SQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDBAO+SQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FFBC2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780221273;
	bh=AbJW1w3IOAo34ofVqYzSzhw2jg9OB6SeoIlDSKylZtk=;
	h=To:Subject:From:Date:From;
	b=eDBAO+SQW+B/oYaXgwktQH/YwnW3730r2/L/wwsrWFLR0Ha01pgUwFm0CnW7NFy/r
	 dWiSpVWcO1NcSZryD77xrNDHENS7jHwrelZ1tZaDUJpK3IdjnyQqukqy+SgdgHCg2L
	 DVZMPsUB3cOgIl8y29Vn+CjSBA6dxocmeXP6bf3lK1ifFDoDOCfUnjdklJbYrZ2u8S
	 +TqjyUIJeg946Diz+nhtgGKLnRaFQqPcc6q3s1dJ3E0r1KHgER/F+lQd6T993Tw0tV
	 tx7GCteMzhPp0IYTKuYQyyPRXzi+z70S2NAayYqxaeX8OZT8sX54vQOls9vdEXlGGa
	 qJkTOGp3wmI8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE64CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022127369.4282.12100019909249627740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20b7f5bcb26012d2fc896bf22f3481aa459c90c20680afc82a2a617a9bc88f1
Date: Sun, 31 May 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780221273
