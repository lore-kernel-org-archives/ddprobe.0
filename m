Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B79C2AE74
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744090794; cv=none; b=mLu/bFj5wYE9fWtFTQDpR0uaj1c8gdBvC3XEmzsTzt28e2SDve2zlDa8OzQIIMdns14dFO9Cg3iiHufulf9nsV4qeP6NrqqFT0rUJxme3pZBZf1JZr+QmefF4iCr6/8IJPjFddovWZtiD7iDMkt31cdmm9YGsFPsI5z6pfWpZEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744090794; c=relaxed/simple;
	bh=wWtDM9LOkPWG0i8ntoWw5ztQ/xUQFo/3SfMqb/qzZAk=;
	h=To:Subject:From:Message-Id:Date; b=qyht/t+uvwh8Y4qtcGxoCKVi+VpAnNqYP7Mfm82lqTUo4JMZaZCYODaT8+MzjUEojlAQ2rk2cGrKiPJlu4qiMaBj/14uMrz0cV3kFqccxWagdf/B4VqavD3qjR2svMajrGi/Ty35HrNb+KziNaPsn0RMzPmho6gxahXEzj0M7Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfZ9znA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfZ9znA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE83C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744090793;
	bh=wWtDM9LOkPWG0i8ntoWw5ztQ/xUQFo/3SfMqb/qzZAk=;
	h=To:Subject:From:Date:From;
	b=EfZ9znA68vVS9wMLASpLNF4al5OIb0OtRzf6Dp0DYP4LVqhmHqEGaJh37F2M4ezTC
	 4jU9jBbX2yN1RobApN7jcTiUS24uNTf9JVUvaAShiLOtwG0iXTrU6jk8KBfqyqFMhH
	 I7VLBt2IRan+JIGGcCGtYv0qFlpXTMdsandpm5jS37bLBxI4DPuDB7aIfJFVDhLFnt
	 TjEmI8tWgjTzkgIAsfTpPOpwTaojtmFpSlG2py15KRy5OwBZi5Z7rHNSxzD0kzMruu
	 XwQK0WE/TD6IH4NBTkDozZ/HOISTzBIvTOPeitJsaJsgxsOOlF4Ne24FODLa1m+kNn
	 CK2smGrLp4ZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943AAC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409079359.8880.7931330527740056257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029cda64c2e853e95f3f5dfdc126b311cfbf9e62c38d26dfb5904a4293826e59
Date: Tue, 08 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744090793
