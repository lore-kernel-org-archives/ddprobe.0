Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577E1125DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720419983; cv=none; b=G8/aOgi59Vh7SNw4/89hnsp4x8p4vf33XO0xSZEsdVhVwT/f9aGcLgyui+CkCPUJH/eP/j9il7a0Vnd9qbX/stEsnXn+lc83D8LQ3yHbK0qS7HOs47dosv1JsefbkC8Plqrcz/vp1+UiRIcrXJSEcBJMJAO1LkGfKCJxYKBEqyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720419983; c=relaxed/simple;
	bh=hlWaeIOkBH/VG/yjcEBclSwPuUR5GOaHLfyPh44Ujco=;
	h=To:Subject:From:Message-Id:Date; b=JtBRQfObOFpOR326yd42PclO9g963rDOVuS9ls9pwJk0431BYPaVYN/mFRPJnglpkQdyidS184OqPlC+ht3n1BYpm35Z0nrOU5Dq8Qr8A5JyvEBoPTkEJdqksdROOdTl7LN0ZNTYp9KGkPihzJ48NbZAFtXsBrcrBO5fh8wI1Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mueGET4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mueGET4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0351C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720419982;
	bh=hlWaeIOkBH/VG/yjcEBclSwPuUR5GOaHLfyPh44Ujco=;
	h=To:Subject:From:Date:From;
	b=mueGET4AubY+YJBOsVxDXHA4EuLglYVB1UrXU2uaS4YFA2RuXgzhF82oon/cWirtg
	 J2LK7bzDBPtg2m62h0zcuywcdTiNYU7e5P8z9/0MPsN7oYbc6awzBw0XUfiPePxp6N
	 aQD2oexFOnRAXcFGnwmC7rgsRZB7aCT05YBFg5HMLD3vWWyy9sV5xnkI7Bvhg8lMId
	 uQw1Oxclh5FJvfJq45iIxMy1YZ1S8MyE0pR02QXIvmt8F25VLRsrBIZEIN8Z1bPcwP
	 EJdcqjXeQD+I+AxpKkGNLVRJ8cM4/Sbzqd6YX5ag96ovUz7VQvuYZejUsO+7brKVeL
	 nWV0hK4zrhBFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3572C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041998279.11972.17391992705153598670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79a0958d35ccd5b78602751edb51ddf3efd678718069aeec800e04fde0f18b5
Date: Mon, 08 Jul 2024 06:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720419982
