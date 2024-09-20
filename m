Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA2245027
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726829154; cv=none; b=tFE2ugGrxCcQOMc5YYA4NvOwBEev3YppaTuFo69yXiUS7iE1IPsCkVcktdQ+vux+NECknJfP+RGzlv4v6Nh0xNMAGNqBdpbpmb2Xl/GNeld+98ufJ6fM86ZqR1AqknfMoG6vf1ZYlP0pwrurtoqzPeXhMR1JeFvnIrL7t3hggjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726829154; c=relaxed/simple;
	bh=fubIz+oXTyywbGe/VTtHzZEdnAHTF+gkeDF9mDaJZ3s=;
	h=To:Subject:From:Message-Id:Date; b=tOVPM5zgsrot6+THCZFHG1d4LPlxua9u0BDe7KxT3xl38ZlO7tjYllA2XTz/dqExSUCImPoQiBLwvu8uEYq0vTqhSBfwLlLugps7BthU+9GkM9B0j7WR4d3xAVvRetZYdXd9bLG7bmtsFfMZdWkV8I8qTtn2IyAeHaMXoqH9r9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8r9epWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8r9epWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC546C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726829153;
	bh=fubIz+oXTyywbGe/VTtHzZEdnAHTF+gkeDF9mDaJZ3s=;
	h=To:Subject:From:Date:From;
	b=r8r9epWaC2IyYjs+Bx8VOuG92D7NF8IZGuYVfV+B24MLLInTLnPY1CbKtKHyt5vo7
	 6Iikh6uJGvxWlZ5Z5xtu4MD57SDI7awi8sfDB80kavAMKkmQt02EFIM70IsXREhklM
	 G2DkdwwSEPFqBMaERLboAqj2yV3MNsn8QF3o6jIRIVrsPE7fQHwCV1Dath2Y8AVIwf
	 8yI+cmmm2UEbWKPs/vAcYR35BkwPTKetqNTI4/q9AezzUCru9XESwW+UhR4WqTMjXg
	 ltMt4jV1yflZGJbnNQL+GUNWftOoa3X2e/Z9vBXWSGu8Ja+FCz5g6DFBcLqsegJch3
	 LH7ZoRHsclkEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D89BC78820
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682915360.31351.3802745171004152156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91127391157b0d4ac8f00a38df09817ffaf70ef67dd09601ba6c69267b220e8b
Date: Fri, 20 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726829153
