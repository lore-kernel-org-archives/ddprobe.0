Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054EB399340
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773313494; cv=none; b=l9yQeW8f2QHn55TQPToPPP59Y6bb6lpNBobrBj9LhTtVMJNn6+M64EHYLrLFTQ28ZK4vfyxAtb03Uy/piSgvc1wi1fPhQ6NDwgiRF7loY8p3APRgRTvOU9V1p9yK4L9NkvoxrVzredheEalV754yq4scBxspF6PKXlKvGzX2Hps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773313494; c=relaxed/simple;
	bh=6GXzOxmdci2kbEeG749GvcpJ1D1eqs43ORpRLk2KB/8=;
	h=To:Subject:From:Message-Id:Date; b=Le4D4D6uZ3h4koHISU2IroV4cv4He1lOjggRajI1xHd/oKgSLXVU1aIlwjbF8hd/fLeaBuwArj/fgC7AikeHcnvv4osRXdS89PFNfiVNe562oPPOAZaze8YdGSgFAJd566E+/OQ6jDjcEZbdXqxGiG7UIp0KrI/fhtpTqnYbcIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdfh32Hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdfh32Hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F183C116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773313493;
	bh=6GXzOxmdci2kbEeG749GvcpJ1D1eqs43ORpRLk2KB/8=;
	h=To:Subject:From:Date:From;
	b=fdfh32Hh05KhCNO8FGcE5IR2k01MowA9ihy/v8voT4n7pb+Z8p8keL79QWgYkiX/b
	 YRW2AwnHOMq8YP9V6lgckaKeGNPIVgdEmjCx5TxmnEENO1f/k00LURBXGOqrSkGjj4
	 iPBkNYzH3C5ph3lMYZUSLpROHvxeQHXEvVABI8FQkeU70sXot/C7anXJWvUJVK+0gn
	 bO7VX98lFF/MvJ3fcGswdF1AAFdlDVbF3O7/ecryjhZ91J1D6qBPAGabCkfkXKqXiB
	 KqgGHYSaNnX7v4hEMXkT+MAgta2kYKF1YyZ2eWJvz1mU+YL0kzENhg45mX7O2ERdva
	 y1gskQ5coN0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF89105A583
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331349357.9100.13858125504504964270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c5d17995aa6145117efe637dca354c3f360795b199a5dc852bd5d52bed2e41
Date: Thu, 12 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773313493
