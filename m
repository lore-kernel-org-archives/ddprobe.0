Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5E939F181
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772727894; cv=none; b=KjLoG31YJuksNyUcc3I2n1QmuN+fwt0hETyVyzGjf0GyNp+VdTsSDPiwGE23pLi+I5C88AcquchM75Maj2ftB7KjCj/kKolEMQZzBKMbaouPoFhiTZJnUXtAgLa7hnbAbjka+1aY83kd1zO2rxl4+UK+tk2VrKo28hncQs+HjWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772727894; c=relaxed/simple;
	bh=zAIEUSq63vGZWIh1Kpg0zmo02DgVfk9qtEkK4Kp9ieo=;
	h=To:Subject:From:Message-Id:Date; b=mYq4/84f+cVP6Ho5AvCDo7geMBsZ8JcEHpqCpgoi7CDcfPqwi2UTUvIm+KEaw9Ao8DI5tDJd+BIU46p3qQGTz2w40oHkCjLiJHdKZDFzi641hvchVI5he7dH+zutXUEfXr+PCfkjk3jdnNwFw1pPBbdGvqzcqDwxEz9Q7r2cFf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnBUP0G7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnBUP0G7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C23C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772727893;
	bh=zAIEUSq63vGZWIh1Kpg0zmo02DgVfk9qtEkK4Kp9ieo=;
	h=To:Subject:From:Date:From;
	b=tnBUP0G7i3puTmBCafWc28kNcVnPCAxqayv1i5RrdAwWYj7SLfPC10Y/ubpBWnxx+
	 F/4O2A7ejedM1oE9n9mQFr4L0/9Md/R/u9ft4xbhhrOXuzwM80KWcmiPBpRcC4zFrh
	 vppXW22j2pmc5oUFpmohkiOmoIL/A2wqBiXCaw4eQNeNie8SxStL/EfXEiVAVmn3rl
	 qL2/Qfuq7stNXM2KJkHckITrXHlbHW2GPOku/K8dnU3vhR9ytHHHzdGb2SiCGbNeae
	 Iq8uEogoQ+JD14XBCDMv9aMqYNLhCSh//nmjl07NWgsVanh9aHzQ1Teh82XFEvA1ZC
	 52Gm6zc1kXWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F566F3D32D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272789357.14804.5489004813604987049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f395f1ccccc660c08e3b87810ce8b3f2975c2b588e54430f0c12579ae8d900
Date: Thu, 05 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772727893
