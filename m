Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539FC48097E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791204634; cv=none; b=A2kwL1Yj4mAGn6ocZsRrMXX+4UOBJ2bf/M3ipVwRd0I14k7OD42PdtBmUoPr79dJDb7prOXkvMjbcqb/P+XHEyqrZeRJp47MV4B1GRtYJ5ES4rt41keaTAC1zOytlJCdy4FXGfpKgvlKoRvCZjX02g54N0fkOMF/1dKsuF1+4wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791204634; c=relaxed/simple;
	bh=BqKggQ9SecbbBOAb/g60wNNpFmQm7020i5iV1dxo3rA=;
	h=To:Subject:From:Message-Id:Date; b=JzJkXavIp72/OEjpfnTKTZDP852Utr0NvNQVvz55RPO66b03wiI7QNViEecsTYhQxtAKC8wg9LyKSllHhor+W2+tiTGakcUJ8KprD7l0Xjo3hoCGM9T9jSuYuHlfTnoQkdGyCAIC9klAYpZvkCpbQKjK9phApdZimYPO00fHR/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsWFd+wD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsWFd+wD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D47C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791204633;
	bh=BqKggQ9SecbbBOAb/g60wNNpFmQm7020i5iV1dxo3rA=;
	h=To:Subject:From:Date:From;
	b=CsWFd+wDxAV3F5DP9b7bUoTIi5QFM5TJbB/BFu+nDfJh05WgIWyurhJsky0mttS3l
	 ii2gAtaMyz3+6rCMZjIU0J0wCw8ayseMhpSDuAAI6t8wDHJkLpyZxYOrlhPMJgoye6
	 kdMfAmNcZBg1//jFWtBl9iHK/sTY3lvTFQc/Wc+HvrHM69d0Yq5eMoYE6FwRKg05r4
	 ySftMa9UaxDXRHJUbwasvbz6pEiVTMXzf5SCXgGGmA6yE9n23Z3DnY46HBjHQharE0
	 UdMZ936v0ybgZI9kULjMejUujwfwa47/DkyQZHekB5BCvTfZWYUwfVey5QNFXvK3tz
	 ngULI6C6qnAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14C2CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120463371.15889.12522969741022806574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa60e1ce08a954abad662fd4c1c4b520f57e817bdfea22ae29840d90646406c
Date: Mon, 05 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791204633
