Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D6E350A1E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761092994; cv=none; b=hJfqYO41+TbxoIA5NgK4fVALbTA8HZNFGaHbrPhfmTHXLCUled905HAcLAoYbCugsgOPYwKIZRaDQzB2s+e/Gic0bews638gaKLTnsL/EKxNr8+t5KcHh8GvZVPQgsYCaYfAd34ht2XmB31D04MIQrIP0lXQS1i+ou/nlprgKqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761092994; c=relaxed/simple;
	bh=bA2bjSfhspUI/I9nDOFDAtro4oqOJ0IBr6Se3bFMFMQ=;
	h=To:Subject:From:Message-Id:Date; b=knYdW8sgH/oSQ8LKPJeOK7RLJfknXK0/6SIriu9jDJ26ZuCJSe/QF453A6YFNv41IljTcOTfV36stQW0OaGqYkN2X1sfUKdr1Ns9Y+v+LwaN+4C+sl9sqWHkL1zUoEQlR+iAHXqoiaWan+ebyJikJK6QDNS9/XLJ0IaxGfhbKV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LknWi+PJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LknWi+PJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCACC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761092993;
	bh=bA2bjSfhspUI/I9nDOFDAtro4oqOJ0IBr6Se3bFMFMQ=;
	h=To:Subject:From:Date:From;
	b=LknWi+PJ9zRyd0JeVSJb8+vOzqaWjXhZ6M+VYett573FaNpngEED7ndepvJH51f/1
	 xSutVH7gPWcGQgJo67en8czHhZg2zAU4OhqDNI+CoJZJqwrVcJ1vt8djo5Y1K+fofb
	 C8QwOCYBC9jxw8Ctp/ddpg43u3482Lz3AVv3bj0nSCIP9IX56+S7oLNxea2UQK0PCr
	 YkS8fmPEd+B79mZjI6YPPCKKN1tdjOUYCktp1aUa3iif5mhpZllwuCEBVJUz/tOOer
	 TP56CYYS0OisEnwCVH5ixW1R/zjOIealC0j4G4S66Zarw+ABoTWfEpRF0Fo00dPUwq
	 IWSRly2VoLZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9883ACCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109299361.28063.9809841051039304289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ace256523902f5b7e603f8f0a5d611288177cbf00b79878738c7103e852167
Date: Wed, 22 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761092993
