Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827B30DEAC
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779318634; cv=none; b=IP5Ex0WhucrSUVyb9Ua3IGJ2KUTxf5ScpPlzHhEKM3NJIxJ8DFEw0K6bwyRvcoA9c4Alz+H6tNB9iiuWH8rerlaUKOun4eWejSP8FpjSJqa5WeiJb5KDl54mEJ+KqNq50It/9rDRylowHfpx3uWLSRi6+uErnLbA4gxyMZextkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779318634; c=relaxed/simple;
	bh=xXd+Oi9Dc4cpk31gAEpMmlFyRdRhfAp+xufe9YCRyCo=;
	h=To:Subject:From:Message-Id:Date; b=h8gFHeK45UpT8NCJLTt+0mHYTa3gvtdx8aunsOh4TDm4P+IY2WPpo5e+DDE5c83M7Dq4sffwLciPCEsg/1aDDkQn2R/hfW7PeCo34BhEtbAvIRBlbU/kdufynASndmlOq+XNJ54x+FKROo395rcCoaL1yQHnUeLAwsz3Sdu6dHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVysveCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVysveCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD7AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779318633;
	bh=xXd+Oi9Dc4cpk31gAEpMmlFyRdRhfAp+xufe9YCRyCo=;
	h=To:Subject:From:Date:From;
	b=uVysveCq+e4CYqHrUCaK4bJGtGdbeK7iQ4/SLYVt6eQDxcO2rytjXgTz6Rzrrqv4F
	 0WGB//gmaZNHvYuSZOhLrlsJh4DMCaK6lmtx1AOHYzePrv3lvoCmNJrqcgg9/0/Pwq
	 m0TSUKkpMZChRtAh7js1mnEjO9Vjg1BIBbjWwSYiwyHfB8qzfigJosekwFqwshe6lB
	 TyEiQ2iZAyfq3PYFX7pyV9oElVW9rBomZD+lL1Gzwg+hYKUBIT9eJCZCmYBUbBbqOz
	 i1daHdEyT1lLCknSff1R8pdUcMZRyZn2HhKupfODXozEYsuezlkcuCOiYjFRuJLFCD
	 qUC6c5i7jqVag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF329CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931863369.12710.2585251751599133191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78db4f82d28cdb4d880712e028928084aafa860244eb435302c0672c5df9566
Date: Wed, 20 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779318633
