Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7AD1BD51B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719938123; cv=none; b=M2baXCqID6DgKzM0PlwwrTYQWVTYZhds9FOFBmS52rehtGTjjsjr6qIfA3670np4zeUICAfFOvrbGgqAqX72jp+ODGQoGC5jZv1qUdua1YVn24ZhifTKjTYiHTmYsHo4AIUIKWtLKS7Cm9b5M3QholLmczy/NjNsIv35RobuLjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719938123; c=relaxed/simple;
	bh=Ct1pFcTEAAmgeNt2+SqHeLT3P/Gnf47tdD/WR11Op6w=;
	h=To:Subject:From:Message-Id:Date; b=g25bDAkjmG2QjqeOfZHrokalZTbxdmFTgk8FsTztluga2yH78jSZxAN/nXSBFXJAk5/P46Dg0jEkT8yek3oOpKp7Dz/0wptz/YRcH4E0hWYUOmDFnj6wacVaArHMzYMWlPXd81XsHgfHhlcTG0NPUGowUoQSALOKonuzuIZkrEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3fOke02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3fOke02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E131AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719938122;
	bh=Ct1pFcTEAAmgeNt2+SqHeLT3P/Gnf47tdD/WR11Op6w=;
	h=To:Subject:From:Date:From;
	b=Z3fOke02NLi6s0A3zTg/K4gxfUMGqv3zde5VOtk05KZ0AhDkJ5sQd2l5Qt1f7qPAD
	 XIh7nc5OBlZfj+aUOBEQ199QVbWV12upMGgia7xBlOdhih0kA20A7ugymV7guWRuWf
	 JRXTqb80LnkLIFYS+9TMKFzr25W/uZdGK7XTEcMJ/Q9lUHnVT8gU172ayuYLcLBsed
	 +Ed53VP9NzPHWzSosLOLQVO2hqNDDfi4spsw3d2JUZpkTHHwKI/0rruemt4xY1zPRl
	 SXNDiMWT/9AjAgOK5VhcrV0svPLDDI7gdVfCAyRE7gmVZE+o6iG5/eOK8o0zbRdtW0
	 j6UL5AG2ahtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5E7C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993812282.31634.9328474165369201424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47c608384cd5303ee8e2da1e718f64b12dc89c948cd2aa1fe7be5e2b36382e8
Date: Tue, 02 Jul 2024 16:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719938122
