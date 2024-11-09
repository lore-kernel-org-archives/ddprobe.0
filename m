Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8113B780
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731129954; cv=none; b=Q2RpLn1DJdD0ULQ3YhOwX05fEK0hHO46gLmdnB2hlPESyjmtotPDf1jSqABqMuNjckj1cqkhN9Vb8gp9YmtaGqpSF9PzHQKe1XDZsGSUva3xujEm5sWIX6CLXHxcw9zZkvBv0snbuK7FUsu86Ymp4NyyYYjsbYLdxa3/UrkQC8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731129954; c=relaxed/simple;
	bh=D8j3qQelgItO0YtBpKkpny9lJSJW9B0DfluJd93Jv48=;
	h=To:Subject:From:Message-Id:Date; b=auXupYIm5kfYx/uD/4UZ1HdXYzY1HFFYSeW73dP2uvxtWcAXphnBHtNTpfc+GJucjBu64XzJskkL5zsSaxLwf5ggm+UTXDcaZ0iLMVFJH9m6milIGOEqy7ECA/Atsh05NQnXAnVkD8xIOzH5NUQK0ZFnQjhNRG93hQ1VbO0ZP1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLxriXIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLxriXIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6391C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731129953;
	bh=D8j3qQelgItO0YtBpKkpny9lJSJW9B0DfluJd93Jv48=;
	h=To:Subject:From:Date:From;
	b=fLxriXIi6WCyqel1AHzR/wwPOezXGcUGBOscqbXzF3lpqlzBaP2WzQGeSewN3CW7Q
	 MU42+MKbumHjWEPQE+JY1WVGkGhxHhqYPhm1dXxeUSlru+SFndmnlzy+J7+9pBR0md
	 z9j8H+Ee86jZJ+tNcq3Le6OV1yNbP7NiZN32b335xclEg2MJBS9JyFvV64onMwcfZs
	 yhSYYd5iXEh9dkpHflEGZgbTp3sJuHYehkxTJdS+Y7jI3wvuAp1b5C+d5u/X+amiE6
	 84G3QebdNYoaYOzhnvAbNiBpxpoi528BR2FoiSsZT1rFC8opL5CyZghJlpoJO/G3Ms
	 0Pmxe0Veijr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95282D5C0C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173112995360.9864.5117176154084868190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177a0ff20c39568426972c238bb7b09cc4423fdcfb72260dd0dcdbbe2ec9e1ac
Date: Sat, 09 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731129953
