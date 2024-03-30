Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF94C7E2
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711765697; cv=none; b=h+drLC0k1wgq3UEnoJChg5L9NN1cIuLJnyesAdLQYRQ5wgLhIeBmo7KXkCG1AwlOkCHly3WmbCKRUbKXVORb/dQFTrtVvsJPMknH/ZaYnlaCWiXT5L+3Enzn98IBi5RZ9MJO/4NULpeL3cEybgsQDn39/sEg3HM3iXIbUa8cnwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711765697; c=relaxed/simple;
	bh=1fQM7rfFuBEDH/v07m4cq9X7UIzgyYFbufiZ1tg8M1A=;
	h=To:Subject:From:Message-Id:Date; b=GUL4l8ZdrwczDqqAhlKffjz2nloISWNXvfTI2LkWuYUJNPamnEvoOW18C47XtxFVaZPp2F7IahucTKBvJnThQaebelL1q3wDiaBH87Ue5LjNt9eJ/ppnjTNRyFgnUL/pH3GsvECVL44B3kOKxAy/o0IIdvQVOhlNj83XZ26gOqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcjPTfWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcjPTfWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8128FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711765696;
	bh=1fQM7rfFuBEDH/v07m4cq9X7UIzgyYFbufiZ1tg8M1A=;
	h=To:Subject:From:Date:From;
	b=GcjPTfWLETP7WXuCy8wWcsfLWpA7iNip9YNgH6OOfHHxlSNG3WPDSCAeY9sKNY3OR
	 gfem8VV1x1gAmppokJUhNEnuJjasPkqoPXxDHFBUFMpFVTS/6DvMG/jHmdUQ94ONI/
	 g1GadqYgiwpGWxMzhf/OzvCA1P1ndJ8N73B7S5skguWSMKMyYSiz6xWCM22myTn4sa
	 UxNglNYZWLQoWQN+T6qwlIrx6GgZDLNq8uObCcosE+F6HslWklqKTe31WNh52C/DUJ
	 Pz9Aq7NupY52kk2KT2aoa5hYnMbirMLDoOPeR7DdlkqdFXtvPqYINcagV1tx6K0stY
	 tKiSqpQWBl9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69013C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176569639.11764.16155794458153206449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4e80c10b86b25ba0a4c421339abecfa0e77bff29e25504ad4a43474cf099d4
Date: Sat, 30 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711765696
