Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C6142E6F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748205594; cv=none; b=TfHCjwdSjvAOOED0TeEhJPYyiNLNYea2i8u0nOYhTY+VPVe0zDJj61mkVeHN9QmxogoZL9AAyCdy6DXL2mGiVe/MT6SqrUmniLhTdV/obv76dSXBYo+zSSCQHS37guSdv4yi0ls+3hRTy2vugN7CcYSzEsyCzXR0YuBAUmRag44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748205594; c=relaxed/simple;
	bh=NUgCDJJ5TOXNu5FlOkHOjN/Ft+9BOkbVVNCsx5tmZAk=;
	h=To:Subject:From:Message-Id:Date; b=VclL5ZKtCDgUQKs5sV2CGFkMSrsxYO/eJHMgf72JMYYRZXKuNu2dmP5DBxx4aZ1xPQAlZsRhlobY8v7SbrNtzRBYQso9c1Yl7zfBrElBnINXYmtO9zuxVnKtX1Doun4tAY9Nd3kMwVyl9KQnmftlke9IB4hatCQzCVm0DiK/GkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUk645Ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUk645Ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5624C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748205593;
	bh=NUgCDJJ5TOXNu5FlOkHOjN/Ft+9BOkbVVNCsx5tmZAk=;
	h=To:Subject:From:Date:From;
	b=pUk645HtHmoED+rmaAIoTSMsW1m4eVnMA6U7u4v4OLl9xVhB6FBfd0I+SjW/08lwh
	 AGTwxqiywHGgZePzOpKi2cqVlOFP8Xx1DFzO5iCVl4xDkwcOOnwoqpsaUvvvof1g7r
	 6RrWRLerTxDddNaMjgyJOxdBmVWDI0Blts6yFRn09NbF/AVk06oZYzNrmUEKwIOO8N
	 3xuIWg4mDbN+NJ1wsQ9DIQ5CGAGzs4la8YfgD5XzawCQz6BSVDgBVOfyeUvzkmQuH5
	 BnAeaNdD9jcWroYaA37jrDxakNMu5N5VC/HftYDRw8mYvRBZPz7Ou95X6fPU6uoGKa
	 eF2fNY+2KKqQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92105C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820559357.14772.9681771776450100002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ec6ac1fc45620c316f22c9c799d38ca48e4a8bcd70f9d0168b377080222b35
Date: Sun, 25 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748205593
