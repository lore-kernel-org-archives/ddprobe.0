Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5901B4315F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748154594; cv=none; b=LK0r59xon9462g5KSO3bhWwIDl/UTweIZTqsZmKfEPzSENQipLoeUSljlFoKIm5do/2hFaDItQrT0eW31c41VQLhpayZUME0NrgOXeom1Hl/iIpXDZApeXD7SPBo+AHL0BxTKieE4/Cv9soLJcXx9ML0y9pBVi9v5+I0YIoAleI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748154594; c=relaxed/simple;
	bh=jSveoNkipPLCAgAKkdr2/On0G5vzCbCkjoR6Vr9G6J0=;
	h=To:Subject:From:Message-Id:Date; b=Q2q6gF+E4qDXh5vk7ZI4XQ6DggIb1Cmw+tNbwglxUCVUsjtxt/9fJKXuTP39SqNqs0/c+Ny1Ll+t65VjAjnade5NMWyVda5aQKSssGKGzH9i9DlsdF5731MLyg6WwO9Rdf8MTGETrPDCsy70UUcH/CpbEiOrrCXGmSPG3EaAXhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYZ+xB4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYZ+xB4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC5EC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748154593;
	bh=jSveoNkipPLCAgAKkdr2/On0G5vzCbCkjoR6Vr9G6J0=;
	h=To:Subject:From:Date:From;
	b=jYZ+xB4LLy6iO20j/mZp4NvOEc36ODP8gXQOMVV7KLY//sYGwpmOLB6J0GKAXGSeu
	 4NLgZHOf3XXf6MWbvVb9pLDdlihDHgjsLIUgCa3XZwVT8KzD/dHIZ9W4Acd+jTxz3q
	 RzoxHc4skczeCRMn95C3aGshVechaas9RoMmU2E4ti0QZrGgD7kdhztGnoPvYsw4BP
	 ngciwu+F89E7q7fzRXEHsq/TSxCm54rU7JYI+i/+eiXxIdITa2DdxggKVkMNMf8WTB
	 D1EmCxx3xYULebI0AT6FgD+VklcqIq/7yVEWa4F1435n1MNzP4e25ajvkjaHHHEvcp
	 8SkCeGi2M7gXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9FC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815459358.4613.7164830310212374937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c001a3ebf8db719f551f972954bb81ff77f98b2cf92158e8c479a378b2a306a8
Date: Sun, 25 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748154593
