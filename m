Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAD547127F
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788522034; cv=none; b=BYvs+MinKo3W0Vmg/ttRqqfy2NgqKBpzOMD9kgUTTKXpezd0wbx7SXEjLzmmc8Jk0vCh73FjO7aDoSjCImbfxChvIqNpruF+EDly/royvzebhkUEtklYvlfAhI+xU3V7qQq+fEWCEOpVAI8tvl/vgzfMxqS+8qHvpIwkVUcks7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788522034; c=relaxed/simple;
	bh=oZBULIbaZyVXyGh9i6y9ojixLUXwIUlQChRwz4POnw0=;
	h=To:Subject:From:Message-Id:Date; b=dMp4TUjhoi16Ql31vRcYwhFTjfqwI2GJ1gp8ONTpaWGISATyD9BancfM7aGyNwU+leB4PPifo13XTrBG0TPIane6nLbWE+sIX66oHhLHXSWlc0vdjptJs01XZx9rZ0Vft4ii78CPSU0dPRXVmtZzORR64gqf13EWO4vDaQmLlhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qndjQIso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qndjQIso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44F0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788522033;
	bh=oZBULIbaZyVXyGh9i6y9ojixLUXwIUlQChRwz4POnw0=;
	h=To:Subject:From:Date:From;
	b=qndjQIso7xap2HtKBi9LU8DZhT9RlcDhrS2sBOo3+EKhE8Ky71LE/MyN5sWb+mbOS
	 /406Qs3qs8YUV/IyoDm+ePRQtYCVBmqHAxrwL53zd++tH7GC4nERi9DhnQCVtQAPHH
	 Vy8yljh6018PwHonJxGRVAM4piSNYSeUcavZuDYDJc5OBvUxRLd5hJHf2dJt3+15Ll
	 D0jtHDDy8qlQ1VBjvT3FsHD9v47RnoGkyQXf+s/Eb14UXaFNeN/8scgbStoi2k7PVd
	 xjMcKT3G4I/a3lVDe74gRb3o05A/H6Q6DL52bA6+rfDi2KHTDfP6rTTvcjvYvIWt09
	 XJgC1XRDdKMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA39C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852203370.14893.14625916544457010659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d636993284a3ba6069027f95efdfa5f688851a200d18f6b12053703a4dc668
Date: Fri, 04 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788522033
