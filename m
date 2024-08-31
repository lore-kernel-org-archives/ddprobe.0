Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2044A56766
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725101754; cv=none; b=KY2setLrj+jaW8WeeZXFg66xdx+l9ptayBHMkZUVOfYAVD/c8IXXpa9MC7vWUB6yQZcKDcGIMKJzhxDfnPuwdsxus8hZH2pXKujzmN+odhru7+wQxUewCMwKChCHybkqQbJOhJXruCBNTQkHt+EqQKeCXC6iUBx6oC+5dCu8Oss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725101754; c=relaxed/simple;
	bh=Qs/RN3larvEwGvBmQK02TQ3gZoF7B+UTrVPa7EXetB0=;
	h=To:Subject:From:Message-Id:Date; b=BKIufOMbJMB35fUfHpV90AYr+4+V0N2my+j0fYy6zVvk/wsBUGxk2Eb5xRNlcsgbhS7iv3alrHlrkZvatcQHVw6q7kM9A24o+15syox7wzjd1lk+dS9ZSDHB/yL0HHfHoDzFnTecnL/JTKMnZ9DPxji88UjLenwtpvrN9a2nGho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzSYR0iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzSYR0iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB14BC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725101753;
	bh=Qs/RN3larvEwGvBmQK02TQ3gZoF7B+UTrVPa7EXetB0=;
	h=To:Subject:From:Date:From;
	b=lzSYR0iM9oMbvnOwM7h+A7Kk1yJrS/fSPBCfjZDZu71FakS5ZaSG5g5RnG+J0+v/k
	 I5DEfluN++ivY/zVuA9cUzZpIlRP0hU3AECjGR4vmrJiXAHRhrVIsnGS+b1NqQFwY1
	 q+pbApZGZ9bQwyumj5/pwORH1N/PcdQ3QstrntFnGN5cySvwshkuu4T827cr8vx8A+
	 I3pTlhUqBgia4NeVnpdUtpDRcwLfSaeQE2SP1IFNTVQ1O1BX9tcKKDRigZT6yI0UgB
	 wcWoPsI9kPSeP0iK8OYaWsp5p/YKiHeogTw2XKQwA7vIvp/ixxQjrr7DWiYF8TYm4C
	 Aw0ZGFRSv/+3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B085CA1018
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172510175359.29099.16402395335820207821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be84407447e25e05d84ad30b57309623992d40ae6a91cb42ec679e3ec8ec160
Date: Sat, 31 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725101753
