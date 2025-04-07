Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8BC38FA3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744002594; cv=none; b=G9pTx/jCfaVza5JDdK3KUag6Qb67spZezjbP5ambMUrP+pRU8gLCInaD8er9wCQaBmjS11YPi1c22tq7OgJUzzPsOtUINnHLum7GlBaQdM1Du3DXxqRBPgrQSX2nnAtKDwz37iFBPxlk45plneZn3HOHlRsxTLTf5DVuAzpG/ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744002594; c=relaxed/simple;
	bh=SWawCIcgNYoU1UAjgNzqsnQTQWspQeUTQK61+dm2g6k=;
	h=To:Subject:From:Message-Id:Date; b=C5pMt2hlkecDtGQAVYgLqmk79ndlMPOMGnjjs6dlGtS1glXs92P/FVM4MMkky93HE20LxwFOrjYQ1ZtseEoEWYvl61nDp+oNv0sGrfP1naTuWX0IkudKOWqNwJ3YFbK24gA8cD7wC3dM4/uvTMMt5jZ/H3ZViKFNMbhLeeYcCsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9xfMlvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9xfMlvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76BFC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744002593;
	bh=SWawCIcgNYoU1UAjgNzqsnQTQWspQeUTQK61+dm2g6k=;
	h=To:Subject:From:Date:From;
	b=s9xfMlvA8om1+u5lGR5Srj0IZg0ZreBx4fmG7y3f4dXRAzkjh6O99SmUDrobzf5WH
	 FNBXUnffZP0HK/zhGn9Un6y1Aiq7ZPUYH8svM79eXjWPNn7f5oXeYYqwYB8EyTIRLL
	 p3Wf+Uo9jZbOUUQGW0zAJcbXLgvcQC4L6eZSeZbvZPKhpyhJyC1FF0XUUAfWQlFr3c
	 Jqwt9ivjeaDovnDVXLx3V0XXj/tGzMpVRmwIX9Ffy4ptGtdYZA1Wp1y+OcoPeZJmMi
	 uuGiycqafPAtgotOw1L3Jc2iCUhy2glSGwQjD5apG2zTt7aiEY5PnA6vd83iq8lIA9
	 39msh79LYMRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E5C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400259365.3999.5349029703514978828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c832af4dad3b46a6d6a46248ac14e6dc359a293ba7c8122db61d897f416e001
Date: Mon, 07 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744002593
