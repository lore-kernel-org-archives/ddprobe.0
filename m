Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499223CF63
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720477583; cv=none; b=tEnny+VpBbIXhwlApTL84nN5RTIEC1XAgF1NZBnZ+t0SXMoOwBy7v+i3/qVH1lvoPrSda7hhzY5Uf1mAbLG3THu+PCFT2BoRNjGbQ7iPunzyK3OCdzliEyA3ZwglKP88KTo05opXIsLVExefP9Yircrqcxjk9wP8uTzLRvTpN+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720477583; c=relaxed/simple;
	bh=iTCio8N9R5XLSQ+UNAi38JxLwFl6TsbTjSJ6JkblClw=;
	h=To:Subject:From:Message-Id:Date; b=eFhjT8G2ur9hIE2fohyP04Jwe28tdYx6m/NhMEqg3hzz/O1XzUNYY6YJvvKJ2mkSJF3OEVteC6q0pHHTNgUdOEW/K1lEajC+4VxLtFnxjyDxZLylvIn4p6zZyVl5XqqDsyeWH3zN8zfctjMMNrxUJj1LUqurd5G6QP9O1B4LIl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opYcRgko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opYcRgko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15FEC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720477582;
	bh=iTCio8N9R5XLSQ+UNAi38JxLwFl6TsbTjSJ6JkblClw=;
	h=To:Subject:From:Date:From;
	b=opYcRgkoJPyQHRdNmUvdmG1+NQE8ZjHcswtZG30gK4k84a8QFoinKEYBlRFDGsOCq
	 CmlXsWRo1l6dHtq97xfsUKbSVn+Zm/OaFSTlBEoOxSw8YD5H8QTWHsTy37PKX+1Ho5
	 aINVSNUtC92mgjs2H135NSl9XFL3TY6kffd3y4BpZW9V3eMskJxTyfBOSQZLQaqZZ2
	 yLdAz/FmLe71gKnzlXkFqT/onyxCqpiS8ZLqTefxdzrAZW4yk1i9rXUluZDgo4cqIR
	 nsqXqRJDrSWMf0aye58D3+fWrGeKpirD0jqJ0gRRLVArcdr4sc1yzxJr9lsQYmfdmx
	 AtHoMyDc0wYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4BEC3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047758276.12680.12729000693103898099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8020ac72ed7874f2cf7a0f89876dd8479e490d1d4e98f1ab6870d43d312c88c3
Date: Mon, 08 Jul 2024 22:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720477582
