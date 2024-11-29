Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DEEAD23
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732899354; cv=none; b=jKsLsB2mu2UEtktppPzFrjEtq5L+Nzy0eyXFA10QAViqhXnp1N96o19NKBASWb104H+B64voQXXjOv4m9H9Q3TSDkffDG+4HZlcgOUMVxAfGy0B6ImOwTCwVD+rcIKe0VUMmb08S+f4Fck/CQ4rnPme1krV/7wWbm5IF2LrZiL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732899354; c=relaxed/simple;
	bh=vcbSBzSEdmTUK6aUblkCcqHblKi2/Bju9i2gaCLa8ew=;
	h=To:Subject:From:Message-Id:Date; b=m9EDidazrkybWiehfM2ka2nl6p11kbF3hXJU/yAE3eIORwLWlTtvq6yeb8BHl6IwXJbLn60cjlfX2eSzVop0JeJIaY29sSqO6peijisdX/W2nw+6mE8WRKjXXN1r29bb/dNkEPK5dfeauGxfrriTKoTnY8dHUPoRIMLKIOnX2ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg7qeN/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg7qeN/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C28C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732899353;
	bh=vcbSBzSEdmTUK6aUblkCcqHblKi2/Bju9i2gaCLa8ew=;
	h=To:Subject:From:Date:From;
	b=Zg7qeN/0ELHiIa6NLzvZXyDdQY5D22zA8HV6eYZ26wklR/t8jmLlDUjqhQPLTAJxd
	 q2a5P1OYUruVwaDlFqcVC2MhLGBOiVpI1yEqfxoQGXOGYxa54J7qZgHTpImI4uzZ37
	 RUh1XgooqYCuRoLFhlpuXasFHrvAuP2bpbZb48dZvH19c60DlE+fT6Yy9pG+XzpNR5
	 jdQU7hn2wQ0apaOSlxnize66E/TJ9RXMrvpVCTG7uRDI4Nq6PcxxVk79OdPUMjT1OG
	 D1DAH03Fg38bdeOi81Q9L099OBe6eTHBnvQvCUQhJEqZOZWbvaH5L5P4cPZAnotNS/
	 EQerMAMjqfEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BE9D729EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289935365.18221.9783921409047279334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7755ff37ac86fcb0970c0cb665e2b789837701b4006a6a6d74bab61106cdf9ea
Date: Fri, 29 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732899353
