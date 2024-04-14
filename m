Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CA81CD23
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713119363; cv=none; b=ivV8W1TzxTGZgivPXAUAlXKvti3lWXwF/Ub32Q5lbbFRO92JtaEDg+hC1z8DIqCrLsuDUi6FTm1vKIi8f1jXqkAtH97fAR+uSNFC4u1qcm7DxU2GNUKydIdEqjESmqhLslyBVj9XVc7cRYs0mmqFUamYt3WAPG3bdXm+S5ATyx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713119363; c=relaxed/simple;
	bh=tJOlrRHpw376pYWxQDp6XKRgL+maXsujONntWPS49DI=;
	h=To:Subject:From:Message-Id:Date; b=MXKUYsHVNXCZXECS5TX6qr9j35TSRn3DI6FQp3PUMYMcrBQ0v7HXtuurKcZ2FRDdbwR+E3VnjmYYKncwJdvvBz0l16dPNx9mYYgk5tl2vS1+s+7ceMZMuCx2yvO3vVriV6SIiUQHb5NsoGyHtIY1YDKEemiCvUA9JaZKhm7v8sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6UYz+Bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6UYz+Bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8FBC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713119362;
	bh=tJOlrRHpw376pYWxQDp6XKRgL+maXsujONntWPS49DI=;
	h=To:Subject:From:Date:From;
	b=W6UYz+Bqg8Blbe+FdIKbs8DTYSoYJvvBeIrcokuYrKyIrGL8EDLVMWn7Pl5UcXSzm
	 mPVY3q2ijrhRrZPTnqsvtiuJ03VGH1uecDIdrIL25jYrT5M0YBSlN3xv0iTbW1j7Gv
	 DR2oyFW5AWN9/j3DmeDj0/cx88lvJ93Ba2MIgXhR+P/BPczFZLQIuKX4/4fh3z6uTf
	 imUnaGLku1QeOIUYhinnFJIQIIVuOeGsByGtPy8VpjPacV00EmkGikTGFtPHxsonGD
	 J9dUqazs04r6/EgQ+IhxqCPWf08UhC/N5QEfT9iEdAQElp3MA3djX1TUSgGlYokW3h
	 IVEHHmhW3Mu4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB227C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311936275.19575.11460118857461900454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7855919f122ff3a76d01f25ba0265e54d90f53a73cee3e3011b6f7b6b7a8f2
Date: Sun, 14 Apr 2024 18:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713119362
