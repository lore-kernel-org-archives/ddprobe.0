Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED52377000
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778229454; cv=none; b=sljDsu9v6Aa2grs+3Nk5wgoJTAQfNfYOvG4vAb+CgBR95jGija8LCIWKMFrCS7jI40vii8YPuNSlQ7t/AAeTznmbOjg5Shyl/ykfLJxrg0/L2bWIqqF9wGqVn1kRhi7rCO55QiAIdRr8TNo1MerLBXTcOMCdZPbXFPt85zoF4eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778229454; c=relaxed/simple;
	bh=hE9xsaqGNQ1tyJW9JdafhHdiphWTof+fpfwWb/BPdYQ=;
	h=To:Subject:From:Message-Id:Date; b=vBtTRSJ/CmZvpzcn3k6HtY+NN9Btfkg3NLcNX+hXjUrM8CBxz4z8DMIiEOYViivjz9EZX+A75ApkNg+GTwI7plcvtqyAktzs2iX7goLCIp4EKFFjaY1Bkb3eD0u0rkB6ktv3y21oIDxsxH836cDLOfC6N0sZBZJpkYCMrIobQYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArQ5JD80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArQ5JD80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD10FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778229453;
	bh=hE9xsaqGNQ1tyJW9JdafhHdiphWTof+fpfwWb/BPdYQ=;
	h=To:Subject:From:Date:From;
	b=ArQ5JD80Rfbg7vhAIG+QuoLxqUI05KEYslJkE2N9dRkGdkFDBnT7Iu+OHe6ivn7w9
	 MtRvDp3NOs5RefDqUHG5UcktOUGmCcW/51VYc9UqN6Kr1rZ/bgPzBLhD7JZC6DuVrN
	 xCf/X/oc6XMNGDOd5zUpS0/15/8yMtFe3bTHMLkFCF0vCzGLwynVMW1oQqDOXuunsV
	 RWx9VegrjK1oZDLJIu7mIeXDOdPDHilhUaWh4r1W3MLjP39qxCm8lBCKwPl0xKq52j
	 Qjx1P9QY8RF7dHXF/RwAljnP6ErcU/SZeQR1hR+vKoYSIzLKjayfcWSNZ7oaAwlNq4
	 aM5TfS2cdZX9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB582CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822945369.23508.8349092456005142371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2180f66f93ab2e5a1869875bd5548ed613f5712ff5935e2ae29b2cf5e29789
Date: Fri, 08 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778229453
