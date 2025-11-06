Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A8430275E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762445394; cv=none; b=apTAG5dsrkVWdOvEjLmsOOvF+rtQXGLkFs6htGBnSPgpTMsR+5Nslg6wDVx5DUaiviCMSLo3jfLhodcnqi412uVmeOkfSkIIFnMgYFY93H2SXDGFo5z2v3wcRZhFOMfDI0Q9gClDc9cgw+vKudwZqnU7IyIYKAJq8Sx0guiC6Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762445394; c=relaxed/simple;
	bh=x/Htjl2cCv0rH1hdce/z2HS9CktN0QQOKKUWq2AwC4U=;
	h=To:Subject:From:Message-Id:Date; b=IZuEKUhegj+o7/xTggx448cw/5oZswERfsNTG5L9sqEkIow4Iv1ol4B9E5XGv0hMBGNuYdy+0rB4608apvY12lBNN0n+swAr6SmHOHtSXFF4/KUE/aPqJw3NuIf8i4iS7tG8bxejHg/hlt09NBNwd6Npj7neoxnu52Bet90HyVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDktiCty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDktiCty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF516C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762445393;
	bh=x/Htjl2cCv0rH1hdce/z2HS9CktN0QQOKKUWq2AwC4U=;
	h=To:Subject:From:Date:From;
	b=kDktiCty/vAyj5g86OoZlwNZyNHWnOH1jpiKyy+uW0sfAqLuhFW866DGwi+zylti0
	 Hhjs+Uxq2tcvXPN3qu9obfnPPRNpkmm9jG8IjCGhYRtveWVxjlw6jLswtbo6BCyQSj
	 aPfdPyb7GMmc9hJCG/JfZmsJ+iK26GF82ViLGGwdSX+3zyG7fYvgTKkPMFM7nzYkZK
	 ypAwloxp61KvCasOpqO22LC7RqQCgW5JjlodrwR8gG7XR9JRI7Y50u7gh6umPWIVuC
	 x2RtzYBr0IVXhdlRn6ycsnfM9htpf/9GyjAfEAgZjXQyMu8AJsOJqz0Mutmk4B0uZ7
	 bxhg+9g+QlX/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1B5CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244539361.20062.3645301801392283291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b78666fbb3436aec9b8aa7c4a4bc2ec7efde3bb3d14994617ea69d25ab2bb2
Date: Thu, 06 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762445393
