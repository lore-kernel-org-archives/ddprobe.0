Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165C984039
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759963794; cv=none; b=sd6Qw3OzIF8m0LBVfeKD0AF2RfLq612vvm4prum69IVLmoJqwWukIP/nnu4IE5eb6k5cQOqhH92/w7JB04WNQFLjAkbr+k86r6/SNSxgG38e/e0UsvowWToI4bc+Btdr2xmg569oS33qICy9kBvXkOl02asVrbpxE7Yx3CAUEn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759963794; c=relaxed/simple;
	bh=BMPCxIWs2VL6w2mVvtW+PjLAq6VXnlkwryWDwtcSvtI=;
	h=To:Subject:From:Message-Id:Date; b=PPoue0XLn5KP1FY+UdS90YHZZYYEsLwW81jhJaOlpFtUyvPl25PFA0zMLyWwgV7KwdLQqoiia5GY9Y7F4kqyuy6BiE20Si3zO1BXtO/6tdahBvQ3aU096Q4n5HshL/bUw3DQbJqOKPO7SI6bopS+L3dLEKafTJyV2b8S+GpVQds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC/5R+41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC/5R+41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E487C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759963793;
	bh=BMPCxIWs2VL6w2mVvtW+PjLAq6VXnlkwryWDwtcSvtI=;
	h=To:Subject:From:Date:From;
	b=UC/5R+41MLi825GNM9Kk8SaRKS/60XOdg1VcHolgzBpR6Xnfy451vIi9pEpKdO3kh
	 s97mes+o3RpPKNDJK22ERn1rnvAk3pPDq8Utw6dw3gtVF/kb7vV2ybnULDGcek9/Qi
	 0jRa6HScjXWnZRanzWMINWA+MzpOAJeTA96qAYaPrrfc+98M0JEiytpux77fQMBtV3
	 737/fcuo97Q+MqtdLiZHP+9vMov5w/Dzdm5bJOJTCwIfYikyLrB682W0AIPeTPBZx+
	 i/DS4aQHzGdPuQiZP10C19+GtXU0/wpvW75xZQyuBPYh/g6gXFlSZG9DGZNDUMOVQt
	 hxH5y8UTWQp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996379357.21743.18258000422127774220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a712781cc883f874a33ddf689372dd1c40f0da37dbf73b37f76569924d36a8
Date: Wed, 08 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759963793
