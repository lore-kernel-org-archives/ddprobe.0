Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF3F79C2
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730048154; cv=none; b=iZUR0NjkTPrek4gZ3kGgZf0RVQn9clno3CiWyGJ4O1ufAWAcyW9Z3hlixuUHfkxQJnfqwXttTqcOvrugbgJPZMpHq9lZLIh3h1yM+G5ghGPL6bVy7ligJ3HcmSJqPIBGnWbo9H2iiMYUc1RYhVxLWrLbdVKffawpOCk57fsGVDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730048154; c=relaxed/simple;
	bh=CdTRj+J2uH1Wdt2QcUZoOuBLB+m/3ZBIetZ8vIzstxI=;
	h=To:Subject:From:Message-Id:Date; b=ItT/+6zBY3rORuvl1/yMw3p1r8lbGflRkevWnYtwOc4jyofO+sMAMuuxi4iYIN9cnSdTeP2p9bRIB/W4iOjoTHErf2x9BvlbSLPRojFrffJXi8mjV1wZzHHroxEi3M8LoW/ojrmtq/3+iBZPWe2Fq9fp/QdN+jqKEby8fDL2Eq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvc4UFvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvc4UFvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA37C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730048153;
	bh=CdTRj+J2uH1Wdt2QcUZoOuBLB+m/3ZBIetZ8vIzstxI=;
	h=To:Subject:From:Date:From;
	b=fvc4UFvgxcQHXa8VNdtIjNWyeY7gouJ/b1wukICbxICYYSVayJPPFON4QKKGMNtkn
	 AcEW3bjp4In4qKSlARsJmbmb+GVFBMXceXngvZqzMlX7fawON9ef5j/tiOmbEPwhbk
	 ucIA3RgA8gno66f9t0xPCy5nyL++K3NDlrAd+tLFN9OXQcNtoJOfJ/8f2+0Ovx5gsX
	 XQZ3y+/Ot82RgVgbvv7kXYuTjyFGbokWTkRHBn9qv+83NG4ATY4iw5ytDlQiuqX8Yp
	 J8v9sXWpYh/4Ijhs5Jdrtfb5Fk6blEElXkMNDiigMpgGXU9pYQLdl9i9gAllac+O8Q
	 qvuoRDN8WDomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9899FD1356D
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004815359.680.7341001877393548179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9762b11c6e747e7363f509def7cd104271173c95b0ecde644b205b6bae6fa1eb
Date: Sun, 27 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730048153
