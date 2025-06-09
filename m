Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A1D3FF1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749479996; cv=none; b=GI5dxcRD0ZGZDV4xnG+U03YRvWYvY80DTw7+kYCrRZ+q+W0CKlrmaTSjsyPa4p0v8Jt+VQky0dH6Lai1WuELN+2a+fPqsn9IL7TpJ50Ut2pbewADpc86XokcRYRKwzqjz9kbcF6bUjCHLZ4xvC0uttuVzstY58ggTnS9w3TgACk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749479996; c=relaxed/simple;
	bh=J6nf+kI0VvN/B2yP6JrQu6kz5q4ZbvAktYB1Ox8/3TY=;
	h=To:Subject:From:Message-Id:Date; b=FUZx2LGX9Z0S0tZErADXj92PDNhXd+t+avfxs+5+9rbYjkvOhjvdriPXo0nWYbBq+fwpfY/zVbhcQI9BQO1/ElzREO5sukXEFvZW9NvkVgpebjLGThyrARW1n4SBXWrAS5+FmO1J4E2cloJN533PmwWNhxxaAZZ1fMCQQ3QlA6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EubzWN87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EubzWN87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6596C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749479993;
	bh=J6nf+kI0VvN/B2yP6JrQu6kz5q4ZbvAktYB1Ox8/3TY=;
	h=To:Subject:From:Date:From;
	b=EubzWN87PuqfqbuNVyWy/qg+yYnNypGP4kuKcC4TfyfZ4I4yAi4az+5A06tHobPr8
	 9v4h6mod2TChiRZvfejTIBgsz0laKgcBXIqqTjvuFsC+3fqzBCs1obw4/2+mRHEqUh
	 xUF0EcqZ8SpD7BHfNyGVSnfZ9ZMBCWCRXcr0Wb/+esgjWZWVRSWV/irQrsj8dGnrBk
	 bP6wuUyqVY+hxml3IAFD3HbNXvsygvMIXp/iiKYwGVxfkAOM5jYa5pOqJ/If4Qg6bb
	 W4bVQhZlyrUkMpt4viwdlD1JHrpv81h/bZSAk6fuPnczvl3NEAya0xb5YNHpQZJW2d
	 +v8kqWmNOaJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E1BC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947999359.32477.15803968423179352517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17688308b23db8e54ffdfcf690e73e5bf7e3cb57e96011bd6681c8f90eb5ab5a
Date: Mon, 09 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749479993
