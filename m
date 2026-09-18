Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB4F4D4881
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789728634; cv=none; b=ixFgyp3iZP1cT3sh9RGmDJDSZHGaur8apb+/Z4mD479sWT7W1tR+PvkpHf2ezn05r7evA8bEHqbS0pU8nc1NV8YY0ClWm4XMfhmcPXRDbVS4yDjKWC4RMSfnc+sNZxORqvbb/arHvwQUl69G0Y1q6gIOe+YhCt3uscs41SJXDgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789728634; c=relaxed/simple;
	bh=9ybNaOORFyEqdO622iNKNGTo0DZdY9eFspacDhjxXBU=;
	h=To:Subject:From:Message-Id:Date; b=nCPNwkkBvu0rnxlMyIHVnK2/iImOlNj/vTA712SXUGmmAgGpAtS2ZxTKT8MdBZdRaBVJG0KJNnIyxWS9MQN4Jls18RxRhiZqfGuS1idHEJ76aBQpYtaCmMprZtep/HA/jVP2/0iqpm3asSEkzBS/aI5kyDTXi6flivZTGjhmPQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ98sbm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ98sbm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB45AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789728633;
	bh=9ybNaOORFyEqdO622iNKNGTo0DZdY9eFspacDhjxXBU=;
	h=To:Subject:From:Date:From;
	b=fQ98sbm2poEEvc4g6xGNNpaJE1UjlKPEWio2jofFlWCLUw6KdzibsAOcG4xBnkYKt
	 Pv2lS9osEr7/7fwlsAqM6FA9k4oe9sH0iNuDP4ZPviy5l7rUPx3Dkjm3mADnKjPLJe
	 oV5h4vLiMVuvlzD52UIHFo1OkDYdDz9Q3TAhNdfz8/HtMTHAMQHYtLC5oAHniW4a8e
	 ECsjEwKwCu28Kkp7V+1uiaAe4rrAth8NWc8pWvh2+55WeZm8YXTphsPDyS+0Vl6Ln6
	 MDb9svADFXUOk1lQSBpiC+OT9hZdvon1S8YKwQoonvxY6qCaXCeTE/G2QnV/Y7NWC4
	 p2+cSDDZSMMOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C9C982D9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972863368.351.12855870511567381437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5314d3b1c65a6e2a6bf62771625785f2b389677d6866d703cefcf33afa696d6
Date: Fri, 18 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789728633
