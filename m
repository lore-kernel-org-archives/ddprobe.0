Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B86E3358D5
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771575894; cv=none; b=r7fCQkCRly1781ubUAjOSPjAgj2eOQAlAPOU7NE0+H8ebG53ndVKGhrj6aHYrnShTM0OuCweIsT6yA9Es71v2mJmcE3LeeRHhgJJ5UOfNez6HE6V9VnBOIpMYMVjj4Pd00YSxqgeWkZxErU8ecsMUc9ypYCx9DwrOSBdSYJVz1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771575894; c=relaxed/simple;
	bh=f6XRne32dXsIpT7pZ2LmbHB4jQ3irBnzYZuackfHuHs=;
	h=To:Subject:From:Message-Id:Date; b=ZaJt3IgUOMKy35spsLqC6Vx5UzvHH1YLqgeHPOt5iFi4saDtS/7m1GWUH6M/xoc2WcnalZvIcAuwTcUjkYMHQ1dlRoJ4GrRCjkuu04NkpVZYn25Vje7wBGla/CK7tXbrZYXMRflm0FPMQ6jkIAbp0ISa+ZvRVnNRR6rjsapaMVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIJnlTp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIJnlTp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFE8C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771575893;
	bh=f6XRne32dXsIpT7pZ2LmbHB4jQ3irBnzYZuackfHuHs=;
	h=To:Subject:From:Date:From;
	b=eIJnlTp21YRfootRwy7O3lJcDtwjqyiKXTB6EJU7XuMTon+pElBZjOv1wv95vzydB
	 0EMLS/ajVSVY1R0LLW9iPM7WBtywBhKXyEq09A8VOaq6aZhKzo9un5e7KE+nCsTsB3
	 7PUj9RT+S9O5GBoLYmT+S748X7umshMDR8/ovSi8CDFNL/OPoLizC6Ij9oDZqneH99
	 fGOfQTMt/8AOAFQprzb767ghpsRcg8glr91a78aDoAJ4B1X5Nk38O+u/oIU+95j+1N
	 edPx4g7LQVFRI3axXU0QaXxdI/7VbGBM85/YDM0HT/E5bAhnMPsoSf0PJtb284b7+T
	 W7CP3GlMXb8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA5CC53200
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157589359.31071.2557788104586322930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4f493c931c6726f7bcba55e9554fffc13f968e9029f488362d82e1288ec869
Date: Fri, 20 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771575893
